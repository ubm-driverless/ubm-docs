<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>ocv_display.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/repos/ubm-fsae/zed2_driver/include/</path>
    <filename>ocv__display_8hpp.html</filename>
    <member kind="function">
      <type>void</type>
      <name>showImage</name>
      <anchorfile>ocv__display_8hpp.html</anchorfile>
      <anchor>a35f9e533cc3d146bad0a5e81b11438b6</anchor>
      <arglist>(std::string name, cv::UMat &amp;img, sl_oc::video::RESOLUTION res, bool change_name=true, std::string info=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>showImage</name>
      <anchorfile>ocv__display_8hpp.html</anchorfile>
      <anchor>a0d9b42e65a019bc9656d7b7975bd34fa</anchor>
      <arglist>(std::string name, cv::Mat &amp;img, sl_oc::video::RESOLUTION res, bool change_name=true, std::string info=&quot;&quot;)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sl_oc::sensors::usb::_ov580_cmd_struct</name>
    <filename>structsl__oc_1_1sensors_1_1usb_1_1__ov580__cmd__struct.html</filename>
    <member kind="variable">
      <type>uint8_t</type>
      <name>struct_id</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1__ov580__cmd__struct.html</anchorfile>
      <anchor>a6b90984fb7f9edacaf2b18e4eec8d58d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>cmd</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1__ov580__cmd__struct.html</anchorfile>
      <anchor>a5c3905bb28c0525db71714e21be94c96</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>info</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1__ov580__cmd__struct.html</anchorfile>
      <anchor>a8c48dec4a9b78238ff63eb425b5729f4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::ConfManager</name>
    <filename>classsl__oc_1_1tools_1_1ConfManager.html</filename>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::CSimpleIniTempl::Converter</name>
    <filename>classsl__oc_1_1tools_1_1CSimpleIniTempl_1_1Converter.html</filename>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::CSimpleIniTempl</name>
    <filename>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <class kind="class">sl_oc::tools::CSimpleIniTempl::Converter</class>
    <class kind="struct">sl_oc::tools::CSimpleIniTempl::Entry</class>
    <class kind="class">sl_oc::tools::CSimpleIniTempl::FileWriter</class>
    <class kind="class">sl_oc::tools::CSimpleIniTempl::OutputWriter</class>
    <class kind="class">sl_oc::tools::CSimpleIniTempl::StringWriter</class>
    <member kind="typedef">
      <type>std::multimap&lt; Entry, const SI_CHAR *, typename Entry::KeyOrder &gt;</type>
      <name>TKeyVal</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ad7a2f266f8257f3c35b0d325c7167906</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::map&lt; Entry, TKeyVal, typename Entry::KeyOrder &gt;</type>
      <name>TSection</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a7771f2ed1ed51dd679ea06abb784b2df</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::list&lt; Entry &gt;</type>
      <name>TNamesDepend</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ac8ec80f322536df1bd692c4a9032440f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>CSimpleIniTempl</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9fc2a71b3a189f298f54f87483cf9cb0</anchor>
      <arglist>(bool a_bIsUtf8=false, bool a_bMultiKey=false, bool a_bMultiLine=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~CSimpleIniTempl</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9a5646ac0cdff27d200452b39a2ee840</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Reset</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a196d3a633d271853c43370ba850a5d8f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsEmpty</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a07177ed6aa10d6db56e5fdaf7882f940</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>LoadFile</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a91219877c8ea7193677d87db8f9f349b</anchor>
      <arglist>(const char *a_pszFile)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>LoadFile</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9d2e725ab64bd0bafc3913a3e32c9728</anchor>
      <arglist>(FILE *a_fpFile)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>LoadData</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a14d429de923ad77ea9bdd9450a385936</anchor>
      <arglist>(const std::string &amp;a_strData)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>LoadData</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a88a03e85126aba31c10fb6fdd8703025</anchor>
      <arglist>(const char *a_pData, size_t a_uDataLen)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SaveFile</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a90861cd54b387cd4f2752c864743b762</anchor>
      <arglist>(const char *a_pszFile, bool a_bAddSignature=true) const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SaveFile</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a77e3801856f53ccce3e1dec39633a04f</anchor>
      <arglist>(FILE *a_pFile, bool a_bAddSignature=false) const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>Save</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a5e6b051be520d9a0695b86d65bf30024</anchor>
      <arglist>(OutputWriter &amp;a_oOutput, bool a_bAddSignature=false) const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>Save</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>abf18209ce2792aa081e6a577a96ce263</anchor>
      <arglist>(std::string &amp;a_sBuffer, bool a_bAddSignature=false) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>GetAllSections</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a7cfcfdcb9009e8ea395baebba144e054</anchor>
      <arglist>(TNamesDepend &amp;a_names) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetAllKeys</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>af935fe34a6bc6c7a4b103f4aebe5ab9b</anchor>
      <arglist>(const SI_CHAR *a_pSection, TNamesDepend &amp;a_names) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetAllValues</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a478516021b663c8eb512d0a77e41415d</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, TNamesDepend &amp;a_values) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>GetSectionSize</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a518325f19a0a68f1861999ad85f1bc65</anchor>
      <arglist>(const SI_CHAR *a_pSection) const</arglist>
    </member>
    <member kind="function">
      <type>const TKeyVal *</type>
      <name>GetSection</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a26e27d0a75228252ac7d27045eeb1bbb</anchor>
      <arglist>(const SI_CHAR *a_pSection) const</arglist>
    </member>
    <member kind="function">
      <type>const SI_CHAR *</type>
      <name>GetValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a27fd5acbe5dfe9c8fc1f95686dfde658</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, const SI_CHAR *a_pDefault=NULL, bool *a_pHasMultiple=NULL) const</arglist>
    </member>
    <member kind="function">
      <type>long</type>
      <name>GetLongValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a6f6cab0e67fdfe42a98ea34268242a6e</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, long a_nDefault=0, bool *a_pHasMultiple=NULL) const</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>GetDoubleValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ac32ceab13fc5119d734665db4f63c6fa</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, double a_nDefault=0, bool *a_pHasMultiple=NULL) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetBoolValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a34dcdeae3fc952a46c31f29dfbc6adbe</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, bool a_bDefault=false, bool *a_pHasMultiple=NULL) const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SetValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a28e5e0c156052b6299e3f0c6d32b9b06</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, const SI_CHAR *a_pValue, const SI_CHAR *a_pComment=NULL, bool a_bForceReplace=false)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SetLongValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a1d944787bd08f707e1ceeb16eabbe51d</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, long a_nValue, const SI_CHAR *a_pComment=NULL, bool a_bUseHex=false, bool a_bForceReplace=false)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SetDoubleValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aa785a16cae924fe98a839ea86421a916</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, double a_nValue, const SI_CHAR *a_pComment=NULL, bool a_bForceReplace=false)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SetBoolValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ad87c5f3896cd0272b51dd8b0a209ad94</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, bool a_bValue, const SI_CHAR *a_pComment=NULL, bool a_bForceReplace=false)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>Delete</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>abad8acfee824049e8865cff8939c7319</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, bool a_bRemoveEmpty=false)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>DeleteValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a157eb08fac4a9015f0416778386fa5bb</anchor>
      <arglist>(const SI_CHAR *a_pSection, const SI_CHAR *a_pKey, const SI_CHAR *a_pValue, bool a_bRemoveEmpty=false)</arglist>
    </member>
    <member kind="function">
      <type>Converter</type>
      <name>GetConverter</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a384f0320e8b8553dd563cd12bd764293</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetUnicode</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9e0453e6cdc5dcba6b8adbc57a208340</anchor>
      <arglist>(bool a_bIsUtf8=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsUnicode</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ad38534a2b3ff37fbf8d7a40482e86655</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMultiKey</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aff2eaa953a3df9a6718a421a920abfe4</anchor>
      <arglist>(bool a_bAllowMultiKey=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsMultiKey</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>af2492c7ec1bda909e4990c5bfeffeed8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMultiLine</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a2d8f0815df7b350691b8a94ba87503e9</anchor>
      <arglist>(bool a_bAllowMultiLine=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsMultiLine</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a5e0f080f3399308da4a060adbdf601ce</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetSpaces</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a201b694a66cf25f6ec045e6560e84af5</anchor>
      <arglist>(bool a_bSpaces=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>UsingSpaces</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aeb954de66b166f10a682158d41265b86</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetUnicode</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9e0453e6cdc5dcba6b8adbc57a208340</anchor>
      <arglist>(bool a_bIsUtf8=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsUnicode</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ad38534a2b3ff37fbf8d7a40482e86655</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMultiKey</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aff2eaa953a3df9a6718a421a920abfe4</anchor>
      <arglist>(bool a_bAllowMultiKey=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsMultiKey</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>af2492c7ec1bda909e4990c5bfeffeed8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMultiLine</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a2d8f0815df7b350691b8a94ba87503e9</anchor>
      <arglist>(bool a_bAllowMultiLine=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsMultiLine</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a5e0f080f3399308da4a060adbdf601ce</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetSpaces</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a201b694a66cf25f6ec045e6560e84af5</anchor>
      <arglist>(bool a_bSpaces=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>UsingSpaces</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aeb954de66b166f10a682158d41265b86</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>CSimpleIniTempl&lt; char, SI_NoCase&lt; char &gt;, SI_ConvertA&lt; char &gt; &gt;</name>
    <filename>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</filename>
    <member kind="typedef">
      <type>std::multimap&lt; Entry, const char *, typename Entry::KeyOrder &gt;</type>
      <name>TKeyVal</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ad7a2f266f8257f3c35b0d325c7167906</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::map&lt; Entry, TKeyVal, typename Entry::KeyOrder &gt;</type>
      <name>TSection</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a7771f2ed1ed51dd679ea06abb784b2df</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::list&lt; Entry &gt;</type>
      <name>TNamesDepend</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ac8ec80f322536df1bd692c4a9032440f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>CSimpleIniTempl</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9fc2a71b3a189f298f54f87483cf9cb0</anchor>
      <arglist>(bool a_bIsUtf8=false, bool a_bMultiKey=false, bool a_bMultiLine=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~CSimpleIniTempl</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9a5646ac0cdff27d200452b39a2ee840</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Reset</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a196d3a633d271853c43370ba850a5d8f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsEmpty</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a07177ed6aa10d6db56e5fdaf7882f940</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>LoadFile</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a91219877c8ea7193677d87db8f9f349b</anchor>
      <arglist>(const char *a_pszFile)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>LoadFile</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9d2e725ab64bd0bafc3913a3e32c9728</anchor>
      <arglist>(FILE *a_fpFile)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>LoadData</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a14d429de923ad77ea9bdd9450a385936</anchor>
      <arglist>(const std::string &amp;a_strData)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>LoadData</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a88a03e85126aba31c10fb6fdd8703025</anchor>
      <arglist>(const char *a_pData, size_t a_uDataLen)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SaveFile</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a90861cd54b387cd4f2752c864743b762</anchor>
      <arglist>(const char *a_pszFile, bool a_bAddSignature=true) const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SaveFile</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a77e3801856f53ccce3e1dec39633a04f</anchor>
      <arglist>(FILE *a_pFile, bool a_bAddSignature=false) const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>Save</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a5e6b051be520d9a0695b86d65bf30024</anchor>
      <arglist>(OutputWriter &amp;a_oOutput, bool a_bAddSignature=false) const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>Save</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>abf18209ce2792aa081e6a577a96ce263</anchor>
      <arglist>(std::string &amp;a_sBuffer, bool a_bAddSignature=false) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>GetAllSections</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a7cfcfdcb9009e8ea395baebba144e054</anchor>
      <arglist>(TNamesDepend &amp;a_names) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetAllKeys</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>af935fe34a6bc6c7a4b103f4aebe5ab9b</anchor>
      <arglist>(const char *a_pSection, TNamesDepend &amp;a_names) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetAllValues</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a478516021b663c8eb512d0a77e41415d</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, TNamesDepend &amp;a_values) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>GetSectionSize</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a518325f19a0a68f1861999ad85f1bc65</anchor>
      <arglist>(const char *a_pSection) const</arglist>
    </member>
    <member kind="function">
      <type>const TKeyVal *</type>
      <name>GetSection</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a26e27d0a75228252ac7d27045eeb1bbb</anchor>
      <arglist>(const char *a_pSection) const</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>GetValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a27fd5acbe5dfe9c8fc1f95686dfde658</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, const char *a_pDefault=NULL, bool *a_pHasMultiple=NULL) const</arglist>
    </member>
    <member kind="function">
      <type>long</type>
      <name>GetLongValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a6f6cab0e67fdfe42a98ea34268242a6e</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, long a_nDefault=0, bool *a_pHasMultiple=NULL) const</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>GetDoubleValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ac32ceab13fc5119d734665db4f63c6fa</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, double a_nDefault=0, bool *a_pHasMultiple=NULL) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>GetBoolValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a34dcdeae3fc952a46c31f29dfbc6adbe</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, bool a_bDefault=false, bool *a_pHasMultiple=NULL) const</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SetValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a28e5e0c156052b6299e3f0c6d32b9b06</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, const char *a_pValue, const char *a_pComment=NULL, bool a_bForceReplace=false)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SetLongValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a1d944787bd08f707e1ceeb16eabbe51d</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, long a_nValue, const char *a_pComment=NULL, bool a_bUseHex=false, bool a_bForceReplace=false)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SetDoubleValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aa785a16cae924fe98a839ea86421a916</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, double a_nValue, const char *a_pComment=NULL, bool a_bForceReplace=false)</arglist>
    </member>
    <member kind="function">
      <type>SI_Error</type>
      <name>SetBoolValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ad87c5f3896cd0272b51dd8b0a209ad94</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, bool a_bValue, const char *a_pComment=NULL, bool a_bForceReplace=false)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>Delete</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>abad8acfee824049e8865cff8939c7319</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, bool a_bRemoveEmpty=false)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>DeleteValue</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a157eb08fac4a9015f0416778386fa5bb</anchor>
      <arglist>(const char *a_pSection, const char *a_pKey, const char *a_pValue, bool a_bRemoveEmpty=false)</arglist>
    </member>
    <member kind="function">
      <type>Converter</type>
      <name>GetConverter</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a384f0320e8b8553dd563cd12bd764293</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetUnicode</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9e0453e6cdc5dcba6b8adbc57a208340</anchor>
      <arglist>(bool a_bIsUtf8=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsUnicode</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ad38534a2b3ff37fbf8d7a40482e86655</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMultiKey</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aff2eaa953a3df9a6718a421a920abfe4</anchor>
      <arglist>(bool a_bAllowMultiKey=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsMultiKey</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>af2492c7ec1bda909e4990c5bfeffeed8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMultiLine</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a2d8f0815df7b350691b8a94ba87503e9</anchor>
      <arglist>(bool a_bAllowMultiLine=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsMultiLine</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a5e0f080f3399308da4a060adbdf601ce</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetSpaces</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a201b694a66cf25f6ec045e6560e84af5</anchor>
      <arglist>(bool a_bSpaces=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>UsingSpaces</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aeb954de66b166f10a682158d41265b86</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetUnicode</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a9e0453e6cdc5dcba6b8adbc57a208340</anchor>
      <arglist>(bool a_bIsUtf8=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsUnicode</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>ad38534a2b3ff37fbf8d7a40482e86655</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMultiKey</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aff2eaa953a3df9a6718a421a920abfe4</anchor>
      <arglist>(bool a_bAllowMultiKey=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsMultiKey</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>af2492c7ec1bda909e4990c5bfeffeed8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetMultiLine</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a2d8f0815df7b350691b8a94ba87503e9</anchor>
      <arglist>(bool a_bAllowMultiLine=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>IsMultiLine</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a5e0f080f3399308da4a060adbdf601ce</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetSpaces</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>a201b694a66cf25f6ec045e6560e84af5</anchor>
      <arglist>(bool a_bSpaces=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>UsingSpaces</name>
      <anchorfile>classsl__oc_1_1tools_1_1CSimpleIniTempl.html</anchorfile>
      <anchor>aeb954de66b166f10a682158d41265b86</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sl_oc::tools::CSimpleIniTempl::Entry</name>
    <filename>structsl__oc_1_1tools_1_1CSimpleIniTempl_1_1Entry.html</filename>
    <class kind="struct">sl_oc::tools::CSimpleIniTempl::Entry::KeyOrder</class>
    <class kind="struct">sl_oc::tools::CSimpleIniTempl::Entry::LoadOrder</class>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::CSimpleIniTempl::FileWriter</name>
    <filename>classsl__oc_1_1tools_1_1CSimpleIniTempl_1_1FileWriter.html</filename>
    <base>sl_oc::tools::CSimpleIniTempl::OutputWriter</base>
  </compound>
  <compound kind="struct">
    <name>sl_oc::tools::CSimpleIniTempl::Entry::KeyOrder</name>
    <filename>structsl__oc_1_1tools_1_1CSimpleIniTempl_1_1Entry_1_1KeyOrder.html</filename>
  </compound>
  <compound kind="struct">
    <name>sl_oc::tools::CSimpleIniTempl::Entry::LoadOrder</name>
    <filename>structsl__oc_1_1tools_1_1CSimpleIniTempl_1_1Entry_1_1LoadOrder.html</filename>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::CSimpleIniTempl::OutputWriter</name>
    <filename>classsl__oc_1_1tools_1_1CSimpleIniTempl_1_1OutputWriter.html</filename>
  </compound>
  <compound kind="struct">
    <name>sl_oc::sensors::usb::RawData</name>
    <filename>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</filename>
    <member kind="variable">
      <type>uint8_t</type>
      <name>struct_id</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a9103a4028cc3c3b298ff667471242608</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>imu_not_valid</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a784598088e5cfe48b791167d835c733e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>timestamp</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a2ab85da017267b0da23ed31886f0c01f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>gX</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a3240a26f4552676002949a54cfc3d9c0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>gY</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>accc5da02337d09be739390f38f46b722</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>gZ</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>abe9d62492e5ff8e347a40fe10e75c2f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>aX</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a13b571682330677474d7a9235c60a739</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>aY</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a5c7943d8a96867c68b889f9f7e28d294</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>aZ</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>abd590226b81abb5c7c5412824faea94a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>frame_sync</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a85ec4b8e2be364a844f2d6b8a4e61280</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>sync_capabilities</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a6c5904ee35df28b1a4471232bdfd80f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>frame_sync_count</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a658193682e316f1fc9fff0cc9515feb1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>imu_temp</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a058dbb72748d5656e9ef14991dad70da</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>mag_valid</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>af02a1836ac65384be9c5e1968492a81a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>mX</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>aabb1fbcd925d08b849f08c462e48ba6a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>mY</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>afaee620d390f5e0a630ce147472cf0d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>mZ</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a994aa4476eb0a61f596c454dd8f18366</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>camera_moving</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a4adc9e353b1bdb2aacc2e1a9ee071265</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>camera_moving_count</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a8ef8de6cee79467a80f3243c10f553d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>camera_falling</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>ad59c40282cca99421834b587604b0153</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>camera_falling_count</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>aac03f49bffb88c118097ecb9191edc15</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>env_valid</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>ad971e425584c51174b80952647ba0f4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>temp</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a0b5b7e6028be463a9406d0804335cdd4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>press</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a62ef3bf9724c16d1844ef70a99a85150</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>humid</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a6ef5538e32ecb16d797376770a5d0db6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>temp_cam_left</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a38a7018fb1cde3de87997e8b5908bb01</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int16_t</type>
      <name>temp_cam_right</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1RawData.html</anchorfile>
      <anchor>a6bf470b906573654f3b261fae2ae21fb</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sl_oc::video::Resolution</name>
    <filename>structsl__oc_1_1video_1_1Resolution.html</filename>
    <member kind="function">
      <type></type>
      <name>Resolution</name>
      <anchorfile>structsl__oc_1_1video_1_1Resolution.html</anchorfile>
      <anchor>a0a3843476eb449810e36e242ff16b72a</anchor>
      <arglist>(size_t w_=0, size_t h_=0)</arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>width</name>
      <anchorfile>structsl__oc_1_1video_1_1Resolution.html</anchorfile>
      <anchor>ab12ce7eb561d6ff96124133ee37cd2b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>height</name>
      <anchorfile>structsl__oc_1_1video_1_1Resolution.html</anchorfile>
      <anchor>aafb8c2f50d7d71aa76baf72cefd09d1b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::SI_ConvertA</name>
    <filename>classsl__oc_1_1tools_1_1SI__ConvertA.html</filename>
    <templarg></templarg>
    <member kind="function">
      <type>size_t</type>
      <name>SizeFromStore</name>
      <anchorfile>classsl__oc_1_1tools_1_1SI__ConvertA.html</anchorfile>
      <anchor>addc571111bb92ef1a757583e138a4374</anchor>
      <arglist>(const char *a_pInputData, size_t a_uInputDataLen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ConvertFromStore</name>
      <anchorfile>classsl__oc_1_1tools_1_1SI__ConvertA.html</anchorfile>
      <anchor>a88b3a06eb4bb6aa8777aaf91046cdd9b</anchor>
      <arglist>(const char *a_pInputData, size_t a_uInputDataLen, SI_CHAR *a_pOutputData, size_t a_uOutputDataSize)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>SizeToStore</name>
      <anchorfile>classsl__oc_1_1tools_1_1SI__ConvertA.html</anchorfile>
      <anchor>add1ea8512463b958f4190c635f1c49ca</anchor>
      <arglist>(const SI_CHAR *a_pInputData)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ConvertToStore</name>
      <anchorfile>classsl__oc_1_1tools_1_1SI__ConvertA.html</anchorfile>
      <anchor>a573d31770d4db6904361128f49a6b26f</anchor>
      <arglist>(const SI_CHAR *a_pInputData, char *a_pOutputData, size_t a_uOutputDataSize)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::SI_ConvertW</name>
    <filename>classsl__oc_1_1tools_1_1SI__ConvertW.html</filename>
    <templarg></templarg>
    <member kind="function">
      <type>size_t</type>
      <name>SizeFromStore</name>
      <anchorfile>classsl__oc_1_1tools_1_1SI__ConvertW.html</anchorfile>
      <anchor>a26174c3f2824576bb7c8865ad231b0d7</anchor>
      <arglist>(const char *a_pInputData, size_t a_uInputDataLen)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ConvertFromStore</name>
      <anchorfile>classsl__oc_1_1tools_1_1SI__ConvertW.html</anchorfile>
      <anchor>a21657dc76e2641ec1b93c763ea0c91de</anchor>
      <arglist>(const char *a_pInputData, size_t a_uInputDataLen, SI_CHAR *a_pOutputData, size_t a_uOutputDataSize)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>SizeToStore</name>
      <anchorfile>classsl__oc_1_1tools_1_1SI__ConvertW.html</anchorfile>
      <anchor>ac04e62f55778776626029c3de638cb2f</anchor>
      <arglist>(const SI_CHAR *a_pInputData)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ConvertToStore</name>
      <anchorfile>classsl__oc_1_1tools_1_1SI__ConvertW.html</anchorfile>
      <anchor>ab6aec6496f23f47117ae52cd614c0d21</anchor>
      <arglist>(const SI_CHAR *a_pInputData, char *a_pOutputData, size_t a_uOutputDataSize)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sl_oc::tools::SI_GenericCase</name>
    <filename>structsl__oc_1_1tools_1_1SI__GenericCase.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>sl_oc::tools::SI_GenericNoCase</name>
    <filename>structsl__oc_1_1tools_1_1SI__GenericNoCase.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::StereoSgbmPar</name>
    <filename>classsl__oc_1_1tools_1_1StereoSgbmPar.html</filename>
    <member kind="function">
      <type></type>
      <name>StereoSgbmPar</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>aa65405946a82812a2e3ff53383f5099c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>load</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a6ae5104d33d44bf74150ce1fae60353e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>save</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a67ba0610706d01554046cc81eec38e8b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDefaultValues</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a57d6a62f6cb05020255b2011205dbc9c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>print</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>acef4eaf9d19a99d372b651280668e541</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>blockSize</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>aa7d3ef84e3fc7072c76c2d1bf60bcf2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>minDisparity</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a47e39722f042eb7c1498fca47084a708</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>numDisparities</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a820c8202f76be0c1b331fbc1ad191173</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>mode</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a8f2720be5b8bfbda04bf5940c5ac6512</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>P1</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a03dfe8f51eef2a9b3f5d7554083ecc8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>P2</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>af20a2c2c64e6c17cae349ec7830bdc26</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>disp12MaxDiff</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a05ecc80b15ed462a44954cb388a7b809</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>preFilterCap</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>ad9fe928df5078a66415374cfc2bad989</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>uniquenessRatio</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a305f8d7b70e3e6f320c2ce0b315a3ae6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>speckleWindowSize</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a1f30bba144157391d44bcec8cfbbcea2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>speckleRange</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>aa0e78c35bc4cfee3561e0312a7c8b9c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>minDepth_mm</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>a46c3af7e5fe0625cddc3dcf7a3315dc8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>maxDepth_mm</name>
      <anchorfile>classsl__oc_1_1tools_1_1StereoSgbmPar.html</anchorfile>
      <anchor>ac7583f2a31dad1def370a0c6b66f3a84</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::StopWatch</name>
    <filename>classsl__oc_1_1tools_1_1StopWatch.html</filename>
    <member kind="function">
      <type></type>
      <name>StopWatch</name>
      <anchorfile>classsl__oc_1_1tools_1_1StopWatch.html</anchorfile>
      <anchor>ac5b9348483a57ac79bcbd076aee7fd8e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tic</name>
      <anchorfile>classsl__oc_1_1tools_1_1StopWatch.html</anchorfile>
      <anchor>af62e9a532e48e61c51a980d8e76045a1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>toc</name>
      <anchorfile>classsl__oc_1_1tools_1_1StopWatch.html</anchorfile>
      <anchor>a913ff2996256810c57eabe436665c630</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sl_oc::sensors::usb::StreamStatus</name>
    <filename>structsl__oc_1_1sensors_1_1usb_1_1StreamStatus.html</filename>
    <member kind="variable">
      <type>uint8_t</type>
      <name>struct_id</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1StreamStatus.html</anchorfile>
      <anchor>adb55ce14e30f25d0b6eb2e42735a0433</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>stream_status</name>
      <anchorfile>structsl__oc_1_1sensors_1_1usb_1_1StreamStatus.html</anchorfile>
      <anchor>a3ebd72a18bff46f9e9f227a4e8adeaf0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sl_oc::tools::CSimpleIniTempl::StringWriter</name>
    <filename>classsl__oc_1_1tools_1_1CSimpleIniTempl_1_1StringWriter.html</filename>
    <base>sl_oc::tools::CSimpleIniTempl::OutputWriter</base>
  </compound>
  <compound kind="struct">
    <name>sl_oc::video::UVCBuffer</name>
    <filename>structsl__oc_1_1video_1_1UVCBuffer.html</filename>
    <member kind="variable">
      <type>void *</type>
      <name>start</name>
      <anchorfile>structsl__oc_1_1video_1_1UVCBuffer.html</anchorfile>
      <anchor>ae31d34742e908f0feac3775ca02bfd82</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>length</name>
      <anchorfile>structsl__oc_1_1video_1_1UVCBuffer.html</anchorfile>
      <anchor>ad4656f6218f7c1e019aa10d788cfcf12</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sl_oc::video::VideoParams</name>
    <filename>structsl__oc_1_1video_1_1VideoParams.html</filename>
    <member kind="function">
      <type></type>
      <name>VideoParams</name>
      <anchorfile>structsl__oc_1_1video_1_1VideoParams.html</anchorfile>
      <anchor>adc4654229dce636b2d2d6a471a841d10</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>RESOLUTION</type>
      <name>res</name>
      <anchorfile>structsl__oc_1_1video_1_1VideoParams.html</anchorfile>
      <anchor>a1a3755ec19e8b2b079e62578f87b9384</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>FPS</type>
      <name>fps</name>
      <anchorfile>structsl__oc_1_1video_1_1VideoParams.html</anchorfile>
      <anchor>a26ec82468284b8311039e7075e5e7d5e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>verbose</name>
      <anchorfile>structsl__oc_1_1video_1_1VideoParams.html</anchorfile>
      <anchor>a6152f12db5f03c917aa9ca3017cb2246</anchor>
      <arglist></arglist>
    </member>
  </compound>
</tagfile>
