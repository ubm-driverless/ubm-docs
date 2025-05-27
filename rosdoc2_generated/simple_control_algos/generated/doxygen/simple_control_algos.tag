<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>disparity_extender.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>disparity__extender_8hpp.html</filename>
    <includes id="utils_8hpp" name="utils.hpp" local="yes" imported="no">utils.hpp</includes>
    <member kind="function">
      <type>bool</type>
      <name>check_imminent_crash</name>
      <anchorfile>disparity__extender_8hpp.html</anchorfile>
      <anchor>a291ed5db3ed90572f2fa73268d730fc3</anchor>
      <arglist>(std::vector&lt; float &gt; ranges, float lidar_fov, float angle_increment, float desired_fov, float crash_distance)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>find_disparities</name>
      <anchorfile>disparity__extender_8hpp.html</anchorfile>
      <anchor>a4ad9538c20847b48c0ceba8c62c0b69f</anchor>
      <arglist>(std::vector&lt; float &gt; ranges, std::vector&lt; float &gt; &amp;processed_ranges, float car_width, float max_range, float angle_increment, float lidar_fov, float desired_fov, float disparity_thrashold, float r_multiplier)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>find_disparity_steering_angle</name>
      <anchorfile>disparity__extender_8hpp.html</anchorfile>
      <anchor>a29c2ded4d0f27a2a43d5ad06dbf11200</anchor>
      <arglist>(std::vector&lt; float &gt; processed_ranges, float angle_increment, float lidar_fov, float desired_fov, float angle_eq_thr, float ray_eq_thr, bool ignore_angle_eq_thr, bool ignore_ray_eq_thr, std::string angle_priority)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>disparity_extender_steering</name>
      <anchorfile>disparity__extender_8hpp.html</anchorfile>
      <anchor>a62ce1c1cbfc59821940f236e0bc3e974</anchor>
      <arglist>(std::vector&lt; float &gt; ranges, std::vector&lt; float &gt; &amp;processed_ranges, float angle_increment, float lidar_fov, float desired_fov, float disparity_thrashold, float angle_eq_thr, float ray_eq_thr, float car_width, float max_range, float r_multiplier, float max_steering_angle, bool ignore_angle_eq_thr, bool ignore_ray_eq_thr, std::string angle_priority)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>disparity_extender_node.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>disparity__extender__node_8hpp.html</filename>
    <includes id="disparity__extender_8hpp" name="disparity_extender.hpp" local="yes" imported="no">disparity_extender.hpp</includes>
    <includes id="simple__speed_8hpp" name="simple_speed.hpp" local="yes" imported="no">simple_speed.hpp</includes>
    <includes id="utils_8hpp" name="utils.hpp" local="yes" imported="no">utils.hpp</includes>
    <class kind="class">DisparityExtenderNode</class>
  </compound>
  <compound kind="file">
    <name>frenet_overtaking.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>frenet__overtaking_8hpp.html</filename>
    <includes id="utils_8hpp" name="utils.hpp" local="yes" imported="no">utils.hpp</includes>
    <class kind="struct">FrenetPath</class>
    <class kind="class">FrenetOptimalTrajectory</class>
  </compound>
  <compound kind="file">
    <name>frenet_overtaking_node.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>frenet__overtaking__node_8hpp.html</filename>
    <includes id="frenet__overtaking_8hpp" name="frenet_overtaking.hpp" local="yes" imported="no">frenet_overtaking.hpp</includes>
    <includes id="ros__utils_8hpp" name="ros_utils.hpp" local="yes" imported="no">ros_utils.hpp</includes>
    <includes id="utils_8hpp" name="utils.hpp" local="yes" imported="no">utils.hpp</includes>
    <class kind="class">FrenetOvertakingNode</class>
  </compound>
  <compound kind="file">
    <name>path_follower_node.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>path__follower__node_8hpp.html</filename>
    <includes id="ros__utils_8hpp" name="ros_utils.hpp" local="yes" imported="no">ros_utils.hpp</includes>
    <includes id="utils_8hpp" name="utils.hpp" local="yes" imported="no">utils.hpp</includes>
    <class kind="class">PathFollowerNode</class>
  </compound>
  <compound kind="file">
    <name>potential_field.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>potential__field_8hpp.html</filename>
    <includes id="utils_8hpp" name="utils.hpp" local="yes" imported="no">utils.hpp</includes>
    <member kind="function">
      <type>void</type>
      <name>reduce_lidar_fov</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>a71f0c0cfaeac67efc260987375b06050</anchor>
      <arglist>(std::vector&lt; float &gt; &amp;ranges, int ranges_to_remove)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; Obstacle &gt;</type>
      <name>find_obstacles</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>a2d4be497bdcc23caa0ab2fd575915ba0</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;ranges, float obstacle_threshold_gain, float hysteresis, float inverse_res, float car_width)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>calculate_obstacle_parameters</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>aabda3256be7b08b8e746b28d18cdd374</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;ranges, Obstacle &amp;obstacle, float inverse_res, float car_width)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; float &gt;</type>
      <name>compute_obstacle_potential</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>a803813ac89e8048584b04e919455f5df</anchor>
      <arglist>(const std::vector&lt; Obstacle &gt; &amp;obstacles_list, int field_size, float field_resolution)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>max_index</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>a60300b3e5373b56171efdb41435d35ee</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;ranges, float inverse_res, float field_resolution)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>compute_attractive_potential</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>aad9c06f14481d9674434dfba4c96df16</anchor>
      <arglist>(std::vector&lt; float &gt; &amp;repulsive_field, int attractive_index, float attractive_power)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; std::pair&lt; unsigned short int, float &gt; &gt;</type>
      <name>find_local_minima</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>a3bfec49a1ed55be5be4a39ad99afea84</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;vec, bool include_global_minima)</arglist>
    </member>
    <member kind="function">
      <type>unsigned short int</type>
      <name>compute_choosen_index</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>a977a357ef5623917ae2dbb7d71c540a5</anchor>
      <arglist>(unsigned short int attractive_index, const std::vector&lt; std::pair&lt; unsigned short int, float &gt;&gt; &amp;local_minima, bool use_minima_near_attractive)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>potential_field_steering</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>a8b22fce713a12c10d65d6e211afd221f</anchor>
      <arglist>(std::vector&lt; float &gt; ranges, float angle_increment, float desired_fov, float field_resolution, float obstacle_threshold_gain, float hysteresis, float attractive_power, float car_width, float max_steering_angle, float steering_gain, bool include_global_minima, bool use_minima_near_attractive)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>potential_pursuit_steering</name>
      <anchorfile>potential__field_8hpp.html</anchorfile>
      <anchor>aac3f04ff98d2a27e8e515906313fed04</anchor>
      <arglist>(std::vector&lt; float &gt; ranges, float angle_increment, float desired_fov, float field_resolution, float obstacle_threshold_gain, float hysteresis, float attractive_power, float car_width, float max_steering_angle, float steering_gain, float max_distance_weight, float steering_error, bool include_global_minima, bool use_minima_near_attractive)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>potential_field_node.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>potential__field__node_8hpp.html</filename>
    <includes id="potential__field_8hpp" name="potential_field.hpp" local="yes" imported="no">potential_field.hpp</includes>
    <includes id="simple__speed_8hpp" name="simple_speed.hpp" local="yes" imported="no">simple_speed.hpp</includes>
    <class kind="class">PotentialFieldNode</class>
  </compound>
  <compound kind="file">
    <name>potential_pursuit_node.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>potential__pursuit__node_8hpp.html</filename>
    <includes id="potential__field_8hpp" name="potential_field.hpp" local="yes" imported="no">potential_field.hpp</includes>
    <includes id="ros__utils_8hpp" name="ros_utils.hpp" local="yes" imported="no">ros_utils.hpp</includes>
    <includes id="simple__speed_8hpp" name="simple_speed.hpp" local="yes" imported="no">simple_speed.hpp</includes>
    <includes id="utils_8hpp" name="utils.hpp" local="yes" imported="no">utils.hpp</includes>
    <class kind="class">PotentialPursuitNode</class>
  </compound>
  <compound kind="file">
    <name>ros_utils.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>ros__utils_8hpp.html</filename>
    <member kind="function">
      <type>void</type>
      <name>publish_performance</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>ac6279e31fb4c59cdfe219f3f092ad0ae</anchor>
      <arglist>(const rclcpp::Publisher&lt; f1tenth_msgs::msg::LapPerformanceStamped &gt;::SharedPtr &amp;publisher, const std_msgs::msg::Header &amp;common_header, const LapPerformanceData &amp;lap_performance)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>visualize_markers</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>a81265f88837c5951afcce3413be9ed09</anchor>
      <arglist>(const rclcpp::Publisher&lt; geometry_msgs::msg::PointStamped &gt;::SharedPtr &amp;publisher, const std_msgs::msg::Header &amp;common_header, float point_x, float point_y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>publish_raceline</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>abec49d66b6a81df1e7269db9bc18fbb7</anchor>
      <arglist>(const rclcpp::Publisher&lt; nav_msgs::msg::Path &gt;::SharedPtr &amp;publisher, const std_msgs::msg::Header &amp;common_header, const std::vector&lt; float &gt; &amp;x, const std::vector&lt; float &gt; &amp;y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>publish_points_as_marker_array</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>a7eba2453e99da10af2d521c211d1984c</anchor>
      <arglist>(const rclcpp::Publisher&lt; visualization_msgs::msg::MarkerArray &gt;::SharedPtr &amp;publisher, const std_msgs::msg::Header &amp;common_header, const std::vector&lt; std::pair&lt; float, float &gt;&gt; &amp;points)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>publish_points_as_pointcloud</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>a8936e6a359cea43e0e3ff73cc416f6fb</anchor>
      <arglist>(const rclcpp::Publisher&lt; sensor_msgs::msg::PointCloud2 &gt;::SharedPtr &amp;publisher, const std_msgs::msg::Header &amp;common_header, const std::vector&lt; std::pair&lt; float, float &gt;&gt; &amp;points)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>simple_speed.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>simple__speed_8hpp.html</filename>
    <includes id="utils_8hpp" name="utils.hpp" local="yes" imported="no">utils.hpp</includes>
    <member kind="function">
      <type>float</type>
      <name>speed_proportional_steering</name>
      <anchorfile>simple__speed_8hpp.html</anchorfile>
      <anchor>a8666ead035190ddbcd155650aeb37176</anchor>
      <arglist>(float steering_angle, float max_steering, float max_speed, float min_speed)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>speed_steer_and_fov</name>
      <anchorfile>simple__speed_8hpp.html</anchorfile>
      <anchor>ad8b9a9a94d3855969c36725c280f7d5b</anchor>
      <arglist>(float steering_angle, std::vector&lt; float &gt; ranges, float max_steering, float max_speed, float min_speed, float brake_gain, float speed_distance_gain, float front_deg, float angle_increment)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>utils.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/simple_control_algos/include/</path>
    <filename>utils_8hpp.html</filename>
    <member kind="function">
      <type>float</type>
      <name>calculate_mean</name>
      <anchorfile>utils_8hpp.html</anchorfile>
      <anchor>a7961cf9f682c353bbbbee08688449363</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;vector)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calculate_mean_in_range</name>
      <anchorfile>utils_8hpp.html</anchorfile>
      <anchor>a7c87b3820a510fe8ba3d31de23d1368d</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;vector, int start, int end)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float &gt;</type>
      <name>get_rgb</name>
      <anchorfile>utils_8hpp.html</anchorfile>
      <anchor>a49e610728a5471f56fc020d2b6ee6e9b</anchor>
      <arglist>(int rgb)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>rifa</name>
      <anchorfile>utils_8hpp.html</anchorfile>
      <anchor>a88dbb5d572b05732c37a6ab53f130fab</anchor>
      <arglist>(float angle_degrees, float angle_increment, float fov_rad)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>rafi</name>
      <anchorfile>utils_8hpp.html</anchorfile>
      <anchor>a588d8ae799d233a401111c312e73364f</anchor>
      <arglist>(int index, float angle_increment, float fov_rad)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; float &gt;</type>
      <name>linspace</name>
      <anchorfile>utils_8hpp.html</anchorfile>
      <anchor>a478f9c32589c5d73b481c36e939f27a1</anchor>
      <arglist>(float start, float end, int num)</arglist>
    </member>
    <member kind="function">
      <type>unsigned int</type>
      <name>argmin</name>
      <anchorfile>utils_8hpp.html</anchorfile>
      <anchor>a548f490e1cc2964ec6a3099dedee3485</anchor>
      <arglist>(const std::vector&lt; T &gt; &amp;v)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>heading_error</name>
      <anchorfile>utils_8hpp.html</anchorfile>
      <anchor>a056a3290e38efc55bcdee6c5655237c7</anchor>
      <arglist>(float yaw_desired, float yaw_current)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>cubic_spline_2d</name>
    <filename>classcubic__spline__2d.html</filename>
  </compound>
  <compound kind="class">
    <name>CubicSpline1d</name>
    <filename>classCubicSpline1d.html</filename>
    <member kind="function">
      <type></type>
      <name>CubicSpline1d</name>
      <anchorfile>classCubicSpline1d.html</anchorfile>
      <anchor>a026fb1cd65a4ff63002ea25a15e097cb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classCubicSpline1d.html</anchorfile>
      <anchor>a6431a7dcf6d4c3c1d593b8066a123219</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;x, const std::vector&lt; float &gt; &amp;y)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float &gt;</type>
      <name>get_pos_and_derivatives</name>
      <anchorfile>classCubicSpline1d.html</anchorfile>
      <anchor>a03800bf80f6ca8e9d29a9ec4635a2856</anchor>
      <arglist>(const float &amp;x)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float &gt;</type>
      <name>get_derivatives</name>
      <anchorfile>classCubicSpline1d.html</anchorfile>
      <anchor>a77d5bf1c84e32021aa0ad851d53d043a</anchor>
      <arglist>(const float &amp;x)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_position</name>
      <anchorfile>classCubicSpline1d.html</anchorfile>
      <anchor>af8aa3d420b826369eddadf6a0396fb09</anchor>
      <arglist>(const float &amp;x)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>CubicSpline2d</name>
    <filename>classCubicSpline2d.html</filename>
    <member kind="function">
      <type></type>
      <name>CubicSpline2d</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>a9b4101279dab750c07f9eb0f4b004fd9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>a1cc21ba7a0bf4f709b1a40f1396164ba</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;x, const std::vector&lt; float &gt; &amp;y)</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; float, float &gt;</type>
      <name>calc_position</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>af5094f4d70f9885e6167e1063f52ddec</anchor>
      <arglist>(const float &amp;s)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float &gt;</type>
      <name>calc_curvature_and_yaw</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>a0e158aa00dff04336eaf6b0bf2850cb3</anchor>
      <arglist>(const float &amp;s)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>calc_position_curvature_yaw</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>ab82f5e532219d5f7fb5d12b3ec647fee</anchor>
      <arglist>(const float &amp;s)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; float &gt;</type>
      <name>get_s</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>aeb2a38c920a75a387c8f8ade0e23fa10</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>s</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>a70120fcaef7a54fa99c9251ae03a4e97</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>DisparityExtenderNode</name>
    <filename>classDisparityExtenderNode.html</filename>
    <member kind="function">
      <type></type>
      <name>DisparityExtenderNode</name>
      <anchorfile>classDisparityExtenderNode.html</anchorfile>
      <anchor>a3645d7b3db939bc0b2d99f7cf23dd1e7</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>FeedForwardAction</name>
    <filename>classFeedForwardAction.html</filename>
    <member kind="function">
      <type></type>
      <name>FeedForwardAction</name>
      <anchorfile>classFeedForwardAction.html</anchorfile>
      <anchor>adeab82e1948821eb6eada778488fa8a8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classFeedForwardAction.html</anchorfile>
      <anchor>ab3a4d69c1a39102b039156e2fa8f3310</anchor>
      <arglist>(const bool &amp;path_based_only, const int &amp;num_points, const int &amp;delay_ff_action, const float &amp;wheelbase, const float &amp;max_steer, const float &amp;beta_ff_gain, const float &amp;averaging_ff_gain, const std::vector&lt; float &gt; &amp;path_curvature)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>feedforward_action</name>
      <anchorfile>classFeedForwardAction.html</anchorfile>
      <anchor>ab94b8875b79a4ed2bd8d6d0a4af57c03</anchor>
      <arglist>(int nearest_index, float current_steering_angle)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>FrenetMapBasedNode</name>
    <filename>classFrenetMapBasedNode.html</filename>
    <member kind="function">
      <type></type>
      <name>FrenetMapBasedNode</name>
      <anchorfile>classFrenetMapBasedNode.html</anchorfile>
      <anchor>a3db1ed9bcef5d5c70a5b0a79674655f6</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>FrenetOptimalTrajectory</name>
    <filename>classFrenetOptimalTrajectory.html</filename>
    <member kind="function">
      <type></type>
      <name>FrenetOptimalTrajectory</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>ac538350177a7a0b3acfa1f53f97239ea</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>aa6cbb7d1268133ad062430c1e0e77334</anchor>
      <arglist>(const float &amp;max_road_width, const float &amp;delta_road_width, const float &amp;path_point_distance, const float &amp;max_path_lenght, const float &amp;min_path_lenght, const float &amp;delta_path_lenght, const float &amp;path_fov, const float &amp;robot_radius, const float &amp;k_jerk, const float &amp;k_lenght, const float &amp;k_distance, const float &amp;min_look_ahead, const float &amp;look_ahead_gain, const float &amp;speed_decay_factor, const float &amp;min_speed_reduction_gain, const float &amp;decay_last_d_factor, const float &amp;weight_last_d)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; FrenetPath, float, float &gt;</type>
      <name>plan</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>a73852b57b7cb27b2057bb39c20fab623</anchor>
      <arglist>(CubicSpline2d &amp;csp, const float &amp;s_start, const float &amp;c_speed, const float &amp;current_d, const std::vector&lt; std::pair&lt; float, float &gt;&gt; &amp;ob)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; FrenetPath, float, float &gt;</type>
      <name>plan_map_based</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>a81b51c30cbe420a6aa6b850f741437f6</anchor>
      <arglist>(CubicSpline2d &amp;csp, const Map &amp;map_object, const float &amp;s_start, const float &amp;c_speed, const float &amp;current_d, const std::vector&lt; std::pair&lt; float, float &gt;&gt; &amp;ob)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; FrenetPath, float, float &gt;</type>
      <name>plan_detector</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>a08565dfe4343274bf9cb6d1c46f16d26</anchor>
      <arglist>(CubicSpline2d &amp;csp, const float &amp;s_start, const float &amp;c_speed, const float &amp;current_d, const std::vector&lt; float &gt; &amp;right_border, const std::vector&lt; float &gt; &amp;left_border, const std::vector&lt; float &gt; &amp;s_spline, const std::vector&lt; std::tuple&lt; float, float, float &gt;&gt; &amp;ob)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>get_speed_reduction_gain</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>ac70f789e1575bc87770d5411ab711aef</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>FrenetOvertakingNode</name>
    <filename>classFrenetOvertakingNode.html</filename>
    <member kind="function">
      <type></type>
      <name>FrenetOvertakingNode</name>
      <anchorfile>classFrenetOvertakingNode.html</anchorfile>
      <anchor>a29920d662148aee56a66dcd60dcfa16a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>FrenetOvertakingNode</name>
      <anchorfile>classFrenetOvertakingNode.html</anchorfile>
      <anchor>a29920d662148aee56a66dcd60dcfa16a</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>FrenetPath</name>
    <filename>structFrenetPath.html</filename>
  </compound>
  <compound kind="class">
    <name>LapPerformance</name>
    <filename>classLapPerformance.html</filename>
    <member kind="function">
      <type></type>
      <name>LapPerformance</name>
      <anchorfile>classLapPerformance.html</anchorfile>
      <anchor>acb41c297c34bd43bef5f076644ec32c8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classLapPerformance.html</anchorfile>
      <anchor>a7077e41333b0450c5e9f674a0ffee4c9</anchor>
      <arglist>(int num_points, int max_laps, float starting_strip)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classLapPerformance.html</anchorfile>
      <anchor>a7d57b41056c5863027f6bf6641b9930c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>LapPerformanceData</type>
      <name>update</name>
      <anchorfile>classLapPerformance.html</anchorfile>
      <anchor>a10d44db0f7df96a35f53ddde0a37837e</anchor>
      <arglist>(int index)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>LapPerformanceData</name>
    <filename>structLapPerformanceData.html</filename>
  </compound>
  <compound kind="class">
    <name>PathFollowerNode</name>
    <filename>classPathFollowerNode.html</filename>
    <member kind="function">
      <type></type>
      <name>PathFollowerNode</name>
      <anchorfile>classPathFollowerNode.html</anchorfile>
      <anchor>ac66031afec0eeb574374cb9af7e1953e</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>PotentialFieldNode</name>
    <filename>classPotentialFieldNode.html</filename>
    <member kind="function">
      <type></type>
      <name>PotentialFieldNode</name>
      <anchorfile>classPotentialFieldNode.html</anchorfile>
      <anchor>a2968639bceb257d974877cb569d2d215</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>PotentialPursuitNode</name>
    <filename>classPotentialPursuitNode.html</filename>
    <member kind="function">
      <type></type>
      <name>PotentialPursuitNode</name>
      <anchorfile>classPotentialPursuitNode.html</anchorfile>
      <anchor>aa4546e8767896e2d49ecf20c1196032e</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>QuarticPolynomial</name>
    <filename>classQuarticPolynomial.html</filename>
    <member kind="function">
      <type></type>
      <name>QuarticPolynomial</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>a24c4f212e7c04b2d247b2d65fce8b329</anchor>
      <arglist>(const float &amp;xs, const float &amp;vxs, const float &amp;xe, const float &amp;vxe, const float &amp;axe, const float &amp;time)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_point</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>ac4b5e72b860da0a607712f4d73b05036</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_first_derivative</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>a87494d3d001459c958f2ca7be2f4b23e</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_second_derivative</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>a17dbaea906a2ac818db324bf979da6b0</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_third_derivative</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>abc125e1b7a73c65f9ef80eb03b475dff</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>calc_all</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>a327dbadde98f9f72025d7c1a5e3c96a6</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>QuarticPolynomialMiddlePose</name>
    <filename>classQuarticPolynomialMiddlePose.html</filename>
    <member kind="function">
      <type></type>
      <name>QuarticPolynomialMiddlePose</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a1f7b90cd62b91ddd24d375110bd7eaa0</anchor>
      <arglist>(const float &amp;xs, const float &amp;middle_pose, const float &amp;xe, const float &amp;vxe, const float &amp;axe, const float &amp;t_middle, const float &amp;time)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_point</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>aa9d26e49ebf6579b7da01d6b01e68bcf</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_first_derivative</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a21e032af051f361c7711885e31828ef9</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_second_derivative</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a5a56a8409c599afcf5e731a37b25b726</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_third_derivative</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a2c250ac8e3c9e90bf8b2f8d56567e0b9</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>calc_all</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a1a4395714a0ca134a9a63ece1e906dd3</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>SteeringController</name>
    <filename>classSteeringController.html</filename>
    <member kind="function">
      <type></type>
      <name>SteeringController</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>a22b85d0b9d90ea3b3819c1976ec3ff85</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>a3fd11559ee441c9042b80fe892d83f34</anchor>
      <arglist>(const float &amp;wb, const float &amp;max_steer, const float &amp;kk_s, const float &amp;kd_s, const float &amp;k_stanley)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>pd_controller</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>a1d83af44a956bef6b82a0c423be678fc</anchor>
      <arglist>(const float &amp;xc, const float &amp;yc, const float &amp;yawc, const float &amp;la_x, const float &amp;la_y)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>geometric_controller</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>a7ec3758f7b24babf585d8ad893be7e97</anchor>
      <arglist>(const float &amp;xc, const float &amp;yc, const float &amp;yawc, const float &amp;la_x, const float &amp;la_y, const float &amp;look_ahead_distance)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>stanley_controller</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>ac746344a7197b19295b272e3839e7af0</anchor>
      <arglist>(const float &amp;yaw_desired, const float &amp;yawc, const float &amp;distance_n, const float &amp;speed)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ThirdPolynomial</name>
    <filename>classThirdPolynomial.html</filename>
    <member kind="function">
      <type></type>
      <name>ThirdPolynomial</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>aa0a9d9dca17b52b9a8b737dc81b6367c</anchor>
      <arglist>(const float &amp;xs, const float &amp;xe, const float &amp;vxe, const float &amp;axe, const float &amp;time)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_point</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>ad278e37fa40b17efc838a7bd67ded65a</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_first_derivative</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>a4d67bba3a4498295315922d891e57aa0</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_second_derivative</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>a3a56fac53ffe8e6f49078f8acf71cec5</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_third_derivative</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>a16af3b32694d807dae8705a076fe365f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>calc_all</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>a2dbde603bad187b56449332ea9499857</anchor>
      <arglist>(const float &amp;t) const</arglist>
    </member>
  </compound>
</tagfile>
