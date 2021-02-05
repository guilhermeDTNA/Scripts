#!/bin/bash
pactl load-module module-echo-cancel aec_method=webrtc sink_properties=device.description="Reducao-de-ruido" aec_args="analog_gain_control=0\ digital_gain_control=0"
