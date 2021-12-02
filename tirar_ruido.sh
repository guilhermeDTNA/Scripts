#Crie o arquivo:

nano echocancelcom

#Cole o seguinte conteúdo em seu interior:

#!/usr/bin/env bash
pactl unload-module module-echo-cancel
pactl load-module module-echo-cancel aec_method=webrtc source_name=echocancel sink_name=echocancel1
pacmd set-default-source echocancel
pacmd set-default-sink echocancel1

#Instale

sudo install echocancel /usr/local/bin

#Crie o script de execução "reduzir_ruido.sh" e cole o seguinte conteúdo:

#!/bin/sh
pactl load-module module-echo-cancel aec_method=webrtc sink_properties=device.description="Noise_Reduction" aec_args="analog_gain_control=0\ digital_gain_control=0"
