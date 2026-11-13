<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>path_follower_node.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/simple_control_algos/include/</path>
    <filename>path__follower__node_8hpp.html</filename>
    <class kind="class">PathFollowerNode</class>
  </compound>
  <compound kind="file">
    <name>ros_utils.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/simple_control_algos/include/utils/</path>
    <filename>ros__utils_8hpp.html</filename>
    <member kind="function">
      <type>void</type>
      <name>publish_performance</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>a1c302fecbc320694c92b7363cd0d7f35</anchor>
      <arglist>(const rclcpp::Publisher&lt; ubm_interfaces::msg::LapPerformance &gt;::SharedPtr &amp;publisher, const ubm_interfaces::msg::CustomHeader &amp;common_header, const LapPerformanceData &amp;lap_performance)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>visualize_markers</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>acdd4d10e13db0d62aa9bf84a812c7895</anchor>
      <arglist>(const rclcpp::Publisher&lt; geometry_msgs::msg::PoseStamped &gt;::SharedPtr &amp;publisher, const ubm_interfaces::msg::CustomHeader &amp;common_header, float point_x, float point_y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>visualize_markers</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>ad8bece350207dd4e9535a9776f902abc</anchor>
      <arglist>(const rclcpp::Publisher&lt; geometry_msgs::msg::PointStamped &gt;::SharedPtr &amp;publisher, const ubm_interfaces::msg::CustomHeader &amp;common_header, float point_x, float point_y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>publish_raceline</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>a2eb198870d55f9cb7c26e1f60b9a1979</anchor>
      <arglist>(const rclcpp::Publisher&lt; nav_msgs::msg::Path &gt;::SharedPtr &amp;publisher, const ubm_interfaces::msg::CustomHeader &amp;common_header, const std::vector&lt; float &gt; &amp;x, const std::vector&lt; float &gt; &amp;y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>publish_points_as_marker_array</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>abe1b1b997bef9846de6c15b8c8d5fa0f</anchor>
      <arglist>(const rclcpp::Publisher&lt; visualization_msgs::msg::MarkerArray &gt;::SharedPtr &amp;publisher, const ubm_interfaces::msg::CustomHeader &amp;common_header, const std::vector&lt; std::pair&lt; float, float &gt;&gt; &amp;points)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>publish_points_as_pointcloud</name>
      <anchorfile>ros__utils_8hpp.html</anchorfile>
      <anchor>a19d41a1984d9db4166ff1979918e1a7a</anchor>
      <arglist>(const rclcpp::Publisher&lt; sensor_msgs::msg::PointCloud2 &gt;::SharedPtr &amp;publisher, const ubm_interfaces::msg::CustomHeader &amp;common_header, const std::vector&lt; std::pair&lt; float, float &gt;&gt; &amp;points)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>simple_speed.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/simple_control_algos/include/utils/</path>
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
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/simple_control_algos/include/utils/</path>
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
      <anchor>ab868f789f6ce2325022257f61de9c9f8</anchor>
      <arglist>(double yaw_desired, double yaw_current)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AccelerationController</name>
    <filename>classAccelerationController.html</filename>
    <base>MissionController</base>
    <member kind="function">
      <type></type>
      <name>AccelerationController</name>
      <anchorfile>classAccelerationController.html</anchorfile>
      <anchor>afe91f823b7e062eb6e9341073f37a87d</anchor>
      <arglist>(control_structs::NodeConfig &amp;config, control_structs::ControlState &amp;state, control_structs::RosInterfaces &amp;ros)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ControlNode</name>
    <filename>classControlNode.html</filename>
  </compound>
  <compound kind="struct">
    <name>control_structs::ControlState</name>
    <filename>structcontrol__structs_1_1ControlState.html</filename>
    <member kind="variable">
      <type>bool</type>
      <name>pose_obtained</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>ae84ef787987f405de632b417e5ad6b4c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>start_control</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>ad18590545f7f6643344406d1cd8626e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mission_correct</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a7f1609f8db4b8ae75077755e1555a325</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>watchdog_count</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a098e29d1fd8283efc0db0d490c094cc9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>mission</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a592cf933b7732b3621bb64f366975e93</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>steer_error_yaw_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a046f27cf7f0a0e81ec262ef4253d1044</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>steer_error_cte_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>aa663c415d811db5a3f39f1311cc67e95</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>setpoint_look_ahead_x_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>ad8ebb45b66761915223d748acbc4a59c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>setpoint_look_ahead_y_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a9d384c83613b5c74962d4b433c184c1d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>torque_error_speed_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a2471aa19e281f18539db482e5f639098</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>torque_error_integral_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a8ff7d852c68959b89dd5295f03d42d2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>torque_term_p_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>ab78af56558eacfeea60b5b801f319bba</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>torque_term_i_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>aa33f65a86ea668729fb2a56a5eb92a5f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SteeringController</type>
      <name>steering_controller</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a1ed94eaaac37f0bb7efc75f9f44c5331</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>FeedForwardAction</type>
      <name>feedforward_action</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a7af7ee462112e060f68805b480a1c095</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TorqueController</type>
      <name>torque_controller</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a43b2c56b33e42ecc699ee4672a6535b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Raceline</type>
      <name>raceline</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a541809f6daea1c832b8502594abc1ef6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>raceline_s</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a51d30e57c5d43bb7d37a4bcc1c5035d9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>raceline_x</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a14416921ad84f9c96bc3b19539f37bd0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>raceline_y</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a2f48516945e79dfe152495142111bf42</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>raceline_velocity</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a2088654d261977f88b32460f17aa16fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>geometry_msgs::msg::Pose</type>
      <name>current_pose</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>aafcc8aa563c538383f5fe16396532873</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>geometry_msgs::msg::Pose</type>
      <name>odom_pose</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>afd1c2f5045d9fbedd4e1c91857bf1a92</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>current_speed</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>ab04a2b405f19cc52084660c232e14cae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>old_steer_angle</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a1402a134dd1f2f48a93061a693cca179</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>LapPerformance</type>
      <name>lap_performance</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>af1ef018c9b365b9ca7b3c2393fa6dac6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>enable_speed_profile_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a1350a6142a26ad7afe82658bf650533d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>enable_debug_info_</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>adf1bcd0b632f1488633e481aa9905657</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::shared_ptr&lt; SpeedGenerator &gt;</type>
      <name>speed_generator</name>
      <anchorfile>structcontrol__structs_1_1ControlState.html</anchorfile>
      <anchor>a5c966fe476c4df7ec911cb8f1c05ca81</anchor>
      <arglist></arglist>
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
    <name>DummyController</name>
    <filename>classDummyController.html</filename>
    <base>MissionController</base>
    <member kind="function">
      <type></type>
      <name>DummyController</name>
      <anchorfile>classDummyController.html</anchorfile>
      <anchor>a4dde4bce5328886e5878a85461dd41c1</anchor>
      <arglist>(control_structs::NodeConfig &amp;config, control_structs::ControlState &amp;state, control_structs::RosInterfaces &amp;ros, control_structs::DummyControllerParameters &amp;dummy)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>control_structs::DummyControllerParameters</name>
    <filename>structcontrol__structs_1_1DummyControllerParameters.html</filename>
    <member kind="variable">
      <type>int</type>
      <name>laps_total_</name>
      <anchorfile>structcontrol__structs_1_1DummyControllerParameters.html</anchorfile>
      <anchor>a465b4bd6ae5f812db8dd905e9b6740b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>partial_path_limits_topic_</name>
      <anchorfile>structcontrol__structs_1_1DummyControllerParameters.html</anchorfile>
      <anchor>a04e586cc90c3f0b5a419e8bdca6b43e8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>full_path_limits_topic_</name>
      <anchorfile>structcontrol__structs_1_1DummyControllerParameters.html</anchorfile>
      <anchor>ad9fef42811590fb597e2a7a9066b0b7a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>full_path_obtained</name>
      <anchorfile>structcontrol__structs_1_1DummyControllerParameters.html</anchorfile>
      <anchor>aef005ab00e97b2afe5759f8653840e09</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>LapPerformanceData</type>
      <name>lap_performance_data</name>
      <anchorfile>structcontrol__structs_1_1DummyControllerParameters.html</anchorfile>
      <anchor>a2859339c3cdd51da4882b0dbfe07b885</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Subscription&lt; ubm_interfaces::msg::PathLimits &gt;::SharedPtr</type>
      <name>partial_path_limits_subscriber_</name>
      <anchorfile>structcontrol__structs_1_1DummyControllerParameters.html</anchorfile>
      <anchor>ac9d5ea3245ac7a9b3b7535322a419a97</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Subscription&lt; ubm_interfaces::msg::PathLimits &gt;::SharedPtr</type>
      <name>full_path_limits_subscriber_</name>
      <anchorfile>structcontrol__structs_1_1DummyControllerParameters.html</anchorfile>
      <anchor>aeffc4a5da00d731daccacdca3004767f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>enable_profiling_</name>
      <anchorfile>structcontrol__structs_1_1DummyControllerParameters.html</anchorfile>
      <anchor>af4cc662740d62a07c2677dd74594c722</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>EbsController</name>
    <filename>classEbsController.html</filename>
    <base>MissionController</base>
    <member kind="function">
      <type></type>
      <name>EbsController</name>
      <anchorfile>classEbsController.html</anchorfile>
      <anchor>a27d23da7bb20e42c2fdae2975111bd47</anchor>
      <arglist>(control_structs::NodeConfig &amp;config, control_structs::ControlState &amp;state, control_structs::RosInterfaces &amp;ros)</arglist>
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
    <name>MissionController</name>
    <filename>classMissionController.html</filename>
  </compound>
  <compound kind="struct">
    <name>control_structs::NodeConfig</name>
    <filename>structcontrol__structs_1_1NodeConfig.html</filename>
    <member kind="variable">
      <type>bool</type>
      <name>send_drive_msg_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a8b69cdfabcd3825e56a15ca80aafda71</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>visualize_markers_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a0866ab92a0a616a5d5373e22173d2545</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>watchdog_is_active_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a0dd1a083b99fbf9e586ee3c346ff9381</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>enable_control_logging_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a843542c2c9dce6ae1cf54554f0f673c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>disable_print_timeout_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>abd9049850cfa07f21380b2338fc291f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>tdp_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>aeb0f0f7b16b8d8efd870aa22956502f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>watchdog_period_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>aa20543173ae94bef4dffefa0b8348962</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>starting_strip_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a9cfc835183f83a6534fbb250c526c7fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>scale_speed_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a6d35becf8a22b8dec789c074d86a58e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>wb_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>aea120c6a0b091f9cfca3a85a5a153253</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>kk_s_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a865479ce53ad89aceb28750d994aeb0c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>kd_s_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>af9a15cbda6a1db925146e15366fdf302</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>max_steer_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>aba0286b17c06bf0945a5c1f1e7e3af3c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>k_staley</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a213fd569ba6a1a7635f9ed61382ae28e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>min_speed_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a596ee631552241a1505f713f411fdc97</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>max_error_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a1834ba382090b52d18aca51f64531d81</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>decay_v_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a931df9ba0a4ac7061340af4ba0f4bd05</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>decay_e_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a246837778000ff704294768d5ab34f16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>window_size_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a18d3427d741cfe2c8ca0cf9d5250ca4e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>look_ahead_gain_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a3a690a38ca1e232c703ba54abf34affe</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>min_look_ahead_dist_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a56b8c24cd70384c4e7c243f78744b2a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>kk_torque_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>adc2a825502b1df5c66235e0f05e937eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>ki_torque_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>ace50b5967d6d034e41ea70046ad3126d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>max_torque_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>afe655f44597038603abf2b2611b19f79</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>target_speed_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a2e0fa13473b851eb6752b5a2b93c27ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>raceline_discretization_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a30659d06028cc8d2c430b1f475d0730a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>control_frequency_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a8d5ffb834b440365f8b099d546fc6651</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>look_ahead_point_topic_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>ad1729ee8cf554b812346de6f162f8a9e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>car_nearest_point_topic_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a04fe5040e4bd2b8e8e144a5f7f8c1833</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>odom_topic_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a5cf172d6024034fe322e0478254a9767</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>pose_topic_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a558cdf2da390f64a3739d3299685b51a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>path_limits_topic_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a1fd7fc86218f8ae36145ded1d030013a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>drive_topic_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a7151cdaf6a23c966fd68d5fe880882e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>start_control_topic_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a2bc2aee2615096b7d909724c19e7f50c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>frame_id_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>abce88455318f9d0021cbb77ce13183b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>is_ready_service_name_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a9e6de1accc81ce84885d82ce8e63cca8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>mission_finished_topic_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>a57f2caabb14b87f23b8a74271b8f65a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>check_readiness_</name>
      <anchorfile>structcontrol__structs_1_1NodeConfig.html</anchorfile>
      <anchor>ab3f90207f81a22b69126345ad5f57e9a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>PathFollowerNode</name>
    <filename>classPathFollowerNode.html</filename>
    <base>MissionController</base>
    <member kind="function">
      <type></type>
      <name>PathFollowerNode</name>
      <anchorfile>classPathFollowerNode.html</anchorfile>
      <anchor>a3129cbbfb49c9b7c395513ab84aa1425</anchor>
      <arglist>(control_structs::NodeConfig &amp;config, control_structs::ControlState &amp;state, control_structs::RosInterfaces &amp;ros, control_structs::PathFollowerParameters &amp;pathf)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>control_structs::PathFollowerParameters</name>
    <filename>structcontrol__structs_1_1PathFollowerParameters.html</filename>
    <member kind="variable">
      <type>bool</type>
      <name>enable_speed_override_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>afb3c29e9fddc1ae6447af33f5884769d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>constant_speed_override_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>ab47a45e197f6472e9a24d38a3c2b632e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>enable_steer_override_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>ac76b25fdee59a201c323b009e1e3da83</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>constant_steer_override_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>a4f0de3fdd4cd6a98799d2a80a30c389b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>max_lap_statistics_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>aec1919574288898f486e003d5b6d26e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>reset_lap_statistics_topic_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>a05426c98b1325bac8866c8277ecada5b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>speed_obtained</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>ac3560db66402e59d8b816de1a2fe7e1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>path_obtained</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>a18385bcd957726b8c328f38ed324c7a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Subscription&lt; ubm_interfaces::msg::CustomBool &gt;::SharedPtr</type>
      <name>reset_lap_statistics_subscriber_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>a022cb3bd6d3adf7e68fc5540bed91ab8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; nav_msgs::msg::Path &gt;::SharedPtr</type>
      <name>raceline_publisher_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>a6fb78fa5b3fbad2e239a846feea2a557</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; ubm_interfaces::msg::LapPerformance &gt;::SharedPtr</type>
      <name>lap_performance_publisher_</name>
      <anchorfile>structcontrol__structs_1_1PathFollowerParameters.html</anchorfile>
      <anchor>af3a9a5548419d94f0b2aecb879bbfc17</anchor>
      <arglist></arglist>
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
  <compound kind="struct">
    <name>control_structs::RosInterfaces</name>
    <filename>structcontrol__structs_1_1RosInterfaces.html</filename>
    <member kind="variable">
      <type>rclcpp::Clock</type>
      <name>default_clock_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>af1f93bc5f9fd5dfaadd2b8f322991efd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Subscription&lt; nav_msgs::msg::Odometry &gt;::SharedPtr</type>
      <name>odom_subscriber_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a639f593f4b21c36cb6f0520656cc271f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Subscription&lt; ubm_interfaces::msg::CustomBool &gt;::SharedPtr</type>
      <name>start_control_subscriber_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>ab90f829241c81630b4a829e1f454a81a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Subscription&lt; ubm_interfaces::msg::PathLimits &gt;::SharedPtr</type>
      <name>path_limits_subscriber_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>aa528cb81bd6a3165d955141f508a9a2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Service&lt; ubm_interfaces::srv::IsReady &gt;::SharedPtr</type>
      <name>is_ready_service_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a7a652bf1b4cd675f9243b11e768b2062</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::node_interfaces::OnSetParametersCallbackHandle::SharedPtr</type>
      <name>params_callback_handle_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a47396bcdcb5e50c37534cfd5d343acec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; ubm_interfaces::msg::Control &gt;::SharedPtr</type>
      <name>drive_publisher_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a0056eceacec1201d68a0eda0d584feca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; geometry_msgs::msg::PoseStamped &gt;::SharedPtr</type>
      <name>look_ahead_point_publisher_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a4a518fbdd48b447fe2454c96fe8195ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; geometry_msgs::msg::PoseStamped &gt;::SharedPtr</type>
      <name>car_nearest_point_publisher_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>ab8ca64b2c68a4aec87b6bab68ea1ecda</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; ubm_interfaces::msg::Emergency &gt;::SharedPtr</type>
      <name>status_emergency_publisher_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>abf0175404993e5a7a6b328d11ce67d23</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; ubm_interfaces::msg::Info &gt;::SharedPtr</type>
      <name>status_info_publisher_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a7d5ea591ecbabbd736e3d52025a36225</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; ubm_interfaces::msg::MissionFinished &gt;::SharedPtr</type>
      <name>mission_finished_publisher_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a5400b3fbae34f5dd3beea5ca3a8b5f87</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; ubm_interfaces::msg::PIDControlOutput &gt;::SharedPtr</type>
      <name>steering_pid_publisher_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>abb3e3309c4176bbca90262a6a8daefae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::Publisher&lt; ubm_interfaces::msg::PIDControlOutput &gt;::SharedPtr</type>
      <name>torque_pid_publisher_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a92887a8ccab9a5cf1a3f1763fa2b9546</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>rclcpp::TimerBase::SharedPtr</type>
      <name>control_timer_</name>
      <anchorfile>structcontrol__structs_1_1RosInterfaces.html</anchorfile>
      <anchor>a000382edc919a9ab8fc36ee1433d98df</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>SkidpadController</name>
    <filename>classSkidpadController.html</filename>
    <base>MissionController</base>
    <member kind="function">
      <type></type>
      <name>SkidpadController</name>
      <anchorfile>classSkidpadController.html</anchorfile>
      <anchor>ade7d28c984b50ccfbca03589d5cfb72f</anchor>
      <arglist>(control_structs::NodeConfig &amp;config, control_structs::ControlState &amp;state, control_structs::RosInterfaces &amp;ros)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>SpeedGenerator</name>
    <filename>classSpeedGenerator.html</filename>
  </compound>
  <compound kind="class">
    <name>SpeedProfileGenerator</name>
    <filename>classSpeedProfileGenerator.html</filename>
    <base>SpeedGenerator</base>
    <member kind="function">
      <type>float</type>
      <name>generate</name>
      <anchorfile>classSpeedProfileGenerator.html</anchorfile>
      <anchor>ad4d5ec487bdefd57608c6832b0064695</anchor>
      <arglist>(int nearest_index)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>control_structs::SpeedProfileParameters</name>
    <filename>structcontrol__structs_1_1SpeedProfileParameters.html</filename>
    <member kind="variable">
      <type>float</type>
      <name>a_lat_max_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>a3445ed845c9c7b25c310ef81688ba380</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>v_min_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>aac3f9740e430de5fd975657986e7aa4e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>max_accel_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>a202c58d792c81fcefbd51e441d9d3412</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>max_decel_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>aaeca3820036a0f9946194cdef2c19584</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>preview_time_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>a1d1d1d9550ad3f7cc58407c86658c908</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>preview_dist_min_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>ad9906b5f7a75602668a2c038b2eb896e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>curvature_triangle_step_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>aa04515c47e8b8b4689326e60bb4ade06</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>k_noise_guard_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>ac6ff56da1e47fc15d6ab42d561ef78bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>speed_deadband_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>a5a63d2cda12d58bea5884f20cd2654e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>max_speed_</name>
      <anchorfile>structcontrol__structs_1_1SpeedProfileParameters.html</anchorfile>
      <anchor>a25ae47907438894633ff410c5e470cdb</anchor>
      <arglist></arglist>
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
      <anchor>a6e35dd0f599ea25819695b9298b70d1e</anchor>
      <arglist>(const float &amp;wb, const float &amp;max_steer, const float &amp;kk_s, const float &amp;kd_s, const float &amp;k_stanley, const float &amp;min_speed, const float &amp;max_error, const float &amp;decay_v, const float &amp;decay_e)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>pd_controller</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>a5e174f4e1a7af8ae316c74bcbc9ea97a</anchor>
      <arglist>(const float &amp;xc, const float &amp;yc, const float &amp;yawc, const float &amp;la_x, const float &amp;la_y, float &amp;error_yaw, float &amp;error_cte)</arglist>
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
    <member kind="function">
      <type>float</type>
      <name>p_enhanced_controller</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>a85ed9d0437028cc10f6a21a7e066c62c</anchor>
      <arglist>(const float &amp;xc, const float &amp;yc, const float &amp;yawc, const float &amp;vc, const float &amp;la_x, const float &amp;la_y)</arglist>
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
  <compound kind="class">
    <name>TorqueController</name>
    <filename>classTorqueController.html</filename>
    <member kind="function">
      <type></type>
      <name>TorqueController</name>
      <anchorfile>classTorqueController.html</anchorfile>
      <anchor>a23bbb61072d9c87a2bd2a61afe2ffb0a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classTorqueController.html</anchorfile>
      <anchor>af374f9ab6bcb9237afc2d4ed73e353a4</anchor>
      <arglist>(const float &amp;kk_torque, const float &amp;ki_torque, const float &amp;maximum_torque)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classTorqueController.html</anchorfile>
      <anchor>aa6c19d160f1cff421af337d96efca31d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>pi_controller</name>
      <anchorfile>classTorqueController.html</anchorfile>
      <anchor>a57f8bb32e0206cd9b44b743a2801bbae</anchor>
      <arglist>(const float &amp;velocity_reference, const float &amp;velocity_current, float &amp;error_speed, float &amp;error_integral, float &amp;term_proportional, float &amp;term_integral)</arglist>
    </member>
  </compound>
</tagfile>
