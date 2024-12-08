<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
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
      <anchor>a529ab25625f795fda63f83e2f2f3611f</anchor>
      <arglist>(float x)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float &gt;</type>
      <name>get_derivatives</name>
      <anchorfile>classCubicSpline1d.html</anchorfile>
      <anchor>a468353a2106d9219486a83b15a3b06f2</anchor>
      <arglist>(float x)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_position</name>
      <anchorfile>classCubicSpline1d.html</anchorfile>
      <anchor>a35ac9936a8e00660bcaa60d6d2e11ee6</anchor>
      <arglist>(float x)</arglist>
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
      <anchor>aaa5cff1e723f90ff90d2ef7f02d31678</anchor>
      <arglist>(float s)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float &gt;</type>
      <name>calc_curvature_and_yaw</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>ad5f75ceb1a29194b062c18ed04c2f430</anchor>
      <arglist>(float s)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>calc_position_curvature_yaw</name>
      <anchorfile>classCubicSpline2d.html</anchorfile>
      <anchor>a2d4262af27310cd6552bb88eee7a421d</anchor>
      <arglist>(float s)</arglist>
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
    <name>FrenetOptimalTrajectory</name>
    <filename>classFrenetOptimalTrajectory.html</filename>
    <member kind="function">
      <type></type>
      <name>FrenetOptimalTrajectory</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>a28130290186ed7aa84b66f2cfeda3cbe</anchor>
      <arglist>(float max_road_width=1.0, float d_road_w=0.5, float dt=0.2, float max_t=2.0, float min_t=1.0, float target_speed=1.0, float d_t_s=0.1, float robot_radius=0.4, float k_j=0.1, float k_t=0.1, float k_d=1.0, float min_look_ahead=0.0, float look_ahead_gain=0.0, float speed_decay_factor=0.95, float min_speed_reduction_gain=0.1)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; FrenetPath, float, float &gt;</type>
      <name>plan</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>a8eaace515c591d4097652ef6355659f5</anchor>
      <arglist>(CubicSpline2d &amp;csp, float s0, float c_speed, float c_d, const std::vector&lt; std::tuple&lt; float, float &gt;&gt; &amp;ob)</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>speed_reduction_gain</name>
      <anchorfile>classFrenetOptimalTrajectory.html</anchorfile>
      <anchor>ac94ddbd212e26f845888824033e7831a</anchor>
      <arglist></arglist>
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
  </compound>
  <compound kind="struct">
    <name>FrenetPath</name>
    <filename>structFrenetPath.html</filename>
  </compound>
  <compound kind="class">
    <name>QuarticPolynomial</name>
    <filename>classQuarticPolynomial.html</filename>
    <member kind="function">
      <type></type>
      <name>QuarticPolynomial</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>ac768ace5467336e48cf8fb9662f5ccae</anchor>
      <arglist>(float xs, float vxs, float axs, float vxe, float axe, float time)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_point</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>a821e30c24bda0814973376472ab08ac8</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_first_derivative</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>a4d83e67c9df29735fb90286052b6d1e4</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_second_derivative</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>ad5f83347f117af8908f7504c191ab997</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_third_derivative</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>a909a5c34496f5e747259d6b96180bb04</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>calc_all</name>
      <anchorfile>classQuarticPolynomial.html</anchorfile>
      <anchor>a2a07ded7040ee24105da0d22ae7ea957</anchor>
      <arglist>(float t) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>QuarticPolynomialMiddlePose</name>
    <filename>classQuarticPolynomialMiddlePose.html</filename>
    <member kind="function">
      <type></type>
      <name>QuarticPolynomialMiddlePose</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a16bd18656ca566b87ddea7c702f11ede</anchor>
      <arglist>(float xs, float middle_pose, float xe, float vxe, float axe, float t_middle, float time)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_point</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>ad45ecb53d76487736e20ae3b10288557</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_first_derivative</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a523cecaafc0de40c9909fa9e8b809481</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_second_derivative</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a7b0a5be44f4b4143deb88e094ac9bf89</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_third_derivative</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a15cbd3371f85f014e5f6476eb8dfd5df</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>calc_all</name>
      <anchorfile>classQuarticPolynomialMiddlePose.html</anchorfile>
      <anchor>a125059b9ecb9f91668a839203d645437</anchor>
      <arglist>(float t) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>SteeringController</name>
    <filename>classSteeringController.html</filename>
    <member kind="function">
      <type></type>
      <name>SteeringController</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>abf69e6cc951d8a18f6ab7418826c7b5e</anchor>
      <arglist>(float wb=0.32, float max_steer=0.38, float kk_s=0.8, float kd_s=0.04, float min_speed=0.0, float max_speed=1.0)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>heading_error</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>a73689d9a002a82afce57a74ff94431ec</anchor>
      <arglist>(float xc, float yc, float yawc, float la_x, float la_y)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>pd_controller</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>a3bc73c629f8e0addb6ebe6dcd6336a18</anchor>
      <arglist>(float xc, float yc, float yawc, float la_x, float la_y)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>geometric_controller</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>ad8cb18fdc38a4535d0d17f514f4ac2fd</anchor>
      <arglist>(float xc, float yc, float yawc, float la_x, float la_y, float look_ahead_distance)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>speed_given_steering</name>
      <anchorfile>classSteeringController.html</anchorfile>
      <anchor>adbb33287ffaf77d53d35f3d6757bc32c</anchor>
      <arglist>(float steering_angle)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ThirdPolynomial</name>
    <filename>classThirdPolynomial.html</filename>
    <member kind="function">
      <type></type>
      <name>ThirdPolynomial</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>a0ea07b709616f512eaf9416323310dbf</anchor>
      <arglist>(float xs, float xe, float vxe, float axe, float time)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_point</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>a02946962c8d966022fa6ce1874444d5e</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_first_derivative</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>ad25c79b41c6ee58b08e5dcbdc8b87112</anchor>
      <arglist>(float t) const</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calc_second_derivative</name>
      <anchorfile>classThirdPolynomial.html</anchorfile>
      <anchor>a193245132801bc8f6847c036a58e97ab</anchor>
      <arglist>(float t) const</arglist>
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
      <anchor>a64fb27dc80316c3b48c7e56acc3271cb</anchor>
      <arglist>(float t) const</arglist>
    </member>
  </compound>
</tagfile>
