
px4_nuttx_configure(HWCLASS m7 CONFIG nsh ROMFS y ROMFSROOT px4fmu_common)

set(config_uavcan_num_ifaces 2)

set(config_module_list
	#
	# Board support modules
	#
	drivers/airspeed
	drivers/blinkm
	drivers/bma180
	drivers/bmi160
	drivers/bmp280
	drivers/boards
	drivers/bst
	drivers/camera_trigger
	drivers/device
	drivers/ets_airspeed
	drivers/frsky_telemetry
	drivers/gps
	drivers/hmc5883
	drivers/hott
	drivers/hott/hott_sensors
	drivers/hott/hott_telemetry
	drivers/led
	drivers/lis3mdl
	drivers/ll40ls
	drivers/mb12xx
	drivers/mkblctrl
	drivers/mpu6000
	drivers/mpu9250
	drivers/ms4525_airspeed
	drivers/ms5525_airspeed
	drivers/ms5611
	drivers/oreoled
	drivers/pwm_input
	drivers/pwm_out_sim
	drivers/px4flow
	drivers/px4fmu
	drivers/rgbled
	drivers/sdp3x_airspeed
	drivers/sf0x
	drivers/snapdragon_rc_pwm
	drivers/srf02
	drivers/stm32
	drivers/stm32/adc
	drivers/stm32/tone_alarm
	drivers/tap_esc
	drivers/teraranger
	modules/sensors
	drivers/tfmini

	#
	# System commands
	#
	systemcmds/bl_update
	systemcmds/config
	systemcmds/dumpfile
	systemcmds/esc_calib
	systemcmds/hardfault_log
	systemcmds/led_control
	systemcmds/mixer
	systemcmds/motor_ramp
	systemcmds/mtd
	systemcmds/nshterm
	systemcmds/param
	systemcmds/perf
	systemcmds/pwm
	systemcmds/reboot
	systemcmds/sd_bench
	systemcmds/top
	systemcmds/topic_listener
	systemcmds/ver

	#
	# General system control
	#
	modules/commander
	modules/load_mon
	modules/navigator
	modules/mavlink
	modules/gpio_led
	modules/uavcan
	modules/land_detector

	#
	# Estimation modules
	#
	modules/attitude_estimator_q
	modules/position_estimator_inav
	modules/local_position_estimator
	modules/ekf2

	#
	# Vehicle Control
	#
	# modules/segway # XXX Needs GCC 4.7 fix
	modules/fw_pos_control_l1
	modules/fw_att_control
	modules/mc_att_control
	modules/mc_pos_control
	modules/vtol_att_control

	#
	# Logging
	#
	modules/logger
	modules/sdlog2

	#
	# Library modules
	#
	modules/systemlib/param
	modules/systemlib
	modules/uORB
	modules/dataman

	#
	# Libraries
	#
	lib/controllib
	lib/conversion
	lib/DriverFramework/framework
	lib/ecl
	lib/geo
	lib/geo_lookup
	lib/launchdetection
	lib/led
	lib/mathlib
	lib/mathlib/math/filter
	lib/mixer
	lib/rc
	lib/runway_takeoff
	lib/tailsitter_recovery
	lib/terrain_estimation
	lib/version
	platforms/nuttx

	# had to add for cmake, not sure why wasn't in original config
	platforms/common
	platforms/nuttx/px4_layer

	#
	# OBC challenge
	#
	examples/bottle_drop

	#
	# Rover apps
	#
	examples/rover_steering_control

	#
	# Demo apps
	#
	#examples/math_demo
	# Tutorial code from
	# https://px4.io/dev/px4_simple_app
	examples/px4_simple_app

	# Tutorial code from
	# https://px4.io/dev/daemon
	#examples/px4_daemon_app

	# Tutorial code from
	# https://px4.io/dev/debug_values
	#examples/px4_mavlink_debug

	# Tutorial code from
	# https://px4.io/dev/example_fixedwing_control
	#examples/fixedwing_control

	# Hardware test
	#examples/hwtest
)
