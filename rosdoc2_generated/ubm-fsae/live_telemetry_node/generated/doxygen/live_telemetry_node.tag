<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="class">
    <name>live_telemetry::CameraDataHandler</name>
    <filename>classlive__telemetry_1_1CameraDataHandler.html</filename>
    <base>live_telemetry::TopicHandler</base>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classlive__telemetry_1_1CameraDataHandler.html</anchorfile>
      <anchor>aa87f7286c77244eb378f1bc310a3f0be</anchor>
      <arglist>() const override</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>live_telemetry::Downsampler</name>
    <filename>classlive__telemetry_1_1Downsampler.html</filename>
    <templarg></templarg>
    <base>live_telemetry::IDataProcessor</base>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::DownsamplerConfig</name>
    <filename>structlive__telemetry_1_1DownsamplerConfig.html</filename>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::ExplicitTopicConfig</name>
    <filename>structlive__telemetry_1_1ExplicitTopicConfig.html</filename>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::FoxgloveConfig</name>
    <filename>structlive__telemetry_1_1FoxgloveConfig.html</filename>
  </compound>
  <compound kind="class">
    <name>live_telemetry::FoxgloveLogger</name>
    <filename>classlive__telemetry_1_1FoxgloveLogger.html</filename>
    <member kind="function">
      <type>void</type>
      <name>publishPointCloud</name>
      <anchorfile>classlive__telemetry_1_1FoxgloveLogger.html</anchorfile>
      <anchor>af68dc43bbd542b81ff2f900ccf7e26b9</anchor>
      <arglist>(const std::string &amp;topic_name, const std::string &amp;serialized_proto)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>live_telemetry::Gateway</name>
    <filename>classlive__telemetry_1_1Gateway.html</filename>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::GatewayConfig</name>
    <filename>structlive__telemetry_1_1GatewayConfig.html</filename>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::HandlerConfig</name>
    <filename>structlive__telemetry_1_1HandlerConfig.html</filename>
  </compound>
  <compound kind="class">
    <name>live_telemetry::HandlerRegistry</name>
    <filename>classlive__telemetry_1_1HandlerRegistry.html</filename>
    <member kind="function">
      <type>void</type>
      <name>registerHandler</name>
      <anchorfile>classlive__telemetry_1_1HandlerRegistry.html</anchorfile>
      <anchor>a81975495ec0cede1c702de56a525dba6</anchor>
      <arglist>(const std::string &amp;type_name, HandlerFactory factory)</arglist>
    </member>
    <member kind="function">
      <type>std::unique_ptr&lt; TopicHandler &gt;</type>
      <name>createHandler</name>
      <anchorfile>classlive__telemetry_1_1HandlerRegistry.html</anchorfile>
      <anchor>a972988438992232f48b07aa4cc05fd79</anchor>
      <arglist>(const std::string &amp;type_name, rclcpp::Node *node, const HandlerConfig &amp;config, FoxgloveLogger *logger)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasHandler</name>
      <anchorfile>classlive__telemetry_1_1HandlerRegistry.html</anchorfile>
      <anchor>ab07f83ecc695f558bbafb98d21bb62a6</anchor>
      <arglist>(const std::string &amp;type_name) const</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; std::string &gt;</type>
      <name>getRegisteredTypes</name>
      <anchorfile>classlive__telemetry_1_1HandlerRegistry.html</anchorfile>
      <anchor>ad2e440072a9c7471f9d3aefcae8691c5</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static HandlerRegistry &amp;</type>
      <name>instance</name>
      <anchorfile>classlive__telemetry_1_1HandlerRegistry.html</anchorfile>
      <anchor>abe4b0bd948b942999d8617f53ecea522</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::HandlerStats</name>
    <filename>structlive__telemetry_1_1HandlerStats.html</filename>
  </compound>
  <compound kind="class">
    <name>live_telemetry::IDataProcessor</name>
    <filename>classlive__telemetry_1_1IDataProcessor.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::ImageScaleConfig</name>
    <filename>structlive__telemetry_1_1ImageScaleConfig.html</filename>
  </compound>
  <compound kind="class">
    <name>live_telemetry::ImageScaler</name>
    <filename>classlive__telemetry_1_1ImageScaler.html</filename>
  </compound>
  <compound kind="class">
    <name>live_telemetry::JpegCompressor</name>
    <filename>classlive__telemetry_1_1JpegCompressor.html</filename>
  </compound>
  <compound kind="class">
    <name>live_telemetry::LiveTelemetryNode</name>
    <filename>classlive__telemetry_1_1LiveTelemetryNode.html</filename>
  </compound>
  <compound kind="class">
    <name>live_telemetry::MessageDefinitionProvider</name>
    <filename>classlive__telemetry_1_1MessageDefinitionProvider.html</filename>
    <member kind="function">
      <type>std::string</type>
      <name>getFullDefinition</name>
      <anchorfile>classlive__telemetry_1_1MessageDefinitionProvider.html</anchorfile>
      <anchor>a95ccb62607e3c6d9e6fecc8533c4dff5</anchor>
      <arglist>(const std::string &amp;type_name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>live_telemetry::PointCloudHandler</name>
    <filename>classlive__telemetry_1_1PointCloudHandler.html</filename>
    <base>live_telemetry::TopicHandler</base>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classlive__telemetry_1_1PointCloudHandler.html</anchorfile>
      <anchor>a440d7995abb4f2a88ffeb25394aa7572</anchor>
      <arglist>() const override</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::PublishStats</name>
    <filename>structlive__telemetry_1_1PublishStats.html</filename>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::TelemetryConfig</name>
    <filename>structlive__telemetry_1_1TelemetryConfig.html</filename>
  </compound>
  <compound kind="class">
    <name>live_telemetry::TopicHandler</name>
    <filename>classlive__telemetry_1_1TopicHandler.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual std::string</type>
      <name>getName</name>
      <anchorfile>classlive__telemetry_1_1TopicHandler.html</anchorfile>
      <anchor>aa65adc11e497610bc4907516645cfd01</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getInputTopic</name>
      <anchorfile>classlive__telemetry_1_1TopicHandler.html</anchorfile>
      <anchor>a3d65dcdb9e8aeafff1aa31127187c3cc</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>HandlerStats</type>
      <name>getStats</name>
      <anchorfile>classlive__telemetry_1_1TopicHandler.html</anchorfile>
      <anchor>a6b8da113fb9c27d9ab56f74a99c3338a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isActive</name>
      <anchorfile>classlive__telemetry_1_1TopicHandler.html</anchorfile>
      <anchor>a8b17ee21369c866a4ea64e7f7311c0e4</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>shouldForward</name>
      <anchorfile>classlive__telemetry_1_1TopicHandler.html</anchorfile>
      <anchor>a9197075b1a5012036ae148a76da39b89</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>logVerbose</name>
      <anchorfile>classlive__telemetry_1_1TopicHandler.html</anchorfile>
      <anchor>ac5f3787aa080dfae5e28bacc3652ad6f</anchor>
      <arglist>(const std::string &amp;message) const</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::TopicHandlerEntry</name>
    <filename>structlive__telemetry_1_1TopicHandlerEntry.html</filename>
  </compound>
  <compound kind="struct">
    <name>live_telemetry::TopicSubscription</name>
    <filename>structlive__telemetry_1_1TopicSubscription.html</filename>
  </compound>
</tagfile>
