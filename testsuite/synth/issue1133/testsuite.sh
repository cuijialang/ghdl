#! /bin/sh

. ../../testenv.sh

for t in foo; do
  synth $t.vhdl -e $t > syn_$t.vhdl
  analyze syn_$t.vhdl
done

clean

echo "Test successful"
