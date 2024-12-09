<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>curvature.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/rrt_cpp/include/rrt_cpp/</path>
    <filename>curvature_8hpp.html</filename>
  </compound>
  <compound kind="file">
    <name>mean_yaw.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/rrt_cpp/include/rrt_cpp/</path>
    <filename>mean__yaw_8hpp.html</filename>
    <includes id="rrt_8hpp" name="rrt.hpp" local="no" imported="no">rrt_cpp/rrt.hpp</includes>
    <member kind="function">
      <type>bool</type>
      <name>found_mean_yaw</name>
      <anchorfile>mean__yaw_8hpp.html</anchorfile>
      <anchor>a5feb8d66c15c32fec0d91f8dde86f7dd</anchor>
      <arglist>(const CoordinateXY &amp;coord, const CoordinateSequence &amp;line_coords, const AnyAnglePath &amp;path, const GeometryFactory &amp;factory, float &amp;mean_yaw, int &amp;idx_closest, geos_t &amp;distance_to_coord)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>nn_search.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/rrt_cpp/include/rrt_cpp/</path>
    <filename>nn__search_8hpp.html</filename>
    <includes id="rrt_8hpp" name="rrt.hpp" local="no" imported="no">rrt_cpp/rrt.hpp</includes>
    <member kind="function">
      <type>bool</type>
      <name>is_already_inserted_xy</name>
      <anchorfile>nn__search_8hpp.html</anchorfile>
      <anchor>a3d9d0e3d4904592004e921f6451480e3</anchor>
      <arglist>(const CoordinateSequence &amp;samples, const CoordinateXY &amp;coord, std::vector&lt; CoordinateXY &gt; &amp;X_near, CoordinateXY &amp;closest_point, const bool &amp;fill_fn_params=true, const geos_t &amp;eps_L2_squared=GP::eps_L2_squared, const geos_t &amp;delta_R_squared=GP::delta_R_squared)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>rrt.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/rrt_cpp/include/rrt_cpp/</path>
    <filename>rrt_8hpp.html</filename>
    <class kind="class">GP</class>
    <class kind="struct">AnyAnglePath</class>
    <class kind="struct">Trajectory</class>
    <class kind="struct">RRTNode</class>
    <class kind="class">AngleOp</class>
  </compound>
  <compound kind="file">
    <name>rrt_node.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/rrt_cpp/include/rrt_cpp/</path>
    <filename>rrt__node_8hpp.html</filename>
    <includes id="rrt_8hpp" name="rrt.hpp" local="no" imported="no">rrt_cpp/rrt.hpp</includes>
    <includes id="theta__star_8hpp" name="theta_star.hpp" local="no" imported="no">rrt_cpp/theta_star.hpp</includes>
    <class kind="class">RRTMainNode</class>
  </compound>
  <compound kind="file">
    <name>speed_profile.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/rrt_cpp/include/rrt_cpp/</path>
    <filename>speed__profile_8hpp.html</filename>
    <member kind="function">
      <type>vector&lt; vector&lt; double &gt; &gt;</type>
      <name>csv_to_mat</name>
      <anchorfile>speed__profile_8hpp.html</anchorfile>
      <anchor>aa6f62f6f651486ac64571030ea53cd97</anchor>
      <arglist>(const string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>vector&lt; double &gt;</type>
      <name>extract_column</name>
      <anchorfile>speed__profile_8hpp.html</anchorfile>
      <anchor>aead580dd40cec5d476a1eaaf210c21e2</anchor>
      <arglist>(const string &amp;filename, const string &amp;column_name)</arglist>
    </member>
    <member kind="function">
      <type>map&lt; string, string &gt;</type>
      <name>parse_raceline_ini</name>
      <anchorfile>speed__profile_8hpp.html</anchorfile>
      <anchor>a5acaa385b9593ce5ccbef797a093609a</anchor>
      <arglist>(const string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>vector&lt; float &gt;</type>
      <name>calc_vel_profile</name>
      <anchorfile>speed__profile_8hpp.html</anchorfile>
      <anchor>a96d905a88bd72e193db451cc4d47322a</anchor>
      <arglist>(const vector&lt; vector&lt; double &gt;&gt; &amp;ax_max_machines, const vector&lt; double &gt; &amp;kappa, const vector&lt; double &gt; &amp;el_lengths, double drag_coeff, double m_veh, const vector&lt; vector&lt; double &gt;&gt; &amp;ggv=vector&lt; vector&lt; double &gt;&gt;(), double v_max=numeric_limits&lt; double &gt;::quiet_NaN(), double dyn_model_exp=1.0, const vector&lt; double &gt; &amp;mu=vector&lt; double &gt;(), double v_start=numeric_limits&lt; double &gt;::quiet_NaN(), double v_end=numeric_limits&lt; double &gt;::quiet_NaN(), int filt_window=0)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>calc_ax_poss</name>
      <anchorfile>speed__profile_8hpp.html</anchorfile>
      <anchor>a88b02369187dae959eb78c1cc47bf703</anchor>
      <arglist>(double vx_start, double radius, const arma::mat &amp;ggv, double mu, double dyn_model_exp, double drag_coeff, double m_veh, const arma::mat &amp;ax_max_machines, const string &amp;mode)</arglist>
    </member>
    <member kind="function">
      <type>arma::vec</type>
      <name>__solver_fb_unclosed</name>
      <anchorfile>speed__profile_8hpp.html</anchorfile>
      <anchor>a4f1f4be1bd157a3bd1e7fb27288d6f0f</anchor>
      <arglist>(const arma::cube &amp;p_ggv, const arma::mat &amp;ax_max_machines, double v_max, const arma::vec &amp;radii, const arma::vec &amp;el_lengths, double v_start, double drag_coeff, double m_veh, const string &amp;op_mode, const arma::vec &amp;mu=arma::vec(), double v_end=numeric_limits&lt; double &gt;::quiet_NaN(), double dyn_model_exp=1.0)</arglist>
    </member>
    <member kind="function">
      <type>arma::vec</type>
      <name>__solver_fb_acc_profile</name>
      <anchorfile>speed__profile_8hpp.html</anchorfile>
      <anchor>aca3bd2ad467e2fecea480c84b61d3ae6</anchor>
      <arglist>(const arma::cube &amp;p_ggv, const arma::mat &amp;ax_max_machines, double v_max, const arma::vec &amp;radii, const arma::vec &amp;el_lengths, const arma::vec &amp;mu, arma::vec &amp;vx_profile, double drag_coeff, double m_veh, double dyn_model_exp=1.0, bool backwards=false)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>steer.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/rrt_cpp/include/rrt_cpp/</path>
    <filename>steer_8hpp.html</filename>
    <includes id="rrt_8hpp" name="rrt.hpp" local="no" imported="no">rrt_cpp/rrt.hpp</includes>
  </compound>
  <compound kind="file">
    <name>theta_star.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/rrt_cpp/include/rrt_cpp/</path>
    <filename>theta__star_8hpp.html</filename>
    <class kind="struct">std::hash&lt; std::tuple&lt; int, int &gt; &gt;</class>
    <class kind="class">ThetaStar</class>
    <class kind="class">ThetaStar::Comparator</class>
  </compound>
  <compound kind="class">
    <name>AngleOp</name>
    <filename>classAngleOp.html</filename>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>normalize_angle</name>
      <anchorfile>classAngleOp.html</anchorfile>
      <anchor>a5a58e1e86d3a125183c3352feb50a59c</anchor>
      <arglist>(float angle)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>angle_diff</name>
      <anchorfile>classAngleOp.html</anchorfile>
      <anchor>a077a72cfafd1ffd5c34207cf2c23673a</anchor>
      <arglist>(float a, float b)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>bisect_angle</name>
      <anchorfile>classAngleOp.html</anchorfile>
      <anchor>aea286f968aaf4a5d3b6f8e11cf17e3ed</anchor>
      <arglist>(float a, float b)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>weighted_circular_mean</name>
      <anchorfile>classAngleOp.html</anchorfile>
      <anchor>a8ad3d4b8e50b886bed763ccc9c8b9482</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;angles, const std::vector&lt; float &gt; &amp;weights)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>cos_angle_diff</name>
      <anchorfile>classAngleOp.html</anchorfile>
      <anchor>ab783d3c5ba3f0260be2834a34b615da7</anchor>
      <arglist>(float a, float b)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>AnyAnglePath</name>
    <filename>structAnyAnglePath.html</filename>
    <member kind="function">
      <type>size_t</type>
      <name>pts_size</name>
      <anchorfile>structAnyAnglePath.html</anchorfile>
      <anchor>acbb98f458e64d79ec482ae5bf2aafdd1</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>sgms_size</name>
      <anchorfile>structAnyAnglePath.html</anchorfile>
      <anchor>a8732daa586c96c6146ad2ff1207a880d</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ThetaStar::Comparator</name>
    <filename>classThetaStar_1_1Comparator.html</filename>
  </compound>
  <compound kind="class">
    <name>GP</name>
    <filename>classGP.html</filename>
  </compound>
  <compound kind="struct">
    <name>std::hash&lt; std::tuple&lt; int, int &gt; &gt;</name>
    <filename>structstd_1_1hash_3_01std_1_1tuple_3_01int_00_01int_01_4_01_4.html</filename>
  </compound>
  <compound kind="class">
    <name>RRTMainNode</name>
    <filename>classRRTMainNode.html</filename>
  </compound>
  <compound kind="struct">
    <name>RRTNode</name>
    <filename>structRRTNode.html</filename>
  </compound>
  <compound kind="class">
    <name>ThetaStar</name>
    <filename>classThetaStar.html</filename>
    <class kind="class">ThetaStar::Comparator</class>
    <member kind="function">
      <type>void</type>
      <name>updateVertex</name>
      <anchorfile>classThetaStar.html</anchorfile>
      <anchor>ac0614c170d39056ee10918ac8e96b490</anchor>
      <arglist>(const tuple&lt; int, int &gt; s, const tuple&lt; int, int &gt; sNeighbor, const cv::Mat &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>list&lt; tuple&lt; int, int &gt; &gt;</type>
      <name>thetaStar</name>
      <anchorfile>classThetaStar.html</anchorfile>
      <anchor>a8286b12236eba97ec4f794578ab29795</anchor>
      <arglist>(const tuple&lt; int, int &gt; start, tuple&lt; int, int &gt; goal, const cv::Mat &amp;map)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>hCost</name>
      <anchorfile>classThetaStar.html</anchorfile>
      <anchor>a6595ff2070adfb5a2ee4c73482c39a35</anchor>
      <arglist>(const tuple&lt; int, int &gt; s, const tuple&lt; int, int &gt; goal)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>lineOfSight</name>
      <anchorfile>classThetaStar.html</anchorfile>
      <anchor>a9fbfe378353e42b8ff6f2b287b42e73c</anchor>
      <arglist>(tuple&lt; int, int &gt; a, tuple&lt; int, int &gt; b, const cv::Mat &amp;map)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static list&lt; tuple&lt; int, int &gt; &gt;</type>
      <name>neighbors</name>
      <anchorfile>classThetaStar.html</anchorfile>
      <anchor>ac8190b9c164f14e2e3f4263230dab2bd</anchor>
      <arglist>(const tuple&lt; int, int &gt; s, const tuple&lt; int, int &gt; &amp;mapSize)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static float</type>
      <name>straightLinecost</name>
      <anchorfile>classThetaStar.html</anchorfile>
      <anchor>a4b7de48b3c837c962fd7235177bfabbf</anchor>
      <arglist>(const tuple&lt; int, int &gt; a, const tuple&lt; int, int &gt; b)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Trajectory</name>
    <filename>structTrajectory.html</filename>
  </compound>
</tagfile>
