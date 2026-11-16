# Formula Student Driverless Operating Procedure

!!! danger "Draft procedure — validation required before use"
    This page is a documentation draft, not an approved safety procedure. Before it is used on the vehicle, every step, role, signal, and expected state **must be checked against the current Formula Student rulebook, the event-specific requirements, scrutineering feedback, and the team's approved safety procedures**. If they disagree, those authoritative sources take precedence.

This runbook describes the intended structure of a Formula Student driverless session using the ROS-based `ubm-fsae` stack. It does not apply to the RoboRacer/AuRoRus platform.

## Document status and ownership

| Item | Status |
| --- | --- |
| Procedure maturity | Draft; requires vehicle validation |
| Platform | Formula Student vehicle and `ubm-fsae` |
| Rulebook revision | To be recorded during review |
| Vehicle configuration | To be recorded during review |
| Procedure owner | To be assigned |
| Last vehicle test | To be recorded |

Assign the operating roles before beginning. At minimum, identify who is responsible for the ASU, the vehicle controls, the Remote Emergency System (RES), the test area, and the final go/no-go decision. Use the role names and minimum staffing required by the current rulebook and team procedures.

## 1. Session briefing and go/no-go decision

Before powering the vehicle:

1. Define the test objective, mission, permitted test area, speed limits, and abort criteria.
2. Confirm that the area is controlled and that all required safety personnel and equipment are present.
3. Review the current rulebook requirements that apply to the planned activity.
4. Assign operating roles and confirm that everyone understands the stop procedure.
5. Record the software version, configuration, and vehicle configuration that will be tested.
6. Stop the procedure if any responsible person reports an unsafe or unexplained condition.

## 2. Vehicle and hardware prerequisites

Use the approved mechanical, electrical, tractive-system, and autonomous-system inspection checklists. The following list is only a documentation reminder and is not a replacement for them:

- ASU installed, secured, powered, and connected to the expected network and sensors;
- VCU connected and configured for the current vehicle;
- modem/router and antennas installed and operational;
- perception sensors connected, clean, and mechanically secured;
- steering and braking actuators inspected using the approved procedure;
- accumulator and low-voltage supplies installed and in an acceptable state;
- RES, emergency braking system, shutdown circuit, TSMS, ASMS, and status indicators checked as required by the current rulebook;
- sufficient storage available for logs and rosbags;
- no unresolved faults from the preceding session.

Do not improvise actuator or tractive-system tests from this page. Use only checks that have been reviewed and approved for the vehicle.

## 3. Confirm the deployed software

Before starting the autonomous stack, record and verify:

- the deployed `ubm-fsae` commit or release;
- the selected mission and configuration files;
- vehicle-specific parameters, including the current VCU network configuration;
- whether workshop or test-only overrides are enabled;
- the expected services, nodes, sensors, and rosbag recording profile.

On the competition vehicle, test-only settings such as `workshop_testing` must have the reviewed value for the planned session. Never infer that a configuration is safe solely because the software starts successfully.

## 4. Connect to the ASU

Follow [Connect to the ASU off the car](connect-to-asu-off-car.md) for the currently documented access methods.

After connecting:

1. Check that the service managing the autonomous stack is in the expected state.
2. Inspect recent service logs for startup failures or crash loops.
3. Verify available disk space, system temperature, and resource usage.
4. Confirm that the loaded configuration matches the session record.
5. Confirm that rosbag recording can write to the intended location.

The exact service names and commands must be checked against the deployed ASU image and `ubm-fsae` version.

## 5. Verify ASU–VCU communication

The VCU communication component is expected to become available before the rest of the autonomous pipeline depends on it. Verify that:

- the configured VCU address matches the vehicle configuration;
- communication is continuous and does not repeatedly reconnect;
- received state is plausible and fresh;
- reported zeros, timeouts, or fallback messages have been interpreted using the current node documentation;
- a communication loss produces the reviewed safe behaviour.

Older configurations used `192.168.1.88` for the VCU. Treat this as a historical default, not as an authoritative address: check the deployed configuration.

## 6. Bring up and inspect the autonomous stack

Start the stack using the currently approved deployment procedure. Before enabling autonomous motion, check at least:

- required ROS nodes and lifecycle states;
- topic rates, timestamps, and coordinate frames;
- sensor health and calibration validity;
- localization and map consistency, where required by the mission;
- mission selection and planner/controller state;
- VCU command and feedback paths;
- diagnostic messages and active faults;
- status indicators and telemetry visible to the operating team;
- active rosbag recording and sufficient remaining storage.

Expected topics, rates, tolerances, and indicator meanings should be moved into mission-specific checklists once they have been validated on the vehicle.

## 7. RES readiness

Power and verify the RES only according to the approved RES documentation and the current rulebook. Confirm that it is online, assigned to the session, understood by its operator, and able to command the reviewed emergency state before autonomous operation begins.

Any LabVIEW or vendor-tool check used by the team must be documented with the current hardware and software version during the procedure review.

## 8. Draft activation sequence

!!! warning "Recheck the exact order and signals"
    The sequence below is inherited from the previous team guide. It must be verified step by step against the current rulebook and the actual vehicle before it is approved. In particular, verify TSMS/ASMS ordering, mission selection, TS activation, ASSI indications, RES behaviour, and every required acknowledgement.

The previously documented sequence was:

1. Turn on the TSMS.
2. Turn on the ASMS.
3. Select the mission on the dashboard.
4. Press the TS ON control.
5. Confirm the driverless-ready state; the previous guide expected a steady orange ASSI indication.
6. Use the RES start control.

During review, replace this list with an unambiguous, role-based sequence containing the expected state after each action and the response to every failed check. Until that review is complete, this section must not be treated as an operating authorization.

## 9. Monitor the run

During operation, the assigned team members should continuously monitor the test area, vehicle state, RES, diagnostics, communications, localization, controller state, and recording status as applicable.

Abort the run whenever an approved stop condition occurs, including unexpected vehicle motion, loss or degradation of a safety-critical signal, loss of required communication, an unexplained software fault, a person or obstacle entering the controlled area, or an instruction from the responsible safety operator.

The exact thresholds and actions belong in the reviewed mission checklist and diagnostics guide.

## 10. Abort and emergency response

Use the rulebook-compliant and team-approved emergency procedure. The RES operator and other assigned roles must know which control to use, what vehicle state to expect, and who may approach the vehicle after a stop.

Do not approach, reset, re-enable, or power-cycle the vehicle until the responsible person has confirmed that the vehicle is in the required safe state and the cause of the abort has been understood sufficiently to continue.

## 11. Normal completion and shutdown

The reviewed shutdown checklist should define the precise order. It should include:

1. bring the mission to its approved stopped state;
2. verify that autonomous commands and actuation are disabled;
3. return the tractive and autonomous systems to the required safe state;
4. stop the software only when doing so cannot interfere with the safety sequence;
5. stop and preserve rosbag recordings and logs;
6. perform the required post-run mechanical and electrical inspection;
7. record faults, configuration changes, anomalies, and the run outcome.

## 12. Procedure validation checklist

Before promoting this page from draft to an approved team procedure:

- [ ] record the Formula Student rulebook version and relevant rule references;
- [ ] review the procedure with the vehicle safety and electrical responsible persons;
- [ ] verify the complete sequence on the current vehicle configuration;
- [ ] document roles and mandatory communication calls;
- [ ] document every expected ASSI and dashboard indication;
- [ ] document RES and emergency-braking checks and outcomes;
- [ ] replace historical IP addresses and service assumptions with verified values;
- [ ] add mission-specific prerequisites, thresholds, and abort criteria;
- [ ] add the approved shutdown and post-run inspection sequence;
- [ ] record reviewers, approval date, and the tested software revision.

Related sections: [FSAE architecture](architecture.md), [calibration](calibration/index.md), [testing](testing/index.md), [diagnostics](diagnostics/index.md), and [rosbags](../../concepts-and-standards/rosbags.md).
