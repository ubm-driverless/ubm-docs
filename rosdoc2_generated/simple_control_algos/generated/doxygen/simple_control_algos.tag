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
</tagfile>
