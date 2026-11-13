<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>calculate_costs.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/cone_path_planner/include/cone_path_planner/</path>
    <filename>calculate__costs_8hpp.html</filename>
    <includes id="costs__utils_8hpp" name="costs_utils.hpp" local="yes" imported="no">cone_path_planner/costs_utils.hpp</includes>
    <member kind="function">
      <type>arma::fvec</type>
      <name>calculate_cost</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>ac281d88f622d5f38138a8fad88162efa</anchor>
      <arglist>(const std::vector&lt; std::array&lt; float, 3 &gt;&gt; &amp;points, const std::vector&lt; std::vector&lt; int &gt;&gt; &amp;configurations, ConeType cone_type, const std::array&lt; float, 2 &gt; &amp;vehicle_position, const std::array&lt; float, 2 &gt; &amp;vehicle_direction, bool return_individual_costs)</arglist>
    </member>
    <member kind="function">
      <type>arma::fmat</type>
      <name>calc_angle_cost_for_configuration</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>afa7fb04b1b861d62bb407089d3d9d525</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations, ConeType cone_type)</arglist>
    </member>
    <member kind="function">
      <type>arma::mat</type>
      <name>calc_angle_to_next</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>add94f442c07531308faabac90c3952d0</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>calc_distance_cost</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>afbd59df9b1495b853a9d1fb8d71c98cb</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations, double threshold_distance)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>calc_number_of_cones_cost</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>a4d03e83c147c5138c5d612f2d857926a</anchor>
      <arglist>(const arma::imat &amp;configurations)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>calc_initial_direction_cost</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>a33781df33b8442575ed1bdf644370758</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations, const arma::fvec &amp;vehicle_direction)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>calc_wrong_direction_cost</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>a7d0b3ef396ea9dd46be8dccf5124572a</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations, ConeType cone_type)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>calc_change_of_direction_cost</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>a77c2a4a835e5ff549cada39eb0019328</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations, const arma::fvec &amp;vehicle_direction)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>calc_cones_on_either_cost</name>
      <anchorfile>calculate__costs_8hpp.html</anchorfile>
      <anchor>a38092e96a6fb5dc9cf1eee51727cf52a</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations, ConeType cone_type)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>cone_common_types.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/cone_path_planner/include/cone_path_planner/</path>
    <filename>cone__common__types_8hpp.html</filename>
    <member kind="typedef">
      <type>std::tuple&lt; int, int, int &gt;</type>
      <name>SearchDirectionsCacheKey</name>
      <anchorfile>cone__common__types_8hpp.html</anchorfile>
      <anchor>ab2b58f3678216bde3d530279fbb704e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::map&lt; SearchDirectionsCacheKey, arma::fvec &gt;</type>
      <name>SearchDirectionsCache</name>
      <anchorfile>cone__common__types_8hpp.html</anchorfile>
      <anchor>acb542fca1a5b7567597f1a3783525301</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::tuple&lt; SearchDirectionsCacheKey, int, int &gt;</type>
      <name>AngleMaskCacheKey</name>
      <anchorfile>cone__common__types_8hpp.html</anchorfile>
      <anchor>a884845874542e5734847749753957c2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::map&lt; AngleMaskCacheKey, std::pair&lt; bool, bool &gt; &gt;</type>
      <name>AngleMaskCache</name>
      <anchorfile>cone__common__types_8hpp.html</anchorfile>
      <anchor>a2412aa2209e14a8461c2ee7fae62da2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>SENTINEL_VALUE</name>
      <anchorfile>cone__common__types_8hpp.html</anchorfile>
      <anchor>aa634bcc3c72d06f6b2a0d9f5ef554b7e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>costs_utils.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/cone_path_planner/include/cone_path_planner/</path>
    <filename>costs__utils_8hpp.html</filename>
    <includes id="cone__common__types_8hpp" name="cone_common_types.hpp" local="yes" imported="no">cone_path_planner/cone_common_types.hpp</includes>
    <member kind="function">
      <type>void</type>
      <name>clear_nearby_cone_search_cache</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>aa6d9e2bfcbad410f469223b70db886ad</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>SearchDirectionsCache</type>
      <name>create_search_directions_cache</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>aa45a5b7fa58cb3a5dbd8f4d441241631</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>AngleMaskCache</type>
      <name>create_angle_cache</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>aef0cce031070700a473a833f82fefd36</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; arma::fvec, arma::fvec &gt;</type>
      <name>impl_number_cones_per_side</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>afb4efeb1cc849a23b85537896dedd858</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations, ConeType cone_type, double max_distance, double max_angle, SearchDirectionsCache *existing_search_directions_cache=nullptr, AngleMaskCache *existing_angles_mask_cache=nullptr, arma::fmat *distance_matrix_square=nullptr, arma::cube *cones_to_cones_vecs=nullptr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pre_calculate_search_directions</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>a906a6152e39ff7d870166b45390e1ad3</anchor>
      <arglist>(const arma::mat &amp;points_xy, const arma::imat &amp;configurations, ConeType cone_type, SearchDirectionsCache &amp;cache)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>calculate_match_search_direction_for_one_if_not_in_cache</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>a20fc6f91312d6f2b15809e8dd65c20ef</anchor>
      <arglist>(const arma::mat &amp;points_xy, const SearchDirectionsCacheKey &amp;key, ConeType cone_type, SearchDirectionsCache &amp;cache)</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; arma::uvec, arma::uvec &gt;</type>
      <name>calculate_visible_cones_for_one_cone</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>afdc7af7c29b7d879b524219dd5f35f33</anchor>
      <arglist>(int cone_idx, const arma::umat &amp;cone_within_distance_matrix_mask, const SearchDirectionsCacheKey &amp;search_direction_key, const arma::cube &amp;cone_to_cone_vecs, float search_angle, const SearchDirectionsCache &amp;search_direction_cache, AngleMaskCache &amp;angle_cache, const arma::uvec &amp;idxs_to_check)</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; bool, bool &gt;</type>
      <name>angle_between_search_direction_of_cone_and_other_cone_is_too_large_if_not_in_cache</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>a27b8898ee7e246a17648f569f931a0d8</anchor>
      <arglist>(const arma::cube &amp;all_cone_directions, const SearchDirectionsCacheKey &amp;directions_key, int cone_idx, int other_cone_idx, const SearchDirectionsCache &amp;search_directions_cache, AngleMaskCache &amp;angle_cache, float search_angle)</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; bool, bool &gt;</type>
      <name>angle_between_search_direction_of_cone_and_other_cone_is_too_large</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>a11f816dc47318c295d8f46db5ba4c088</anchor>
      <arglist>(const arma::cube &amp;all_cone_directions, const SearchDirectionsCacheKey &amp;directions_key, int cone_idx, int other_cone_idx, const SearchDirectionsCache &amp;search_directions_cache, float search_angle)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>calc_angles</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>ae704ef399c04d0cc21c2333d586bb700</anchor>
      <arglist>(const arma::fvec &amp;v1, const arma::fvec &amp;v2)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>angle_difference</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>ad220315507a49fd04f6f4c2833193358</anchor>
      <arglist>(const arma::fvec &amp;a, const arma::fvec &amp;b)</arglist>
    </member>
    <member kind="function">
      <type>arma::fvec</type>
      <name>mod_fvec</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>ac0aa5386079fc8662fe076e7bc3df24b</anchor>
      <arglist>(const arma::fvec &amp;x, float y)</arglist>
    </member>
    <member kind="function">
      <type>arma::uvec</type>
      <name>set_difference</name>
      <anchorfile>costs__utils_8hpp.html</anchorfile>
      <anchor>a47704e3f17c2b97b0c0e1467a1e1a8b1</anchor>
      <arglist>(const arma::uvec &amp;A, const arma::uvec &amp;B)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ConeMatching</name>
    <filename>classConeMatching.html</filename>
    <member kind="function">
      <type></type>
      <name>ConeMatching</name>
      <anchorfile>classConeMatching.html</anchorfile>
      <anchor>a14d880e663a67211c127bb3eceabb6c1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classConeMatching.html</anchorfile>
      <anchor>a3aa7b8b9c527044f69983bec638eab03</anchor>
      <arglist>(const float &amp;min_track_width, const float &amp;max_search_range, const float &amp;max_search_angle)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; std::vector&lt; std::vector&lt; float &gt; &gt;, std::vector&lt; std::vector&lt; float &gt; &gt;, std::vector&lt; int &gt;, std::vector&lt; int &gt;, std::vector&lt; int &gt;, std::vector&lt; int &gt; &gt;</type>
      <name>run_cone_matching</name>
      <anchorfile>classConeMatching.html</anchorfile>
      <anchor>ad566023731f803950e7c58a700e00818</anchor>
      <arglist>(const std::array&lt; float, 2 &gt; car_position, const std::array&lt; float, 2 &gt; car_direction, const std::vector&lt; std::array&lt; float, 2 &gt;&gt; cones, std::vector&lt; int &gt; left_configuration, std::vector&lt; int &gt; right_configuration)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ConePathPlanner</name>
    <filename>classConePathPlanner.html</filename>
  </compound>
  <compound kind="class">
    <name>ConePathPlannerNode</name>
    <filename>classConePathPlannerNode.html</filename>
    <member kind="function">
      <type></type>
      <name>ConePathPlannerNode</name>
      <anchorfile>classConePathPlannerNode.html</anchorfile>
      <anchor>aa1dcf02d80613904fd814d7e1190c071</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ConeSorting</name>
    <filename>classConeSorting.html</filename>
    <member kind="function">
      <type></type>
      <name>ConeSorting</name>
      <anchorfile>classConeSorting.html</anchorfile>
      <anchor>a7876266422bcf859b1921c8eadd31705</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classConeSorting.html</anchorfile>
      <anchor>ad6be60b4ad1727ea887b73668f4721cd</anchor>
      <arglist>(const bool &amp;use_unknown_cones, const int &amp;max_n_neighbors, const int &amp;max_length, const float &amp;max_dist, const float &amp;max_dist_to_car, const float &amp;max_dist_to_neighbor, const float &amp;threshold_directional_angle, const float &amp;threshold_absolute_angle, const float &amp;threshold_other_side_angle, const float &amp;threshold_filter_angle)</arglist>
    </member>
    <member kind="function">
      <type>std::pair&lt; std::vector&lt; int &gt;, std::vector&lt; int &gt; &gt;</type>
      <name>run_cone_sorting</name>
      <anchorfile>classConeSorting.html</anchorfile>
      <anchor>adab648ab5d7c525ffd603c324b25d0fe</anchor>
      <arglist>(const std::array&lt; float, 2 &gt; car_position, const std::array&lt; float, 2 &gt; car_direction, const std::vector&lt; std::array&lt; float, 3 &gt;&gt; cones)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>NearbyConeSearcher</name>
    <filename>classNearbyConeSearcher.html</filename>
    <member kind="function">
      <type>CacheValue</type>
      <name>get_caches</name>
      <anchorfile>classNearbyConeSearcher.html</anchorfile>
      <anchor>a72a9a2a2fc825aaa1efc5923ffa95c54</anchor>
      <arglist>(const arma::mat &amp;cones, ConeType cone_type)</arglist>
    </member>
    <member kind="function">
      <type>std::tuple&lt; arma::fvec, arma::fvec &gt;</type>
      <name>number_cones_per_side</name>
      <anchorfile>classNearbyConeSearcher.html</anchorfile>
      <anchor>aff7f6f1e5262399adda6d2afd1e360d7</anchor>
      <arglist>(const arma::mat &amp;cones, const arma::imat &amp;configurations, ConeType cone_type, double max_distance, double max_angle)</arglist>
    </member>
  </compound>
</tagfile>
