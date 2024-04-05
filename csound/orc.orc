sr = 96000
kr = 32
nchnls = 2
0dbfs = 1

#include "csound/oplib.csd"

;##############################################################################;

instr pb
        $PART1(p4'p5'p6'p7'p8)
                ibandwidth = 3
        	aS_fil bp8 aS_mono, kfilt, ibandwidth
	$PART2(aS_fil)
        	kEnv expseg 0.0001, 0.006, ivol, 0.004, ivol/2, p3*4/5-0.01, ivol/2, p3/5, 0.0001
	$PART3(aS_bal'kEnv'ialpha)
endin

;------------------------------------------------------------------------------;

instr mpb
        $PART1(p4'p5'p6'p7'p8)
                ibandwidth = 3
        	aS_fil bp8 aS_mono, kfilt, ibandwidth
	$PART2(aS_fil)
  	        kEnv expseg 0.0001, p3/5, ivol/2, p3*4/5-0.01, ivol/2, 0.004, ivol, 0.006, 0.0001
	$PART3(aS_bal'kEnv'ialpha)
endin

;------------------------------------------------------------------------------;

instr pf
	$PART1(p4'p5'p6'p7'p8)
        	aS_fil nbp4 aS_mono, ifl, ifh
	$PART2(aS_fil)
        	kEnv expseg 0.0001, 0.006, ivol, 0.004, ivol*2/3, p3*4/5-0.01, ivol*2/3, p3/5, 0.0001
	$PART3(aS_bal'kEnv'ialpha) 
endin

;------------------------------------------------------------------------------;

instr mpf
	$PART1(p4'p5'p6'p7'p8)
        	aS_fil nbp4 aS_mono, ifl, ifh
	$PART2(aS_fil)
                kEnv expseg 0.0001, p3/5, ivol/2, p3*(4/5-0.01), ivol/2, 0.004*p3, ivol, 0.006*p3, 0.0001
        $PART3(aS_bal'kEnv'ialpha) 
endin