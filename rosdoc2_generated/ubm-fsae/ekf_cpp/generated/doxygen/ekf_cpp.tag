<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>ekf.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/ekf_cpp/include/ekf_cpp/</path>
    <filename>ekf_8hpp.html</filename>
    <class kind="class">ExtendedKalmanFilter</class>
  </compound>
  <compound kind="class">
    <name>EkfNode</name>
    <filename>classEkfNode.html</filename>
    <member kind="function">
      <type></type>
      <name>EkfNode</name>
      <anchorfile>classEkfNode.html</anchorfile>
      <anchor>a12caa9d5fe65cf2e0b8f515c8dc604d5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>plot_graphs_</name>
      <anchorfile>classEkfNode.html</anchorfile>
      <anchor>a763d02673cfc8a3e9c57adf2635cff50</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ExtendedKalmanFilter</name>
    <filename>classExtendedKalmanFilter.html</filename>
    <member kind="function">
      <type></type>
      <name>ExtendedKalmanFilter</name>
      <anchorfile>classExtendedKalmanFilter.html</anchorfile>
      <anchor>aa6c7de5019997815e38f8ca4d6c9ce52</anchor>
      <arglist>(const double &amp;alpha, const bool &amp;adaptive_R, const double &amp;P_weight_param, const std::vector&lt; double &gt; &amp;Q_weight_process, const std::vector&lt; double &gt; &amp;Q_weight_parameters, const std::vector&lt; double &gt; &amp;R_weight_measurement, const int &amp;state_dim, const double &amp;adaptive_weight, const double &amp;wheel_base_sae, const double &amp;radius_wheel, const double &amp;cog_pct_front, const double &amp;mass_sae, const double &amp;g, const double &amp;inertia_sae, const double &amp;aereodynamic_coefficient, const double &amp;rolling_resistance, const std::vector&lt; double &gt; &amp;pacejka_parameters, const bool &amp;parameter_EKF, const double &amp;tao_filter_parameter, const bool &amp;plot, const bool &amp;debug)</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; arma::mat, arma::vec8 &gt;</type>
      <name>update</name>
      <anchorfile>classExtendedKalmanFilter.html</anchorfile>
      <anchor>a715d9c91a403d060413c4b0d23fb9c8b</anchor>
      <arglist>(const arma::vec7 &amp;measurement, const double &amp;steering_angle, const double &amp;torque_left, const double &amp;torque_right, const double &amp;dt)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>plot_graphs</name>
      <anchorfile>classExtendedKalmanFilter.html</anchorfile>
      <anchor>a5d8476e66090393e20c8eaf0e2a81b0b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>arma::vec8</type>
      <name>model_current_state_estimate</name>
      <anchorfile>classExtendedKalmanFilter.html</anchorfile>
      <anchor>a9ebed2ac2890ab93fa45254c31cdeeeb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>arma::vec4</type>
      <name>model_tyre_forces</name>
      <anchorfile>classExtendedKalmanFilter.html</anchorfile>
      <anchor>a7b5dc47485bd95f429e5b03f4b582ce1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>LidarFilterNode</name>
    <filename>classLidarFilterNode.html</filename>
  </compound>
  <compound kind="class">
    <name>OdometryNode</name>
    <filename>classOdometryNode.html</filename>
    <member kind="function">
      <type></type>
      <name>OdometryNode</name>
      <anchorfile>classOdometryNode.html</anchorfile>
      <anchor>a76ed703f462b2388384bf14f6e84ca6c</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>UkfNode</name>
    <filename>classUkfNode.html</filename>
    <member kind="function">
      <type></type>
      <name>UkfNode</name>
      <anchorfile>classUkfNode.html</anchorfile>
      <anchor>a43b3a24def7a218a18e30f2f52b5b3d5</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>UnscentedKalmanFilter</name>
    <filename>classUnscentedKalmanFilter.html</filename>
    <member kind="function">
      <type></type>
      <name>UnscentedKalmanFilter</name>
      <anchorfile>classUnscentedKalmanFilter.html</anchorfile>
      <anchor>aa458889d473beef3f106b37de1e3669e</anchor>
      <arglist>(const double &amp;sigma_k, const double &amp;sigma_alpha, const double &amp;sigma_beta, const std::vector&lt; double &gt; &amp;initial_state, const std::vector&lt; double &gt; &amp;initial_state_covariance_diag_, const std::vector&lt; double &gt; &amp;process_noise_covariance_diag_, const std::vector&lt; double &gt; &amp;measurement_noise_covariance_diag_)</arglist>
    </member>
  </compound>
</tagfile>
