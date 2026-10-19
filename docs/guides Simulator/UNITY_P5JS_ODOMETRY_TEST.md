# Test integrato Unity e p5.js TrackSim

Il progetto `ubm-trackgen-navsim-js` può essere usato come sorgente autonoma lightweight: il path follower muove l'auto nel simulatore 2D e pubblica la sua posa come odometria ROS 2. Unity può sottoscrivere direttamente questa odometria e riprodurre il movimento dell'auto nella scena principale.

## Configurazioni da raccordare

| Componente | WebSocket | Topic odometria |
|---|---:|---|
| p5.js TrackSim | `ws://localhost:9091` | `/ekf_pose/odom` |
| Unity | `ws://localhost:9090` | `/command_odom` |

Per il test descritto qui non occorre modificare i repository: si usa un solo rosbridge sulla porta `9091`, un proxy TCP locale dalla porta `9090` alla `9091` e si cambia il topic dell'odometria dal menu Unity.

## 1. Avviare rosbridge

Nel terminale A:

```bash
source /opt/ros/jazzy/setup.bash
source /home/andrearosnvme/DRIVERLESS_2026/ubm-fsae-slam/install/local_setup.bash
export ROS_DOMAIN_ID=42
export ROS_AUTOMATIC_DISCOVERY_RANGE=LOCALHOST

ros2 launch rosbridge_server rosbridge_websocket_launch.xml \
  address:=127.0.0.1 \
  port:=9091
```

L'overlay `ubm-fsae-slam` contiene anche `ubm_interfaces`, necessario per i messaggi landmark pubblicati dal simulatore p5.js.

## 2. Rendere rosbridge raggiungibile da Unity

Nel terminale B:

```bash
socat \
  TCP-LISTEN:9090,bind=127.0.0.1,reuseaddr,fork \
  TCP:127.0.0.1:9091
```

Questo comando non crea un secondo ROS bridge: inoltra le connessioni Unity dalla porta `9090` alla porta `9091`.

## 3. Avviare il simulatore p5.js

Nel terminale C:

```bash
cd /home/andrearosnvme/DRIVERLESS_2026/ubm-trackgen-navsim-js
python3 -m http.server 8085 --bind 127.0.0.1
```

Aprire nel browser <http://localhost:8085>, quindi:

1. Controllare che ROS risulti `CONNECTED`; altrimenti premere `Reconnect ROS`.
2. Aprire `Tracks` e premere `Load`.
3. Caricare, per esempio, `cones_JSON/LoongLoop_V02.json`.
4. Passare a `Navigation`, oppure premere `N`.
5. Selezionare `Path follower`, oppure premere `3`.
6. Impostare inizialmente una velocità di circa 2–3 m/s.
7. In `Sensors > Odometry Settings`, impostare `Noise` a `0` per evitare oscillazioni visive dell'auto Unity.

`LoongLoop_V02.json` contiene 155 coni, 77 punti di traiettoria e una posa iniziale. Per un test ancora più leggero si può usare `DV_Acceleration.json`, che contiene 70 coni e 17 punti.

## 4. Avviare Unity con Vulkan

Rosbridge e `socat` devono essere già attivi prima di premere Play in Unity.

Nel terminale D:

```bash
/mnt/Storage_HDD/Unity/Editors/6000.6.0f1/Editor/Unity \
  -projectPath /mnt/Storage_HDD/Projects/ubm-fsae-sim \
  -force-vulkan
```

Aprire `Assets/Scenes/scene.unity`, quindi:

1. Premere Play.
2. Premere `Esc` per aprire il menu.
3. Nel campo `Athena Odom` sostituire `/command_odom` con `/ekf_pose/odom`.
4. Premere Invio oppure fare clic fuori dal campo.
5. Se il movimento non parte immediatamente, fermare e riavviare Play: il valore viene conservato nei `PlayerPrefs`.

## 5. Verificare l'odometria ROS 2

In un terminale facoltativo:

```bash
source /opt/ros/jazzy/setup.bash
source /home/andrearosnvme/DRIVERLESS_2026/ubm-fsae-slam/install/local_setup.bash
export ROS_DOMAIN_ID=42
export ROS_AUTOMATIC_DISCOVERY_RANGE=LOCALHOST

ros2 topic info /ekf_pose/odom --verbose
ros2 topic echo /ekf_pose/odom --once
ros2 topic hz /ekf_pose/odom
```

La frequenza attesa con le impostazioni predefinite è circa 10 Hz.

## Comportamento atteso e limitazioni

- Unity riceve la posa dell'auto, ma non importa automaticamente pista, path o coni creati nel simulatore p5.js. L'auto segue quindi le coordinate del TrackSim sopra la scena Unity esistente.
- La conversione degli assi è già implementata: `Unity X = -ROS Y` e `Unity Z = ROS X`.
- Al primo messaggio l'auto Unity può teletrasportarsi alla posa iniziale della pista p5.js; è il comportamento previsto.
- Il TrackSim pubblica attualmente uno `twist` nullo, ma Unity usa direttamente posizione e orientamento, quindi il movimento funziona ugualmente.
- L'odometria viene pubblicata solamente quando il TrackSim è in modalità `Navigation`, non in modalità `Editing`.
- Se il browser viene rallentato quando passa in background, anche movimento e pubblicazione possono diventare meno regolari. Conviene tenerlo visibile accanto a Unity.
- La modalità `Nearest cones` non è ancora implementata; per il test autonomo va usato `Path follower`.
- Per alleggerire Unity si possono disattivare temporaneamente `multi_scan` e gli altri sensori. Non va disattivato l'oggetto principale `athena_with_multi_scan`, che contiene `OdomSubscriber`, `Rigidbody` e il collegamento ROS.

## Miglioramento successivo

Una configurazione stabile dovrebbe uniformare porta WebSocket e topic dell'odometria nei due simulatori. In questo modo non sarebbero più necessari né `socat` né il cambio manuale del topic dal menu Unity.
