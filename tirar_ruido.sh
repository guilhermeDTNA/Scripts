#Crie o arquivo:

nano echocancel
echo "#!/usr/bin/env bash" >> echocancel
echo "pactl unload-module module-echo-cancel" >> echocancel
echo "pactl load-module module-echo-cancel aec_method=webrtc source_name=echocancel sink_name=echocancel1" >> echocancel
echo "pacmd set-default-source echocancel" >> echocancel
echo "pacmd set-default-sink echocancel1" >> echocancel


#Instale

sudo install echocancel /usr/local/bin


#Crie o script de execução "reduzir_ruido.sh" e cole o seguinte conteúdo:

#!/bin/sh
pactl load-module module-echo-cancel aec_method=webrtc sink_properties=device.description="Noise_Reduction" aec_args="analog_gain_control=0\ digital_gain_control=0"
