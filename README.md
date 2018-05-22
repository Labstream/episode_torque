# episode_torque
Material and code of the episode about calculating torque, and tests with Nema17

<a href="http://www.youtube.com/watch?feature=player_embedded&v=kFzrrzmT_LY
" target="_blank"><img src="http://img.youtube.com/vi/kFzrrzmT_LY/0.jpg" 
alt="Selecting the right stepper motor - Torque test of Nema17 and geared Nema17" width="240" height="180" border="10" /></a>

## Conversion factors
Here are the conversion factors to go from Newton-meter to kg-meter or lb-inch:
* 1 kg-m = 9.80665 Nm (example: 0.36 Nm / 9.80665 = 0.03671 kg-m)
* 1 lb-inch = 0.11299 Nm (example: 0.36Nm / 0.11299 = 3.186 lb-inch)

## Torque graphs (distance vs liftable weight)
You can find the script that generated this plots here: torques.py

![Torque graph 0.36Nm](Torque_graph.png)

![Torque graph 3Nm](Torque_graph_3NM.png)

