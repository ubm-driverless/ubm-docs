<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>raceline_utils.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/raceline_utils/include/</path>
    <filename>raceline__utils_8hpp.html</filename>
    <class kind="struct">RacelineRow</class>
    <class kind="struct">RacelineData</class>
    <class kind="class">Raceline</class>
  </compound>
  <compound kind="class">
    <name>Raceline</name>
    <filename>classRaceline.html</filename>
    <member kind="function">
      <type></type>
      <name>Raceline</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>abf073897de0800ef0d35ffc9b011b90f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a9b2d9ce976b69f2b4ff470b436712b13</anchor>
      <arglist>(const std::string &amp;filename, bool is_closed_track=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a120f692e3eab2f5596fab4edec7e776a</anchor>
      <arglist>(const std::string &amp;filename, bool &amp;success, bool is_closed_track=true)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>get_target_speed</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>abf0c8a748c99ba9fa9dbf5e3d798c7a3</anchor>
      <arglist>(int index) const</arglist>
    </member>
    <member kind="function">
      <type>RacelineRow</type>
      <name>get_raceline_row</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a7107b141ee18ab2903a0ccbc223a755a</anchor>
      <arglist>(int index) const</arglist>
    </member>
    <member kind="function">
      <type>RacelineData</type>
      <name>get_raceline_data</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a5f738bda8f2a17a9cb028167d6afc8ce</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; std::vector&lt; float &gt;, std::vector&lt; float &gt;, std::vector&lt; float &gt;, std::vector&lt; float &gt; &gt;</type>
      <name>get_borders</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>ac68554cf5c5b04f8553ea7f9410c43f3</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_num_points</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>ac9bd1e1519a3c0a750277682d7220b6e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_nearest_index</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a1cf7e809bc8c48e9277daa03098b63eb</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; std::vector&lt; float &gt;, std::vector&lt; float &gt; &gt;</type>
      <name>get_raceline_xy</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a7d6e815f9c106d7e3f5e4589ad0e76df</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; float &gt;</type>
      <name>get_heading</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a7c068656577610cc2d886b7ebeb5d6ae</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; float &gt;</type>
      <name>get_curvature</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>add99458f3bd73f1c9b3d6da1d7ffe874</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>read_csv</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>ade34f664e8a27af40d6510d80df05385</anchor>
      <arglist>(const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>read_csv</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>aa3efb17ba36d0cf471bb97298e93e3d7</anchor>
      <arglist>(const std::string &amp;filename, bool &amp;success)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>search_nearest_index</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>afa932197db453381eead1b651921a182</anchor>
      <arglist>(const float &amp;x, const float &amp;y, float window_size_m=0.0f) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>search_nearest_index</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>aad62e43dcfca48dfa7e469fcc9fa538a</anchor>
      <arglist>(const float &amp;s) const</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; float, float &gt;</type>
      <name>frenet_to_cartesian_r</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a5ac5b899a8b789fb8f6dbbc3df56ec1a</anchor>
      <arglist>(const float &amp;s, const float &amp;d) const</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; float, float &gt;</type>
      <name>frenet_to_cartesian_r</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>aae7fc45e5e675845358de48875754f7f</anchor>
      <arglist>(const std::pair&lt; float, float &gt; &amp;point) const</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; std::pair&lt; float, float &gt; &gt;</type>
      <name>frenet_to_cartesian_r</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a89e5ffab20629c4cc740b5b78c62b2d2</anchor>
      <arglist>(const std::vector&lt; std::pair&lt; float, float &gt;&gt; &amp;points) const</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; float, float &gt;</type>
      <name>cartesian_to_frenet</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a68766d8eda8fcc468f86e703885f11c1</anchor>
      <arglist>(const float &amp;x, const float &amp;y) const</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; float, float &gt;</type>
      <name>cartesian_to_frenet</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a558912c11d4a84dcd82c1a23eb8e527d</anchor>
      <arglist>(const std::pair&lt; float, float &gt; &amp;points) const</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; std::pair&lt; float, float &gt; &gt;</type>
      <name>cartesian_to_frenet</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>a638fdef02e75565a2a502a6953e1d011</anchor>
      <arglist>(const std::vector&lt; std::pair&lt; float, float &gt;&gt; &amp;points) const</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, float, float, float, int &gt;</type>
      <name>search_nearest_point_tdp_projected</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>ad36ddb5725155f32939af2edac82ea15</anchor>
      <arglist>(const float &amp;actual_x, const float &amp;actual_y, const int &amp;tdp)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; float, float, int &gt;</type>
      <name>search_look_ahead_point</name>
      <anchorfile>classRaceline.html</anchorfile>
      <anchor>aa63bd39dd91cdf6d576a8aa069f1c448</anchor>
      <arglist>(const float &amp;actual_x, const float &amp;actual_y, const float &amp;actual_v, const float &amp;look_ahead_gain, const float &amp;min_look_ahead_dist, float window_size_m=0.0f)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>RacelineData</name>
    <filename>structRacelineData.html</filename>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>s_spline</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>ac27e9bd63e8463cf80461454a442d84d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>x_r</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>a72dd32c8eb58a8afcb5fdc11867d95ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>y_r</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>ad1665e46aed2677b14790a5a695f99ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>width_right_m</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>a87cf5771807bd3a539865bda2151e598</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>width_left_m</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>a012a6396bc7b6fbd8ef99f6ea6d7af47</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>heading</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>ae23233894924c5898492590edbc0474d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>curvature</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>a357ff0cc544efd9525612ad39e9c25a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>vx_mps</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>abd92d36e327ead0d1975cd0d23f1e440</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; float &gt;</type>
      <name>ax_mps2</name>
      <anchorfile>structRacelineData.html</anchorfile>
      <anchor>aca517c3de0e69f15b5809cdab389efa9</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>RacelineRow</name>
    <filename>structRacelineRow.html</filename>
    <member kind="variable">
      <type>float</type>
      <name>s_spline</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>a7876293fbc5811c87cd5a1dfa794f2dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>x_r</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>a8d11f9d0284b54f76d2662feb1970180</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>y_r</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>a7eb6e6e0d17868351cd47a106bfee79b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>width_right_m</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>af309b5c7d74b9468a997a659d3a4bfee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>width_left_m</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>ac2c471c0cf8c467f83cfe1afb91b7240</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>heading</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>a9228cd64fbc4b5b4df4c6a1f8416ae64</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>curvature</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>aac216cd49794ed58a55fd86ccc39c385</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>vx_mps</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>a11ce95daed2dd8c46b68c1ea3df49fd5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>ax_mps2</name>
      <anchorfile>structRacelineRow.html</anchorfile>
      <anchor>a540e1cad1dfc98f7b556d2dd8e02cb6e</anchor>
      <arglist></arglist>
    </member>
  </compound>
</tagfile>
