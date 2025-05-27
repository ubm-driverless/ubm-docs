<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>odometry.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/odometry/include/odometry/</path>
    <filename>odometry_8hpp.html</filename>
    <class kind="struct">OdometryState</class>
    <class kind="class">Odometry</class>
  </compound>
  <compound kind="file">
    <name>odometry_node.hpp</name>
    <path>/__w/ubm-docs/ubm-docs/ubm-f1tenth/odometry/include/odometry/</path>
    <filename>odometry__node_8hpp.html</filename>
    <includes id="odometry_8hpp" name="odometry.hpp" local="yes" imported="no">odometry/odometry.hpp</includes>
    <class kind="class">OdometryNode</class>
  </compound>
  <compound kind="class">
    <name>Odometry</name>
    <filename>classOdometry.html</filename>
    <member kind="function" static="yes">
      <type>static OdometryState</type>
      <name>integrate_euler</name>
      <anchorfile>classOdometry.html</anchorfile>
      <anchor>a4da1d086f5b7baea6a23f784752521a8</anchor>
      <arglist>(const OdometryState &amp;state, double dt)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static OdometryState</type>
      <name>integrate_rk2</name>
      <anchorfile>classOdometry.html</anchorfile>
      <anchor>a9ac51aaa706044e7984db41c0bb0ed1c</anchor>
      <arglist>(const OdometryState &amp;state, double dt)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static OdometryState</type>
      <name>integrate_rk4</name>
      <anchorfile>classOdometry.html</anchorfile>
      <anchor>a4fea366566dce79b90231fd50a1a52c5</anchor>
      <arglist>(const OdometryState &amp;state, double dt)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static OdometryState</type>
      <name>kalman_filter</name>
      <anchorfile>classOdometry.html</anchorfile>
      <anchor>a2886b3386b16db7bc1521067778bb8e1</anchor>
      <arglist>(const OdometryState &amp;state, double dt)</arglist>
    </member>
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
  <compound kind="struct">
    <name>OdometryState</name>
    <filename>structOdometryState.html</filename>
    <member kind="function">
      <type></type>
      <name>OdometryState</name>
      <anchorfile>structOdometryState.html</anchorfile>
      <anchor>a308984c135dc60e8531812c14de4fafe</anchor>
      <arglist>(double x_0=0.0, double y_0=0.0, double theta_0=0.0, double v_0=0.0, double omega_0=0.0, const arma::mat p_0=arma::eye(5, 5))</arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>x</name>
      <anchorfile>structOdometryState.html</anchorfile>
      <anchor>a46a22d555d73f8f95c7595c506d239db</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>y</name>
      <anchorfile>structOdometryState.html</anchorfile>
      <anchor>ab753d23b6e67e5adceccd444d3e68e2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>theta</name>
      <anchorfile>structOdometryState.html</anchorfile>
      <anchor>add7b8bea2f13473dc71639f9b18b1028</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>v</name>
      <anchorfile>structOdometryState.html</anchorfile>
      <anchor>aead3bff5532a82a500497c0749f82adb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>double</type>
      <name>omega</name>
      <anchorfile>structOdometryState.html</anchorfile>
      <anchor>a4b3019021dfc5c7e4f640b868a5d680c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>arma::mat</type>
      <name>P</name>
      <anchorfile>structOdometryState.html</anchorfile>
      <anchor>a2b3727078bb764670fdb6522d8ca9272</anchor>
      <arglist></arglist>
    </member>
  </compound>
</tagfile>
