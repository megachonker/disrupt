cp version-0.png bruit.png ; for a in $(seq 128); do  out=bruit.png ;input=bruit.png; err=1 ;size=$((RANDOM%1000*$(du $input|grep "^[0-9]*" -o))) ; head -c $size $input > tmp.script ; head -c $err /dev/random >> tmp.script ; tail -c +$((size+1+err)) $input >> tmp.script ; cp tmp.script $out; cp tmp.script version-$a.png ;done; rm tmp.script
