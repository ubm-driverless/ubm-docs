# Reactive Algorithms
Reactive algorithms are those algorithms that does not require any localization and they do not know the ideal race-line. Just the informations from the lidar are used to find the best control action.  

Mainly 2 algorithms have been implemented:

- Disparity Extender
- Potential Field

## To Start the algorithm

Modify the `CONTROL_ALGO` variable in `{repo}/launch/reactive_algorithm.py` in order to choose the desiderate reactive algorithm to use. 

Then run:
```bash
ros2 launch launch/reactive_algorithm.py
```

## Disparity extender
### TODO

## Potential Field
Subscriber:

- /scan

Publisher:

- /ackermann_cmd
- /plot_repulsive_topic
- /plot_total_topic
- /plot_choosenIndex_topic
- /plot_attractive_topic

The main idea behind this algorithm is to define a Potential Field to determine the optimal steering angle. This involves defining a goal direction, which creates an attractive field, and detecting obstacles, which generates a repulsive field for each obstacle detected. By summing these fields, we can compute the total field.

Obstacles are identified using a threshold on the lidar scan. Any group of points below the threshold is considered an obstacle. For each group, a repulsive field is defined as a Gaussian function. The closer the obstacle, the higher the Gaussian peak; the wider the obstacle, the broader the Gaussian curve.

The attractive field is defined as a linear function with its minimum at the angle corresponding to the goal direction. This function increases linearly as the angle deviates from the goal.

By summing the linear function and the Gaussian functions, we obtain the total field as a function of the steering angle.

To find the ideal steering angle, the total field function is minimized.

**Reference Paper:** Cho, Jang-Ho, Pae, Dong-Sung, Lim, Myo Taeg, & Kang, Tae-Koo. (2018). A Real-Time Obstacle Avoidance Method for Autonomous Vehicles Using an Obstacle-Dependent Gaussian Potential Field. Journal of Advanced Transportation, 2018, 1-15. https://doi.org/10.1155/2018/5041401. [Link to paper](https://www.researchgate.net/publication/327196160_A_Real-Time_Obstacle_Avoidance_Method_for_Autonomous_Vehicles_Using_an_Obstacle-Dependent_Gaussian_Potential_Field)



