#/bin/bash
ADDRESS=c-beam.cbrp3.c-base.org
CHANNEL='c_out/julia'

BSLIST=(
  'smart data'
  'didschitell trensformäischen'
  'mobeil gehddon'
  'artifischel everything'
  'embient ju ex'
  'quantum advertisement'
  'disrapptiff computing'
  'for die printing'
  'analytics for point oh'
  'ahäd of theim development'
  'blocktschäin banking'
  'next dscheneräischen platform'
  'heibritt mainframe'
  'cloud diepleuhments'
  'ädscheil mänädschment'
  'söwerless computing'
  'cyber offenz'
  'enterprise junikörnells'
  'enterprise environments'
  'mobeil first'
  'internet of everything'
  'nätiv advertising'
  'growth hacking'
  'omnitschännel marketing'
  'cyber defense'
)

function sendmsg {
  mosquitto_pub -h $ADDRESS -t $CHANNEL -m $1
}

while [ true ]
do
  for msg in "${BSLIST[@]}" 
  do
	sendmsg "$msg"
	sleep 120
  done
done
