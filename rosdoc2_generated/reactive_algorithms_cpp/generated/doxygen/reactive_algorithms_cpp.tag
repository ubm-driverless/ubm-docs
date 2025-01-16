<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="struct">
    <name>nanoflann::array_or_vector</name>
    <filename>structnanoflann_1_1array__or__vector.html</filename>
    <templarg>DIM</templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>array_or_vector&lt; -1, Interval &gt;</name>
    <filename>structnanoflann_1_1array__or__vector.html</filename>
  </compound>
  <compound kind="class">
    <name>array_or_vector&lt; DIM, Interval &gt;</name>
    <filename>structnanoflann_1_1array__or__vector.html</filename>
  </compound>
  <compound kind="struct">
    <name>nanoflann::array_or_vector&lt;-1, T &gt;</name>
    <filename>structnanoflann_1_1array__or__vector_3-1_00_01T_01_4.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::has_assign</name>
    <filename>structnanoflann_1_1has__assign.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::has_assign&lt; T, decltype((void) std::declval&lt; T &gt;().assign(1, 0), 0)&gt;</name>
    <filename>structnanoflann_1_1has__assign_3_01T_00_01decltype_07_07void_08_01std_1_1declval_3_01T_01_4_07_0384656df8feb37b62ef12dfcd439e93e.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::has_resize</name>
    <filename>structnanoflann_1_1has__resize.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::has_resize&lt; T, decltype((void) std::declval&lt; T &gt;().resize(1), 0)&gt;</name>
    <filename>structnanoflann_1_1has__resize_3_01T_00_01decltype_07_07void_08_01std_1_1declval_3_01T_01_4_07_08_8resize_071_08_00_010_08_4.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::IndexDist_Sorter</name>
    <filename>structnanoflann_1_1IndexDist__Sorter.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator()</name>
      <anchorfile>structnanoflann_1_1IndexDist__Sorter.html</anchorfile>
      <anchor>a916a2c12be68be13b447d2dd7ae5cbbb</anchor>
      <arglist>(const PairType &amp;p1, const PairType &amp;p2) const</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>nanoflann::KDTreeBaseClass::Interval</name>
    <filename>structnanoflann_1_1KDTreeBaseClass_1_1Interval.html</filename>
  </compound>
  <compound kind="class">
    <name>nanoflann::KDTreeBaseClass</name>
    <filename>classnanoflann_1_1KDTreeBaseClass.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg>DIM</templarg>
    <templarg></templarg>
    <class kind="struct">nanoflann::KDTreeBaseClass::Interval</class>
    <class kind="struct">nanoflann::KDTreeBaseClass::Node</class>
    <member kind="typedef">
      <type>typename array_or_vector&lt; DIM, Interval &gt;::type</type>
      <name>BoundingBox</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9f50c8088fa1885155d0ac1f650a8de3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>typename array_or_vector&lt; DIM, DistanceType &gt;::type</type>
      <name>distance_vector_t</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a2ccf9b910d39e18090e68ba7c4c988d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>freeIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a8a76f366cbbeb7feb8c0d2ecc91c4dcd</anchor>
      <arglist>(Derived &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>size</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a87c4cdfb51bc80b902d7b56683b93e91</anchor>
      <arglist>(const Derived &amp;obj) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>veclen</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ae524bf674ed5ca1fd6636f8133e6b1c9</anchor>
      <arglist>(const Derived &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>ElementType</type>
      <name>dataset_get</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ae324dc4d48301be5a7b5ff3072603883</anchor>
      <arglist>(const Derived &amp;obj, IndexType element, Dimension component) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>usedMemory</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a01e8a4ba6f6110969d2768aed4f292b5</anchor>
      <arglist>(Derived &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>NodePtr</type>
      <name>divideTree</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ac88bb3cfaa0ebfb28ba4da8d8500df4c</anchor>
      <arglist>(Derived &amp;obj, const Offset left, const Offset right, BoundingBox &amp;bbox)</arglist>
    </member>
    <member kind="function">
      <type>NodePtr</type>
      <name>divideTreeConcurrent</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a08cdd77c7600f9ce8e6b78b98de50e91</anchor>
      <arglist>(Derived &amp;obj, const Offset left, const Offset right, BoundingBox &amp;bbox, std::atomic&lt; unsigned int &gt; &amp;thread_count, std::mutex &amp;mutex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>planeSplit</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a19933a149853727061f804a35a7bfd05</anchor>
      <arglist>(const Derived &amp;obj, const Offset ind, const Size count, const Dimension cutfeat, const DistanceType &amp;cutval, Offset &amp;lim1, Offset &amp;lim2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>aaf4a4c61ee6931a763b3734e4b1af8af</anchor>
      <arglist>(const Derived &amp;obj, std::ostream &amp;stream) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9decc1015f7982fe084337f3c5e6a974</anchor>
      <arglist>(Derived &amp;obj, std::istream &amp;stream)</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; IndexType &gt;</type>
      <name>vAcc_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a38367010d4435bb111ded842f512935e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>n_thread_build_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9854e4c358710495d906757be54c10a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a3a142d37a32622c44c4e065934e364e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size_at_index_build_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a5d1d38994ddd21a55fe08b4d5294bdf0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Dimension</type>
      <name>dim_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>aadbe8c77146a8e5b4bcf0a09b9e7f0ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BoundingBox</type>
      <name>root_bbox_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9f89305d43e68ff67d7e42b324ddd2e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>PooledAllocator</type>
      <name>pool_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ac42bbd8b3f373b8b70e159c633d32374</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KDTreeBaseClass&lt; KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt;, Distance, DatasetAdaptor, -1, uint32_t &gt;</name>
    <filename>classnanoflann_1_1KDTreeBaseClass.html</filename>
    <member kind="typedef">
      <type>typename array_or_vector&lt; DIM, Interval &gt;::type</type>
      <name>BoundingBox</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9f50c8088fa1885155d0ac1f650a8de3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>typename array_or_vector&lt; DIM, DistanceType &gt;::type</type>
      <name>distance_vector_t</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a2ccf9b910d39e18090e68ba7c4c988d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>freeIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a8a76f366cbbeb7feb8c0d2ecc91c4dcd</anchor>
      <arglist>(KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>size</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a87c4cdfb51bc80b902d7b56683b93e91</anchor>
      <arglist>(const KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>veclen</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ae524bf674ed5ca1fd6636f8133e6b1c9</anchor>
      <arglist>(const KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>ElementType</type>
      <name>dataset_get</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ae324dc4d48301be5a7b5ff3072603883</anchor>
      <arglist>(const KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, uint32_t element, Dimension component) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>usedMemory</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a01e8a4ba6f6110969d2768aed4f292b5</anchor>
      <arglist>(KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>NodePtr</type>
      <name>divideTree</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ac88bb3cfaa0ebfb28ba4da8d8500df4c</anchor>
      <arglist>(KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, const Offset left, const Offset right, BoundingBox &amp;bbox)</arglist>
    </member>
    <member kind="function">
      <type>NodePtr</type>
      <name>divideTreeConcurrent</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a08cdd77c7600f9ce8e6b78b98de50e91</anchor>
      <arglist>(KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, const Offset left, const Offset right, BoundingBox &amp;bbox, std::atomic&lt; unsigned int &gt; &amp;thread_count, std::mutex &amp;mutex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>planeSplit</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a19933a149853727061f804a35a7bfd05</anchor>
      <arglist>(const KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, const Offset ind, const Size count, const Dimension cutfeat, const DistanceType &amp;cutval, Offset &amp;lim1, Offset &amp;lim2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>aaf4a4c61ee6931a763b3734e4b1af8af</anchor>
      <arglist>(const KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, std::ostream &amp;stream) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9decc1015f7982fe084337f3c5e6a974</anchor>
      <arglist>(KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, std::istream &amp;stream)</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; uint32_t &gt;</type>
      <name>vAcc_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a38367010d4435bb111ded842f512935e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>n_thread_build_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9854e4c358710495d906757be54c10a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a3a142d37a32622c44c4e065934e364e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size_at_index_build_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a5d1d38994ddd21a55fe08b4d5294bdf0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Dimension</type>
      <name>dim_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>aadbe8c77146a8e5b4bcf0a09b9e7f0ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BoundingBox</type>
      <name>root_bbox_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9f89305d43e68ff67d7e42b324ddd2e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>PooledAllocator</type>
      <name>pool_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ac42bbd8b3f373b8b70e159c633d32374</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KDTreeBaseClass&lt; KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt;, Distance, DatasetAdaptor, -1, uint32_t &gt;</name>
    <filename>classnanoflann_1_1KDTreeBaseClass.html</filename>
    <member kind="typedef">
      <type>typename array_or_vector&lt; DIM, Interval &gt;::type</type>
      <name>BoundingBox</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9f50c8088fa1885155d0ac1f650a8de3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>typename array_or_vector&lt; DIM, DistanceType &gt;::type</type>
      <name>distance_vector_t</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a2ccf9b910d39e18090e68ba7c4c988d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>freeIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a8a76f366cbbeb7feb8c0d2ecc91c4dcd</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>size</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a87c4cdfb51bc80b902d7b56683b93e91</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>veclen</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ae524bf674ed5ca1fd6636f8133e6b1c9</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>ElementType</type>
      <name>dataset_get</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ae324dc4d48301be5a7b5ff3072603883</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, uint32_t element, Dimension component) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>usedMemory</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a01e8a4ba6f6110969d2768aed4f292b5</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>NodePtr</type>
      <name>divideTree</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ac88bb3cfaa0ebfb28ba4da8d8500df4c</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, const Offset left, const Offset right, BoundingBox &amp;bbox)</arglist>
    </member>
    <member kind="function">
      <type>NodePtr</type>
      <name>divideTreeConcurrent</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a08cdd77c7600f9ce8e6b78b98de50e91</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, const Offset left, const Offset right, BoundingBox &amp;bbox, std::atomic&lt; unsigned int &gt; &amp;thread_count, std::mutex &amp;mutex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>planeSplit</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a19933a149853727061f804a35a7bfd05</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, const Offset ind, const Size count, const Dimension cutfeat, const DistanceType &amp;cutval, Offset &amp;lim1, Offset &amp;lim2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>aaf4a4c61ee6931a763b3734e4b1af8af</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, std::ostream &amp;stream) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9decc1015f7982fe084337f3c5e6a974</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt; &amp;obj, std::istream &amp;stream)</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; uint32_t &gt;</type>
      <name>vAcc_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a38367010d4435bb111ded842f512935e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>n_thread_build_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9854e4c358710495d906757be54c10a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a3a142d37a32622c44c4e065934e364e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size_at_index_build_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a5d1d38994ddd21a55fe08b4d5294bdf0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Dimension</type>
      <name>dim_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>aadbe8c77146a8e5b4bcf0a09b9e7f0ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BoundingBox</type>
      <name>root_bbox_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9f89305d43e68ff67d7e42b324ddd2e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>PooledAllocator</type>
      <name>pool_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ac42bbd8b3f373b8b70e159c633d32374</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KDTreeBaseClass&lt; KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt;, Distance, DatasetAdaptor, DIM, uint32_t &gt;</name>
    <filename>classnanoflann_1_1KDTreeBaseClass.html</filename>
    <member kind="typedef">
      <type>typename array_or_vector&lt; DIM, Interval &gt;::type</type>
      <name>BoundingBox</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9f50c8088fa1885155d0ac1f650a8de3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>typename array_or_vector&lt; DIM, DistanceType &gt;::type</type>
      <name>distance_vector_t</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a2ccf9b910d39e18090e68ba7c4c988d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>freeIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a8a76f366cbbeb7feb8c0d2ecc91c4dcd</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>size</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a87c4cdfb51bc80b902d7b56683b93e91</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>veclen</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ae524bf674ed5ca1fd6636f8133e6b1c9</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>ElementType</type>
      <name>dataset_get</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ae324dc4d48301be5a7b5ff3072603883</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj, uint32_t element, Dimension component) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>usedMemory</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a01e8a4ba6f6110969d2768aed4f292b5</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>NodePtr</type>
      <name>divideTree</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ac88bb3cfaa0ebfb28ba4da8d8500df4c</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj, const Offset left, const Offset right, BoundingBox &amp;bbox)</arglist>
    </member>
    <member kind="function">
      <type>NodePtr</type>
      <name>divideTreeConcurrent</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a08cdd77c7600f9ce8e6b78b98de50e91</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj, const Offset left, const Offset right, BoundingBox &amp;bbox, std::atomic&lt; unsigned int &gt; &amp;thread_count, std::mutex &amp;mutex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>planeSplit</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a19933a149853727061f804a35a7bfd05</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj, const Offset ind, const Size count, const Dimension cutfeat, const DistanceType &amp;cutval, Offset &amp;lim1, Offset &amp;lim2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>aaf4a4c61ee6931a763b3734e4b1af8af</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj, std::ostream &amp;stream) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9decc1015f7982fe084337f3c5e6a974</anchor>
      <arglist>(KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt; &amp;obj, std::istream &amp;stream)</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; uint32_t &gt;</type>
      <name>vAcc_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a38367010d4435bb111ded842f512935e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>n_thread_build_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9854e4c358710495d906757be54c10a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a3a142d37a32622c44c4e065934e364e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Size</type>
      <name>size_at_index_build_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a5d1d38994ddd21a55fe08b4d5294bdf0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Dimension</type>
      <name>dim_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>aadbe8c77146a8e5b4bcf0a09b9e7f0ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BoundingBox</type>
      <name>root_bbox_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>a9f89305d43e68ff67d7e42b324ddd2e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>PooledAllocator</type>
      <name>pool_</name>
      <anchorfile>classnanoflann_1_1KDTreeBaseClass.html</anchorfile>
      <anchor>ac42bbd8b3f373b8b70e159c633d32374</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>nanoflann::KDTreeEigenMatrixAdaptor</name>
    <filename>structnanoflann_1_1KDTreeEigenMatrixAdaptor.html</filename>
    <templarg></templarg>
    <templarg>DIM</templarg>
    <templarg></templarg>
    <templarg>row_major</templarg>
    <member kind="typedef">
      <type>typename index_t::Offset</type>
      <name>Offset</name>
      <anchorfile>structnanoflann_1_1KDTreeEigenMatrixAdaptor.html</anchorfile>
      <anchor>ae483cd39482dfe3ff90c68143e06d4ba</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeEigenMatrixAdaptor</name>
      <anchorfile>structnanoflann_1_1KDTreeEigenMatrixAdaptor.html</anchorfile>
      <anchor>a659fac8a19c44741e3d35706f14706ef</anchor>
      <arglist>(const Dimension dimensionality, const std::reference_wrapper&lt; const MatrixType &gt; &amp;mat, const int leaf_max_size=10)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeEigenMatrixAdaptor</name>
      <anchorfile>structnanoflann_1_1KDTreeEigenMatrixAdaptor.html</anchorfile>
      <anchor>a8824b4223eebf63d4e26a594fadaa3e7</anchor>
      <arglist>(const self_t &amp;)=delete</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>query</name>
      <anchorfile>structnanoflann_1_1KDTreeEigenMatrixAdaptor.html</anchorfile>
      <anchor>a1f7a3b7650512181407ef4f659d24577</anchor>
      <arglist>(const num_t *query_point, const Size num_closest, IndexType *out_indices, num_t *out_distances) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>nanoflann::KDTreeSingleIndexAdaptor</name>
    <filename>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg>DIM</templarg>
    <templarg></templarg>
    <base>KDTreeBaseClass&lt; KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, -1, uint32_t &gt;, Distance, DatasetAdaptor, -1, uint32_t &gt;</base>
    <member kind="typedef">
      <type>typename Base::BoundingBox</type>
      <name>BoundingBox</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a70dd4f7aa3ebdada423b137f1a7c425c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>typename Base::distance_vector_t</type>
      <name>distance_vector_t</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a598dcf6c45766fff1ff9d2e9b39e1b43</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeSingleIndexAdaptor</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a124710f75dc9f03b69b8db9bc2e105ec</anchor>
      <arglist>(const KDTreeSingleIndexAdaptor&lt; Distance, DatasetAdaptor, DIM, IndexType &gt; &amp;)=delete</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeSingleIndexAdaptor</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a17b73104bfa270e1e9cb3e1d1c0f7ac7</anchor>
      <arglist>(const Dimension dimensionality, const DatasetAdaptor &amp;inputData, const KDTreeSingleIndexAdaptorParams &amp;params, Args &amp;&amp;... args)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>buildIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>ae31b0904cbd1c50d322fea80e296ae8a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init_vind</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>aa1f14b5b6e7b0c09e09dae7e44c11200</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>searchLevel</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>ae839419a41e6d0877aece6330ae1acd6</anchor>
      <arglist>(RESULTSET &amp;result_set, const ElementType *vec, const NodePtr node, DistanceType mindist, distance_vector_t &amp;dists, const float epsError) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>abd0efa0b7630641ffe4cde4fdf2b2df3</anchor>
      <arglist>(std::ostream &amp;stream) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a6af02698ac7865aa3bd6574301388855</anchor>
      <arglist>(std::istream &amp;stream)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>findNeighbors</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>abd45fe1957ef7656aa92b1ee194c25f7</anchor>
      <arglist>(RESULTSET &amp;result, const ElementType *vec, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>knnSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a91702dc033060e6eaa1ab951c1824b02</anchor>
      <arglist>(const ElementType *query_point, const Size num_closest, IndexType *out_indices, DistanceType *out_distances) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>ac4c801c312ab7792bf8278cbbde87c54</anchor>
      <arglist>(const ElementType *query_point, const DistanceType &amp;radius, std::vector&lt; ResultItem&lt; IndexType, DistanceType &gt;&gt; &amp;IndicesDists, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearchCustomCallback</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a0ebe5d70c6ad6d20920b26ca8ff1894b</anchor>
      <arglist>(const ElementType *query_point, SEARCH_CALLBACK &amp;resultSet, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>rknnSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a0fbb2f6942239a34750808872a8d753a</anchor>
      <arglist>(const ElementType *query_point, const Size num_closest, IndexType *out_indices, DistanceType *out_distances, const DistanceType &amp;radius) const</arglist>
    </member>
    <member kind="variable">
      <type>const DatasetAdaptor &amp;</type>
      <name>dataset_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>ab71a9a8dfac484f3bada92c99f2bc810</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>findNeighbors</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>abd45fe1957ef7656aa92b1ee194c25f7</anchor>
      <arglist>(RESULTSET &amp;result, const ElementType *vec, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>knnSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a91702dc033060e6eaa1ab951c1824b02</anchor>
      <arglist>(const ElementType *query_point, const Size num_closest, IndexType *out_indices, DistanceType *out_distances) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>ac4c801c312ab7792bf8278cbbde87c54</anchor>
      <arglist>(const ElementType *query_point, const DistanceType &amp;radius, std::vector&lt; ResultItem&lt; IndexType, DistanceType &gt;&gt; &amp;IndicesDists, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearchCustomCallback</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a0ebe5d70c6ad6d20920b26ca8ff1894b</anchor>
      <arglist>(const ElementType *query_point, SEARCH_CALLBACK &amp;resultSet, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>rknnSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexAdaptor.html</anchorfile>
      <anchor>a0fbb2f6942239a34750808872a8d753a</anchor>
      <arglist>(const ElementType *query_point, const Size num_closest, IndexType *out_indices, DistanceType *out_distances, const DistanceType &amp;radius) const</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>nanoflann::KDTreeSingleIndexAdaptorParams</name>
    <filename>structnanoflann_1_1KDTreeSingleIndexAdaptorParams.html</filename>
  </compound>
  <compound kind="class">
    <name>nanoflann::KDTreeSingleIndexDynamicAdaptor</name>
    <filename>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg>DIM</templarg>
    <templarg></templarg>
    <member kind="function">
      <type>const std::vector&lt; index_container_t &gt; &amp;</type>
      <name>getAllIndices</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>ac998bc67f3dab745fc0bab403d560c6a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeSingleIndexDynamicAdaptor</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>ab5782069ba53f63e6a1bb3179b76b582</anchor>
      <arglist>(const int dimensionality, const DatasetAdaptor &amp;inputData, const KDTreeSingleIndexAdaptorParams &amp;params=KDTreeSingleIndexAdaptorParams(), const size_t maximumPointCount=1000000000U)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeSingleIndexDynamicAdaptor</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>aed425d8a99cd4d170e7135b35e414c0b</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor&lt; Distance, DatasetAdaptor, DIM, IndexType &gt; &amp;)=delete</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addPoints</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>ab056d39ec787e1888561c0d30ca67e4d</anchor>
      <arglist>(IndexType start, IndexType end)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removePoint</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>a6049f74d0f445f4e52b1153f23f5cd2e</anchor>
      <arglist>(size_t idx)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>findNeighbors</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>a333db6fd01d59765876c9aaab5f9a1a6</anchor>
      <arglist>(RESULTSET &amp;result, const ElementType *vec, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const DatasetAdaptor &amp;</type>
      <name>dataset_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>a578a31c35dae687d538df2fc3902fb46</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::vector&lt; int &gt;</type>
      <name>treeIndex_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>ab74708de8276edf76d46c7cdf4bed18f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>Dimension</type>
      <name>dim_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor.html</anchorfile>
      <anchor>aeac3ba772379276594368815dc604a40</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>nanoflann::KDTreeSingleIndexDynamicAdaptor_</name>
    <filename>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg>DIM</templarg>
    <templarg></templarg>
    <base>KDTreeBaseClass&lt; KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1, uint32_t &gt;, Distance, DatasetAdaptor, -1, uint32_t &gt;</base>
    <member kind="typedef">
      <type>typename Base::BoundingBox</type>
      <name>BoundingBox</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a2d0f3474f4bf465b5522436e5835ab96</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>typename Base::distance_vector_t</type>
      <name>distance_vector_t</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>ab8e4892a81a63ba576567080f06fb81f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeSingleIndexDynamicAdaptor_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a1f73918ee3e91d0e30c11a9c728b912c</anchor>
      <arglist>(const Dimension dimensionality, const DatasetAdaptor &amp;inputData, std::vector&lt; int &gt; &amp;treeIndex, const KDTreeSingleIndexAdaptorParams &amp;params=KDTreeSingleIndexAdaptorParams())</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeSingleIndexDynamicAdaptor_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a71b7c8f4f12e1fc5c52fd0408ef1402d</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_ &amp;rhs)=default</arglist>
    </member>
    <member kind="function">
      <type>KDTreeSingleIndexDynamicAdaptor_</type>
      <name>operator=</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>afb4f7c5d6d99007bd1d0e8d1fb0cc1aa</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_ &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>buildIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a72f35d5aea4402ca6dd3d9fb22c6b020</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>searchLevel</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>aee801ab6e9bb9300194e1f08b7dcec6a</anchor>
      <arglist>(RESULTSET &amp;result_set, const ElementType *vec, const NodePtr node, DistanceType mindist, distance_vector_t &amp;dists, const float epsError) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a7969bba85c656194c364920bca272b5c</anchor>
      <arglist>(std::ostream &amp;stream)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>aba0f17989f4ba925b6b3f4c930235f63</anchor>
      <arglist>(std::istream &amp;stream)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>findNeighbors</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>af187a96735d45182d4f77253b3f9c2d5</anchor>
      <arglist>(RESULTSET &amp;result, const ElementType *vec, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>knnSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>acdd427b6306e8ce510acc8c36d3bb120</anchor>
      <arglist>(const ElementType *query_point, const Size num_closest, IndexType *out_indices, DistanceType *out_distances, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>ac16d4e50ae9a35c221166a8ddfb13426</anchor>
      <arglist>(const ElementType *query_point, const DistanceType &amp;radius, std::vector&lt; ResultItem&lt; IndexType, DistanceType &gt;&gt; &amp;IndicesDists, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearchCustomCallback</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a68352e8b379d2076f47f5739d89c3a76</anchor>
      <arglist>(const ElementType *query_point, SEARCH_CALLBACK &amp;resultSet, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="variable">
      <type>const DatasetAdaptor &amp;</type>
      <name>dataset_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a42aa7719e96d0a9e0c9804fc7e81b576</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>findNeighbors</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>af187a96735d45182d4f77253b3f9c2d5</anchor>
      <arglist>(RESULTSET &amp;result, const ElementType *vec, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>knnSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>acdd427b6306e8ce510acc8c36d3bb120</anchor>
      <arglist>(const ElementType *query_point, const Size num_closest, IndexType *out_indices, DistanceType *out_distances, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>ac16d4e50ae9a35c221166a8ddfb13426</anchor>
      <arglist>(const ElementType *query_point, const DistanceType &amp;radius, std::vector&lt; ResultItem&lt; IndexType, DistanceType &gt;&gt; &amp;IndicesDists, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearchCustomCallback</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a68352e8b379d2076f47f5739d89c3a76</anchor>
      <arglist>(const ElementType *query_point, SEARCH_CALLBACK &amp;resultSet, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, -1 &gt;</name>
    <filename>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</filename>
    <base>KDTreeBaseClass&lt; KDTreeSingleIndexDynamicAdaptor_&lt; Distance, DatasetAdaptor, DIM, uint32_t &gt;, Distance, DatasetAdaptor, DIM, uint32_t &gt;</base>
    <member kind="typedef">
      <type>typename Base::BoundingBox</type>
      <name>BoundingBox</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a2d0f3474f4bf465b5522436e5835ab96</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>typename Base::distance_vector_t</type>
      <name>distance_vector_t</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>ab8e4892a81a63ba576567080f06fb81f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeSingleIndexDynamicAdaptor_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a1f73918ee3e91d0e30c11a9c728b912c</anchor>
      <arglist>(const Dimension dimensionality, const DatasetAdaptor &amp;inputData, std::vector&lt; int &gt; &amp;treeIndex, const KDTreeSingleIndexAdaptorParams &amp;params=KDTreeSingleIndexAdaptorParams())</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KDTreeSingleIndexDynamicAdaptor_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a71b7c8f4f12e1fc5c52fd0408ef1402d</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_ &amp;rhs)=default</arglist>
    </member>
    <member kind="function">
      <type>KDTreeSingleIndexDynamicAdaptor_</type>
      <name>operator=</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>afb4f7c5d6d99007bd1d0e8d1fb0cc1aa</anchor>
      <arglist>(const KDTreeSingleIndexDynamicAdaptor_ &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>buildIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a72f35d5aea4402ca6dd3d9fb22c6b020</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>searchLevel</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>aee801ab6e9bb9300194e1f08b7dcec6a</anchor>
      <arglist>(RESULTSET &amp;result_set, const ElementType *vec, const NodePtr node, DistanceType mindist, distance_vector_t &amp;dists, const float epsError) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a7969bba85c656194c364920bca272b5c</anchor>
      <arglist>(std::ostream &amp;stream)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadIndex</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>aba0f17989f4ba925b6b3f4c930235f63</anchor>
      <arglist>(std::istream &amp;stream)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>findNeighbors</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>af187a96735d45182d4f77253b3f9c2d5</anchor>
      <arglist>(RESULTSET &amp;result, const ElementType *vec, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>knnSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>acdd427b6306e8ce510acc8c36d3bb120</anchor>
      <arglist>(const ElementType *query_point, const Size num_closest, uint32_t *out_indices, DistanceType *out_distances, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>ac16d4e50ae9a35c221166a8ddfb13426</anchor>
      <arglist>(const ElementType *query_point, const DistanceType &amp;radius, std::vector&lt; ResultItem&lt; uint32_t, DistanceType &gt;&gt; &amp;IndicesDists, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearchCustomCallback</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a68352e8b379d2076f47f5739d89c3a76</anchor>
      <arglist>(const ElementType *query_point, SEARCH_CALLBACK &amp;resultSet, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="variable">
      <type>const DatasetAdaptor &amp;</type>
      <name>dataset_</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a42aa7719e96d0a9e0c9804fc7e81b576</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>findNeighbors</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>af187a96735d45182d4f77253b3f9c2d5</anchor>
      <arglist>(RESULTSET &amp;result, const ElementType *vec, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>knnSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>acdd427b6306e8ce510acc8c36d3bb120</anchor>
      <arglist>(const ElementType *query_point, const Size num_closest, uint32_t *out_indices, DistanceType *out_distances, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearch</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>ac16d4e50ae9a35c221166a8ddfb13426</anchor>
      <arglist>(const ElementType *query_point, const DistanceType &amp;radius, std::vector&lt; ResultItem&lt; uint32_t, DistanceType &gt;&gt; &amp;IndicesDists, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
    <member kind="function">
      <type>Size</type>
      <name>radiusSearchCustomCallback</name>
      <anchorfile>classnanoflann_1_1KDTreeSingleIndexDynamicAdaptor__.html</anchorfile>
      <anchor>a68352e8b379d2076f47f5739d89c3a76</anchor>
      <arglist>(const ElementType *query_point, SEARCH_CALLBACK &amp;resultSet, const SearchParameters &amp;searchParams={}) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>nanoflann::KNNResultSet</name>
    <filename>classnanoflann_1_1KNNResultSet.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="function">
      <type>bool</type>
      <name>addPoint</name>
      <anchorfile>classnanoflann_1_1KNNResultSet.html</anchorfile>
      <anchor>a52a808b3fb2889ebc100354be2558703</anchor>
      <arglist>(DistanceType dist, IndexType index)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>nanoflann::L1_Adaptor</name>
    <filename>structnanoflann_1_1L1__Adaptor.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::L2_Adaptor</name>
    <filename>structnanoflann_1_1L2__Adaptor.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::L2_Simple_Adaptor</name>
    <filename>structnanoflann_1_1L2__Simple__Adaptor.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>L2_Simple_Adaptor&lt; T, DataSource, DistanceType, uint32_t &gt;</name>
    <filename>structnanoflann_1_1L2__Simple__Adaptor.html</filename>
  </compound>
  <compound kind="struct">
    <name>nanoflann::Metric</name>
    <filename>structnanoflann_1_1Metric.html</filename>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_L1</name>
    <filename>structnanoflann_1_1metric__L1.html</filename>
    <base>nanoflann::Metric</base>
    <class kind="struct">nanoflann::metric_L1::traits</class>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_L2</name>
    <filename>structnanoflann_1_1metric__L2.html</filename>
    <base>nanoflann::Metric</base>
    <class kind="struct">nanoflann::metric_L2::traits</class>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_L2_Simple</name>
    <filename>structnanoflann_1_1metric__L2__Simple.html</filename>
    <base>nanoflann::Metric</base>
    <class kind="struct">nanoflann::metric_L2_Simple::traits</class>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_SO2</name>
    <filename>structnanoflann_1_1metric__SO2.html</filename>
    <base>nanoflann::Metric</base>
    <class kind="struct">nanoflann::metric_SO2::traits</class>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_SO3</name>
    <filename>structnanoflann_1_1metric__SO3.html</filename>
    <base>nanoflann::Metric</base>
    <class kind="struct">nanoflann::metric_SO3::traits</class>
  </compound>
  <compound kind="struct">
    <name>nanoflann::KDTreeBaseClass::Node</name>
    <filename>structnanoflann_1_1KDTreeBaseClass_1_1Node.html</filename>
    <member kind="variable">
      <type>Offset</type>
      <name>right</name>
      <anchorfile>structnanoflann_1_1KDTreeBaseClass_1_1Node.html</anchorfile>
      <anchor>aa3c0e043ad01bb01dc45c1a3b3b46829</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Dimension</type>
      <name>divfeat</name>
      <anchorfile>structnanoflann_1_1KDTreeBaseClass_1_1Node.html</anchorfile>
      <anchor>a4013d8322f7d7a12deaba47992d5c7de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>DistanceType</type>
      <name>divlow</name>
      <anchorfile>structnanoflann_1_1KDTreeBaseClass_1_1Node.html</anchorfile>
      <anchor>a36d85fcaa2e26e2b8882c9645fb774e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>union nanoflann::KDTreeBaseClass::Node::@0</type>
      <name>node_type</name>
      <anchorfile>structnanoflann_1_1KDTreeBaseClass_1_1Node.html</anchorfile>
      <anchor>ad538b900e0f959fdc0555456981b8224</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Node *</type>
      <name>child1</name>
      <anchorfile>structnanoflann_1_1KDTreeBaseClass_1_1Node.html</anchorfile>
      <anchor>a38804bb80edf051c061d72f48ba8ab9f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>nanoflann::PooledAllocator</name>
    <filename>classnanoflann_1_1PooledAllocator.html</filename>
    <member kind="function">
      <type></type>
      <name>PooledAllocator</name>
      <anchorfile>classnanoflann_1_1PooledAllocator.html</anchorfile>
      <anchor>ad193b067b17cd5015f4d5bf3e9573fc7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~PooledAllocator</name>
      <anchorfile>classnanoflann_1_1PooledAllocator.html</anchorfile>
      <anchor>a39c53213bc49d0f08fb8e4b0adc25b5e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>free_all</name>
      <anchorfile>classnanoflann_1_1PooledAllocator.html</anchorfile>
      <anchor>a43c877d5e6004a65ee49584dbc29bcc9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>malloc</name>
      <anchorfile>classnanoflann_1_1PooledAllocator.html</anchorfile>
      <anchor>ae6a1cfa103b81762ab700224f1c9d801</anchor>
      <arglist>(const size_t req_size)</arglist>
    </member>
    <member kind="function">
      <type>T *</type>
      <name>allocate</name>
      <anchorfile>classnanoflann_1_1PooledAllocator.html</anchorfile>
      <anchor>a389b1614fd2b6fa641c009e698db8b44</anchor>
      <arglist>(const size_t count=1)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>nanoflann::RadiusResultSet</name>
    <filename>classnanoflann_1_1RadiusResultSet.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="function">
      <type>bool</type>
      <name>addPoint</name>
      <anchorfile>classnanoflann_1_1RadiusResultSet.html</anchorfile>
      <anchor>afd71ccbde9e8cfaac24d8fccb416fa3c</anchor>
      <arglist>(DistanceType dist, IndexType index)</arglist>
    </member>
    <member kind="function">
      <type>ResultItem&lt; IndexType, DistanceType &gt;</type>
      <name>worst_item</name>
      <anchorfile>classnanoflann_1_1RadiusResultSet.html</anchorfile>
      <anchor>ad07427f09211c002d9c0b32d0591b5d7</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>nanoflann::ResultItem</name>
    <filename>structnanoflann_1_1ResultItem.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="variable">
      <type>IndexType</type>
      <name>first</name>
      <anchorfile>structnanoflann_1_1ResultItem.html</anchorfile>
      <anchor>af0bde6901f6c26b99a8c67212cc41ddc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>DistanceType</type>
      <name>second</name>
      <anchorfile>structnanoflann_1_1ResultItem.html</anchorfile>
      <anchor>a131d4fc59d80dc1bd0a509f6258889df</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>nanoflann::RKNNResultSet</name>
    <filename>classnanoflann_1_1RKNNResultSet.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="function">
      <type>bool</type>
      <name>addPoint</name>
      <anchorfile>classnanoflann_1_1RKNNResultSet.html</anchorfile>
      <anchor>a4305602186ab8585e24b0d56185053c5</anchor>
      <arglist>(DistanceType dist, IndexType index)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>nanoflann::SearchParameters</name>
    <filename>structnanoflann_1_1SearchParameters.html</filename>
    <member kind="variable">
      <type>float</type>
      <name>eps</name>
      <anchorfile>structnanoflann_1_1SearchParameters.html</anchorfile>
      <anchor>ad6fed78b662e89d55999f660f9fd4eae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>sorted</name>
      <anchorfile>structnanoflann_1_1SearchParameters.html</anchorfile>
      <anchor>a6eae5a391d54610d538d9780cad8b344</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>nanoflann::SO2_Adaptor</name>
    <filename>structnanoflann_1_1SO2__Adaptor.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="function">
      <type>DistanceType</type>
      <name>accum_dist</name>
      <anchorfile>structnanoflann_1_1SO2__Adaptor.html</anchorfile>
      <anchor>afe920fdd0792952fd02c965d99f618bb</anchor>
      <arglist>(const U a, const V b, const size_t) const</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>nanoflann::SO3_Adaptor</name>
    <filename>structnanoflann_1_1SO3__Adaptor.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_L1::traits</name>
    <filename>structnanoflann_1_1metric__L1_1_1traits.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_L2_Simple::traits</name>
    <filename>structnanoflann_1_1metric__L2__Simple_1_1traits.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_L2::traits</name>
    <filename>structnanoflann_1_1metric__L2_1_1traits.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_SO2::traits</name>
    <filename>structnanoflann_1_1metric__SO2_1_1traits.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>nanoflann::metric_SO3::traits</name>
    <filename>structnanoflann_1_1metric__SO3_1_1traits.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="group">
    <name>nanoflann_grp</name>
    <title>nanoflann C++ library for KD-trees</title>
    <filename>group__nanoflann__grp.html</filename>
    <subgroup>result_sets_grp</subgroup>
    <subgroup>loadsave_grp</subgroup>
    <subgroup>metric_grp</subgroup>
    <subgroup>param_grp</subgroup>
    <subgroup>memalloc_grp</subgroup>
    <subgroup>nanoflann_metaprog_grp</subgroup>
    <subgroup>kdtrees_grp</subgroup>
    <class kind="struct">nanoflann::has_resize</class>
    <class kind="struct">nanoflann::has_resize&lt; T, decltype((void) std::declval&lt; T &gt;().resize(1), 0)&gt;</class>
    <class kind="struct">nanoflann::has_assign</class>
    <class kind="struct">nanoflann::has_assign&lt; T, decltype((void) std::declval&lt; T &gt;().assign(1, 0), 0)&gt;</class>
    <class kind="class">nanoflann::KDTreeBaseClass</class>
    <member kind="function">
      <type>T</type>
      <name>pi_const</name>
      <anchorfile>group__nanoflann__grp.html</anchorfile>
      <anchor>ga8f0721b066194bc7bb511f7344beb460</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::enable_if&lt; has_resize&lt; Container &gt;::value, void &gt;::type</type>
      <name>resize</name>
      <anchorfile>group__nanoflann__grp.html</anchorfile>
      <anchor>gaec2db17610419f390df8fce56bdc4892</anchor>
      <arglist>(Container &amp;c, const size_t nElements)</arglist>
    </member>
    <member kind="function">
      <type>std::enable_if&lt; has_assign&lt; Container &gt;::value, void &gt;::type</type>
      <name>assign</name>
      <anchorfile>group__nanoflann__grp.html</anchorfile>
      <anchor>gada9f760672baea3da3422260fb03c8aa</anchor>
      <arglist>(Container &amp;c, const size_t nElements, const T &amp;value)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>result_sets_grp</name>
    <title>Result set classes</title>
    <filename>group__result__sets__grp.html</filename>
    <class kind="class">nanoflann::KNNResultSet</class>
    <class kind="class">nanoflann::RKNNResultSet</class>
    <class kind="struct">nanoflann::IndexDist_Sorter</class>
    <class kind="struct">nanoflann::ResultItem</class>
    <class kind="class">nanoflann::RadiusResultSet</class>
  </compound>
  <compound kind="group">
    <name>loadsave_grp</name>
    <title>Load/save auxiliary functions</title>
    <filename>group__loadsave__grp.html</filename>
  </compound>
  <compound kind="group">
    <name>metric_grp</name>
    <title>Metric (distance) classes</title>
    <filename>group__metric__grp.html</filename>
    <class kind="struct">nanoflann::Metric</class>
    <class kind="struct">nanoflann::L1_Adaptor</class>
    <class kind="struct">nanoflann::L2_Adaptor</class>
    <class kind="struct">nanoflann::L2_Simple_Adaptor</class>
    <class kind="struct">nanoflann::SO2_Adaptor</class>
    <class kind="struct">nanoflann::SO3_Adaptor</class>
    <class kind="struct">nanoflann::metric_L1</class>
    <class kind="struct">nanoflann::metric_L2</class>
    <class kind="struct">nanoflann::metric_L2_Simple</class>
    <class kind="struct">nanoflann::metric_SO2</class>
    <class kind="struct">nanoflann::metric_SO3</class>
  </compound>
  <compound kind="group">
    <name>param_grp</name>
    <title>Parameter structs</title>
    <filename>group__param__grp.html</filename>
    <class kind="struct">nanoflann::KDTreeSingleIndexAdaptorParams</class>
    <class kind="struct">nanoflann::SearchParameters</class>
  </compound>
  <compound kind="group">
    <name>memalloc_grp</name>
    <title>Memory allocation</title>
    <filename>group__memalloc__grp.html</filename>
    <class kind="class">nanoflann::PooledAllocator</class>
  </compound>
  <compound kind="group">
    <name>nanoflann_metaprog_grp</name>
    <title>Auxiliary metaprogramming stuff</title>
    <filename>group__nanoflann__metaprog__grp.html</filename>
    <class kind="struct">nanoflann::array_or_vector</class>
    <class kind="struct">nanoflann::array_or_vector&lt;-1, T &gt;</class>
  </compound>
  <compound kind="group">
    <name>kdtrees_grp</name>
    <title>KD-tree classes and adaptors</title>
    <filename>group__kdtrees__grp.html</filename>
    <class kind="class">nanoflann::KDTreeSingleIndexAdaptor</class>
    <class kind="class">nanoflann::KDTreeSingleIndexDynamicAdaptor_</class>
    <class kind="class">nanoflann::KDTreeSingleIndexDynamicAdaptor</class>
    <class kind="struct">nanoflann::KDTreeEigenMatrixAdaptor</class>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>nanoflann C++ API documentation</title>
    <filename>index</filename>
  </compound>
</tagfile>
