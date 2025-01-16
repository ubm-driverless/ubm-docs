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
      <anchor>a0d5daee591361dbace212cd00b8ba9ee</anchor>
      <arglist>(CubicSpline2d &amp;csp, float s0, float c_speed, float c_d, const std::vector&lt; std::tuple&lt; float, float &gt;&gt; &amp;ob, int car_nearest_index)</arglist>
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
    <name>MapPath</name>
    <filename>classMapPath.html</filename>
    <member kind="function">
      <type></type>
      <name>MapPath</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a7bdd0cbede29abe670fdd016b8a92784</anchor>
      <arglist>(float look_ahead_gain=0.4, float min_look_ahead_distance=0.4, int tdp=0)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a2c13be35f54a9cb5474440d85de79423</anchor>
      <arglist>(const f1tenth_msgs::msg::Raceline &amp;raceline, std::string speed_function, int interpolation_depth=0, const std::vector&lt; double &gt; &amp;_sector_to_speed_factor={})</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; float &gt;</type>
      <name>interpolate_speed_profile</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a92971cda4b2b6e7576967e3a0e0bf3cc</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;speed, const std::vector&lt; uint8_t &gt; &amp;sector, int num_points, const std::map&lt; uint8_t, float &gt; &amp;sector_to_speed_factor, int interpolation_depth)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>search_nearest_point</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>aefafff9a57bbc51cd550e028e71a2274</anchor>
      <arglist>(State &amp;state)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float &gt;</type>
      <name>search_target_point</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>aabeb8feba306b164883f306633fc20ae</anchor>
      <arglist>(State &amp;state)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>get_target_speed</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a17cfdc0998c1341d668185c65ec7fb5c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>LOOK_AHEAD_GAIN</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a135601774de0d6af29938eca35471637</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>MIN_LOOK_AHEAD_DIST</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a415581a600589c35f5fdfab3876a6b80</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>TDP</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>adecd5a2e2653bc9069a4de8a0b9428ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>length</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a11095a5a18c830e3d7fe6cc42c61bc18</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>s_value</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a60c2f14a775df2a9a8ad4c2ac5bf5f33</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>point_distances</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a94c407395a325ab724e65e37d135b85d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>cx</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a8684a7a1e91c910a107cff513427ae06</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>cy</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>ac70148edea8d5511c2199409fe90bcb5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>heading</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a0e9ff8a03e4a2027e9ec71d8171c6495</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>curvature</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a28091a3a3f94a1ed29b851995d06bb94</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>speed</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a1e55f451ec7f88b3fb986d8c406b7bd7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>interpolated_speed</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a0932b7d0029ce6991db6816f9dae6bc8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; uint8_t &gt;</type>
      <name>sector</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>abeab1c53d6dd2f34c3ef2054d780dc5e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; std::string &gt;</type>
      <name>zone</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a8738be3d59c8605a93fd01fa41d9d705</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::map&lt; uint8_t, float &gt;</type>
      <name>sector_to_speed_factor</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a9f275a75386959e1e513718925e8299b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>num_points</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a1221e3d1d196629799100134c79776a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>nearest_point</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>a199563410b9b9f18c2848d246d875175</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>look_ahead_point</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>ae444c6be5d843be68d445c1e02893887</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>speed_function</name>
      <anchorfile>classMapPath.html</anchorfile>
      <anchor>aa55cb496e748965ec32d48aa2c4bb43a</anchor>
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
    <name>State</name>
    <filename>classState.html</filename>
    <member kind="function">
      <type></type>
      <name>State</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>ae3c901db22aac53ce6a2f592d4e06f33</anchor>
      <arglist>(float x=0.0, float y=0.0, float yaw=0.0, float v=0.0, float wb=0.0)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>distance_front</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>a1f09b97db2fdb5e2138b3e8ad62f797b</anchor>
      <arglist>(float other_x, float other_y)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>distance_middle</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>a069bf57a14c411f4e597d007499535b1</anchor>
      <arglist>(float other_x, float other_y)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>distance_rear</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>ab54a72ac59951cc0294b8959f73ac4c1</anchor>
      <arglist>(float other_x, float other_y)</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>front_x</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>a98038a1a0454c45b5834da4bc254852c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>front_y</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>ac964932e69714cda68fb9ceff05f487f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>middle_x</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>a5a54eaae02e2a09d5977caed1923f809</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>middle_y</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>ad78ce8b1bfdb214416a26cce785f98d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>rear_x</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>ab148c768275986e0ecffa13c51be781b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>rear_y</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>aa619f4e2366749d55f16678d5d422a21</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>yaw</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>acd66ed841524572b48be7e06d9dde58d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>v</name>
      <anchorfile>classState.html</anchorfile>
      <anchor>a1107f282ca16f5a4fb68bcd9ee6f06d4</anchor>
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
