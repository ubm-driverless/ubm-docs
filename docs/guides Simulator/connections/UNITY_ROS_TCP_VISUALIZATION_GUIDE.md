# Unity Windows ↔ ROS 2 Ubuntu: ROS-TCP e visualizzazione

Questa guida descrive il collegamento tra il simulatore Unity sul PC Windows e ROS 2 Jazzy sul PC Ubuntu, collegati direttamente via Ethernet.

| Macchina | Indirizzo Ethernet |
| --- | --- |
| Ubuntu / ROS 2 | `10.42.0.1` |
| Windows / Unity | `10.42.0.2` |

## Architettura

ROS-TCP, rosbridge e Foxglove Bridge sono tre servizi distinti. Nessuno avvia automaticamente gli altri.

```text
Unity (Windows)
  │
  ├── ROS-TCP, TCP 10000 ──────────────► ROS 2 (Ubuntu)
  │                                        │
  │                                        ├── rosbridge, WebSocket 9090 ─► Camera WebGUI
  │                                        │
  │                                        └── Foxglove Bridge, WebSocket 8765 ─► Foxglove Studio
  │
  └── TCP host configurato: 10.42.0.1
```

`ROS-TCP-Endpoint` riceve i messaggi binari inviati dal connettore Unity e li pubblica/sottoscrive sul grafo ROS 2. Non è un server WebSocket e non sostituisce né rosbridge né Foxglove Bridge.

## Workspace di test isolato

Il workspace dedicato è:

```text
/home/andrearosnvme/DRIVERLESS_2026/ros-tcp-test
```

Contiene:

- `src/ros_tcp_endpoint`: ROS-TCP-Endpoint ufficiale, branch ROS 2, versione `0.7.0`;
- `src/ubm_interfaces`: collegamento simbolico a `ubm-fsae/ubm_interfaces`, quindi non è una copia e non modifica il repository `ubm-fsae`;
- `build`, `install` e `log`: artefatti della compilazione ROS 2.

Il workspace è stato compilato con ROS 2 Jazzy e fornisce sia `ros_tcp_endpoint` sia il tipo custom `ubm_interfaces/msg/Control`.

## 1. Avviare il ROS-TCP Endpoint

In un terminale Ubuntu:

```bash
cd /home/andrearosnvme/DRIVERLESS_2026/ros-tcp-test
source /opt/ros/jazzy/setup.bash
source install/setup.bash
ros2 run ros_tcp_endpoint default_server_endpoint --ros-args \
  -p ROS_IP:=0.0.0.0 \
  -p ROS_TCP_PORT:=10000
```

L'output atteso contiene:

```text
Starting server on 0.0.0.0:10000
```

`0.0.0.0` ascolta su tutte le interfacce di Ubuntu, inclusa quella Ethernet `10.42.0.1`.

### Configurazione Unity

Nella pagina ROS del simulatore selezionare **ROS-TCP-Connector** e impostare:

```text
TCP host: 10.42.0.1
TCP port: 10000
```

Non usare `127.0.0.1`: dal PC Windows indicherebbe Windows stesso, non Ubuntu.

## 2. Verificare che Unity pubblichi sul grafo ROS 2

In un secondo terminale:

```bash
cd /home/andrearosnvme/DRIVERLESS_2026/ros-tcp-test
source /opt/ros/jazzy/setup.bash
source install/setup.bash

ros2 topic list -t
ros2 topic info -v /camera_data
ros2 topic hz /camera_data
ros2 topic hz /lidar_points
```

Durante il test sono stati osservati questi topic Unity:

```text
/camera_data  [ubm_interfaces/msg/CameraData]
/lidar_points [sensor_msgs/msg/PointCloud2]
/tf           [tf2_msgs/msg/TFMessage]
```

`/camera_data` ha un publisher Unity attivo e una frequenza di circa 3,3 Hz. Il messaggio contiene due immagini annidate, `left_image` e `right_image`, oltre a telemetria IMU, magnetometro e sensori ambientali.

## 3. Visualizzare `/camera_data` con Camera WebGUI

`ubm-camera-webgui` usa **rosbridge**, non ROS-TCP. Perciò rosbridge deve rimanere avviato separatamente.

### Avviare rosbridge

In un terzo terminale Ubuntu:

```bash
cd /home/andrearosnvme/DRIVERLESS_2026/ros-tcp-test
source /opt/ros/jazzy/setup.bash
source install/setup.bash
ros2 launch rosbridge_server rosbridge_websocket_launch.xml \
  address:=0.0.0.0 port:=9090
```

È importante caricare `install/setup.bash`: rosbridge deve conoscere il messaggio custom `ubm_interfaces/msg/CameraData`.

### Avviare la pagina WebGUI

```bash
cd /home/andrearosnvme/DRIVERLESS_2026/ubm-camera-webgui
python3 -m http.server 8086
```

Se il browser gira su Ubuntu, aprire:

```text
http://localhost:8086
```

La pagina tenta automaticamente `ws://localhost:9090`.

Se il browser gira su Windows, aprire:

```text
http://10.42.0.1:8086/?rosbridge=ws://10.42.0.1:9090&topic=/camera_data
```

La GUI mostra le immagini sinistra/destra, la frequenza dei messaggi e un grafico degli arrivi degli ultimi dieci secondi.

## 4. Visualizzare `/lidar_points` con Foxglove

Per Foxglove è preferibile **Foxglove Bridge**, più efficiente di rosbridge per i point cloud.

```bash
cd /home/andrearosnvme/DRIVERLESS_2026/ros-tcp-test
source /opt/ros/jazzy/setup.bash
source install/setup.bash
ros2 launch foxglove_bridge foxglove_bridge_launch.xml
```

Foxglove Bridge ascolta sulla porta `8765`. In Foxglove Studio selezionare **Open connection** → **Foxglove WebSocket** e usare:

```text
ws://10.42.0.1:8765
```

Su Ubuntu, se Foxglove Studio è locale, è equivalente `ws://localhost:8765`.

Per il LiDAR aggiungere un pannello **3D**, quindi abilitare:

- `/lidar_points`;
- `/tf`.

`/lidar_points` è un `sensor_msgs/msg/PointCloud2`, che Foxglove visualizza nativamente nel pannello 3D. Se la nuvola non appare, verificare il frame nel messaggio e la disponibilità della relativa trasformazione su `/tf`.

## 5. Visualizzare `/camera_data` con Foxglove

Il pannello standard **Image** di Foxglove accetta un'immagine top-level (`sensor_msgs/msg/Image`, `sensor_msgs/msg/CompressedImage` o schema Foxglove equivalente). `/camera_data` non compare in quel selettore perché è un messaggio custom che contiene le immagini nei campi `left_image` e `right_image`.

Questo non indica un problema di pubblicazione: per controllare ROS 2 si usa:

```bash
ros2 topic hz /camera_data
```

Il repository locale delle estensioni è:

```text
/home/andrearosnvme/DRIVERLESS_2026/ubm-foxglove-extensions
```

La copia locale usa come remoto ufficiale:

```text
https://github.com/ubm-driverless/ubm-foxglove-extensions.git
```

L'estensione pertinente è `proto_camera_data_panel`. Aggiunge il pannello **Camera Data Viewer**, che visualizza immagini stereo, IMU e metriche del messaggio camera.

### Compilare e installare il pannello Camera Data Viewer

Sono necessari Node.js e npm. Dopo averli installati:

```bash
cd /home/andrearosnvme/DRIVERLESS_2026/ubm-foxglove-extensions/proto_camera_data_panel
npm install
npm run build
npm run local-install
```

Riavviare Foxglove Studio oppure premere `Ctrl+R`, aggiungere **Camera Data Viewer** e configurare il topic `/camera_data`.

Al momento della stesura di questa guida Node.js/npm non erano installati sulla macchina, quindi l'estensione non è ancora compilata né installata in Foxglove.

## Porte e firewall

| Porta | Servizio | Necessaria da Windows? |
| --- | --- | --- |
| TCP 10000 | ROS-TCP Endpoint | Sì, per Unity |
| TCP 9090 | rosbridge | Solo se la Camera WebGUI gira su Windows |
| TCP 8765 | Foxglove Bridge | Solo se Foxglove gira su Windows |
| TCP 8086 | Server HTTP della Camera WebGUI | Solo se la pagina viene aperta da Windows |

Se UFW è attivo, consentire solo le porte effettivamente necessarie. Esempio per ROS-TCP:

```bash
sudo ufw allow from 10.42.0.2 to any port 10000 proto tcp
```

Applicare lo stesso schema a `9090`, `8765` e `8086` solo quando il relativo client è sul PC Windows.

## Diagnostica rapida

| Sintomo | Controllo | Correzione |
| --- | --- | --- |
| Unity non si collega | L'endpoint deve indicare `Starting server on 0.0.0.0:10000` | In Unity usare `10.42.0.1:10000`; verificare firewall |
| `/camera_data` non riceve messaggi | `ros2 topic info -v /camera_data`, `ros2 topic hz /camera_data` | Verificare la scena Unity e la connessione ROS-TCP |
| Camera WebGUI è disconnessa | Controllare rosbridge sulla porta 9090 | Avviare rosbridge dopo `source install/setup.bash` |
| `/camera_data` non è selezionabile nel pannello Image | È un messaggio contenitore custom | Usare Camera WebGUI o l'estensione Camera Data Viewer |
| LiDAR non appare nel 3D | `ros2 topic hz /lidar_points`, verificare `/tf` | Selezionare entrambi nel pannello 3D e controllare i frame |
| Foxglove non mostra topic nuovi | Verificare la connessione a `ws://10.42.0.1:8765` | Riconnettere o ricaricare Foxglove dopo l'avvio del bridge |
