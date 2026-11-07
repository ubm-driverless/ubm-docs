# Test odometria: NavSim su Ubuntu e Unity su Windows

Questa guida adatta il test locale UNITY_P5JS_ODOMETRY_TEST.md a due PC. Il browser con TrackGen/NavSim, ROS 2 Jazzy e rosbridge girano su Ubuntu 24.04; Unity gira su Windows. È un test della sola odometria prima della pipeline FSAE completa. Non servono Vulkan, WSL, Docker, socat o un secondo rosbridge.

## Configurazione

| Componente | PC | Indirizzo | Ruolo |
| --- | --- | --- | --- |
| TrackGen/NavSim nel browser | Ubuntu | ws://localhost:9090 | Pubblica /ekf_pose/odom |
| rosbridge | Ubuntu | 0.0.0.0:9090 | Riceve P5 e Unity |
| Unity | Windows | ws://IP_UBUNTU:9090 | Sottoscrive /ekf_pose/odom |
| Server web P5 | Ubuntu | http://localhost:8085 | Serve lo sketch al browser Ubuntu |

Sostituire IP_UBUNTU con l'IPv4 reale della scheda Wi-Fi o Ethernet Ubuntu, per esempio 192.168.1.42. **localhost in Unity indica Windows**; localhost nello sketch aperto nel browser Ubuntu indica Ubuntu. Solo TCP 9090 deve essere raggiungibile da Windows. Entrambi i PC possono essere sulla stessa Wi-Fi o collegati allo stesso router via cavo. Con un cavo diretto senza DHCP potrebbero servire IP statici nella stessa sottorete.

## 1. Impostare la porta nello sketch P5 su Ubuntu

Nella copia Ubuntu di TrackGen/NavSim, aprire sketch.js e usare:

~~~js
const WS_URL = "ws://localhost:9090";
const ODOM_TOPIC_NAME = "/ekf_pose/odom";
~~~

La seconda riga è già corretta nella versione esaminata. P5 e Unity useranno così un solo rosbridge sulla 9090, senza inoltro 9090 → 9091. In alternativa si può lasciare P5 sulla 9091 e configurare sia rosbridge sia Unity sulla 9091: neppure in quel caso serve socat. Dopo la modifica ricaricare la pagina con Ctrl+F5, se necessario disattivando la cache del browser.

## 2. Avviare rosbridge su Ubuntu — terminale A

Il percorso dell'overlay viene dal test precedente; correggerlo se la directory Ubuntu è diversa.

~~~bash
source /opt/ros/jazzy/setup.bash
source /home/andrearosnvme/DRIVERLESS_2026/ubm-fsae-slam/install/local_setup.bash
export ROS_DOMAIN_ID=42
export ROS_AUTOMATIC_DISCOVERY_RANGE=LOCALHOST

ros2 launch rosbridge_server rosbridge_websocket_launch.xml \
  address:=0.0.0.0 port:=9090
~~~

Lasciare aperto questo terminale. L'indirizzo 0.0.0.0 consente a Unity di raggiungere rosbridge tramite l'IP Ubuntu; 127.0.0.1 accetterebbe solo client locali. La discovery ROS 2 su LOCALHOST va bene per questo test: i client P5 e Unity parlano WebSocket con rosbridge, mentre il nodo ROS resta su Ubuntu. Se poi si aggiungono nodi ROS su altri host, rivalutare tale variabile. Non avviare un altro rosbridge sulla stessa porta.

## 3. Avviare NavSim su Ubuntu — terminale B

~~~bash
cd /home/andrearosnvme/DRIVERLESS_2026/ubm-trackgen-navsim-js
python3 -m http.server 8085 --bind 127.0.0.1
~~~

Aprire **nel browser Ubuntu** http://localhost:8085, quindi:

1. Verificare ROS **CONNECTED**, altrimenti premere **Reconnect ROS**.
2. In **Tracks > Load** scegliere LoongLoop_V02.json o DV_Acceleration.json da cones_JSON.
3. Passare a **Navigation** (N) e scegliere **Path follower** (3).
4. Impostare inizialmente 2–3 m/s e mettere **Sensors > Odometry Settings > Noise** a 0.

Lo sketch pubblica /ekf_pose/odom come nav_msgs/Odometry circa ogni 100 ms solo in Navigation. Nelle copie locali esaminate, LoongLoop_V02.json e DV_Acceleration.json sono identici fra P5 e Unity: scegliere lo stesso nome nei due programmi aiuta a confrontare la posa.

## 4. Verificare Windows → Ubuntu

Su Ubuntu trovare l'IP della scheda realmente collegata:

~~~bash
ip -4 -br addr
~~~

Usare l'indirizzo Wi-Fi/Ethernet, non 127.0.0.1 o un IP Docker 172.x.x.x. Da PowerShell Windows:

~~~powershell
Test-NetConnection 192.168.1.42 -Port 9090
~~~

Sostituire l'IP di esempio. **TcpTestSucceeded : True** conferma che la porta è raggiungibile. Se è False, controllare indirizzo, rete, rosbridge e firewall. Se UFW è attivo, autorizzare solo Windows sostituendo IP_WINDOWS:

~~~bash
sudo ufw status
sudo ufw allow from IP_WINDOWS to any port 9090 proto tcp
~~~

Non inoltrare 9090 dal router verso Internet: rosbridge qui è destinato alla LAN fidata. Su Wi-Fi ospiti, controllare che non sia attivo l'isolamento fra client.

## 5. Collegare Unity su Windows

Aprire Unity normalmente, senza opzioni Vulkan. Aprire Assets/Scenes/MainMenu.unity, entrare in Play, scegliere per esempio LoongLoop_V02.json e LOD 1, poi avviare la simulazione.

1. Premere **Esc** e aprire **ROS**.
2. In **Rosbridge URL** scrivere ws://IP_UBUNTU:9090; premere Invio o uscire dal campo.
3. Premere **Retry connection**. Se era già connesso a un altro bridge, prima **Disconnect**.
4. Verificare **Odometry input = /ekf_pose/odom**. Se è rimasto /command_odom da vecchi test, premere **UBM FSAE topic**.
5. In **Controls** scegliere **ROS odometry**: la connessione WebSocket, da sola, non cambia la modalità di guida.

La scena Unity contiene ancora connector serializzati con ws://localhost:9090: all'avvio può comparire un warning su localhost anche se l'URL remoto è salvato nei PlayerPrefs. **Retry connection** applica l'URL configurato ai connector. Attendere che lo stato ROS mostri i connector connessi prima di verificare il movimento.

## 6. Verifica ROS 2 facoltativa — terminale C su Ubuntu

Usare lo stesso ambiente del terminale A:

~~~bash
source /opt/ros/jazzy/setup.bash
source /home/andrearosnvme/DRIVERLESS_2026/ubm-fsae-slam/install/local_setup.bash
export ROS_DOMAIN_ID=42
export ROS_AUTOMATIC_DISCOVERY_RANGE=LOCALHOST

ros2 topic info /ekf_pose/odom --verbose
ros2 topic echo /ekf_pose/odom --once
ros2 topic hz /ekf_pose/odom
~~~

L'ultimo comando continua fino a Ctrl+C; la frequenza attesa è circa 10 Hz. Questo terminale serve solo per diagnosi: non c'è più alcun terminale socat.

## Risultato atteso e problemi comuni

- **Windows non raggiunge 9090:** verificare su Ubuntu con ss -lntp | grep ':9090' che rosbridge ascolti su 0.0.0.0, poi controllare IP, firewall e isolamento della rete.
- **P5 CONNECTED, Unity offline:** in Unity serve ws://IP_UBUNTU:9090, non localhost; terminare l'editing del campo e premere Retry connection.
- **Unity connesso, auto ferma:** controllare P5 in Navigation e Path follower, ros2 topic echo, topic Unity /ekf_pose/odom e Controls su ROS odometry.
- **Posa inattesa:** il primo messaggio può spostare l'auto Unity alla posa iniziale P5. Unity non importa automaticamente coni, pista o path dal browser. Il subscriber usa Unity X = -ROS Y e Unity Z = ROS X.
- **Movimento irregolare:** azzerare il noise, mantenere attivo il browser P5 e iniziare senza sensori pesanti. Lo sketch invia uno twist nullo, ma Unity usa posizione e orientamento.
- **Errori su altri topic:** per questa prova conta /ekf_pose/odom; tenere sourced l'overlay ROS se si testano anche i messaggi custom di camera o LiDAR.

## Riferimenti

- [Launch rosbridge ROS 2](https://github.com/RobotWebTools/rosbridge_suite/blob/ros2/rosbridge_server/launch/rosbridge_websocket_launch.xml): argomenti address e port.
- [Test-NetConnection Microsoft](https://learn.microsoft.com/en-us/powershell/module/nettcpip/test-netconnection): verifica TCP da Windows.
