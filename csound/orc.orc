sr = 96000
kr = 32
nchnls = 2
0dbfs = 1

#include "csound/oplib.csd"

;##############################################################################;

instr 1
    	;DEFINISCO FILTRO E ANGOLO
	Stype = p1
	ifilcod = p4
    ifl   =   p5
	ifh   =   p6
    ialpha =  p7
    ivol   =  p8
	printf_i  "Name '%s'", 1, Stype
   		;CARICO IL SUONO
    aS_mono diskin2 ifilcod
	kfilt linseg ifl, p3, ifh    
    ibandwidth = 3
	aS_fil init 0
	kEnv init 0
		;oppure diviene n-esimo p-field. Tipo p9
/*	if Stype == "pb" then
	    aS_fil bp8 aS_mono, kfilt, ibandwidth
		kEnv expseg 0.0001, 0.006, ivol, 0.004, ivol/2, p3*4/5-0.01, ivol/2, p3/5, 0.0001
    elseif Stype == "mbp" then
		aS_fil bp8 aS_mono, kfilt, ibandwidth
  		kEnv expseg 0.0001, p3/5, ivol/2, p3*4/5-0.01, ivol/2, 0.004, ivol, 0.006, 0.0001
	elseif Stype == "pf" then
        aS_fil nbp4 aS_mono, ifl, ifh
    	kEnv expseg 0.0001, 0.006, ivol, 0.004, ivol*2/3, p3*4/5-0.01, ivol*2/3, p3/5, 0.0001
	elseif Stype == "mpf" then
        aS_fil nbp4 aS_mono, ifl, ifh
        kEnv expseg 0.0001, p3/5, ivol/2, p3*(4/5-0.01), ivol/2, 0.004*p3, ivol, 0.006*p3, 0.0001
	endif

    abal poscil 1, 440
    aS_bal balance aS_fil, abal
    aMid, aSide MS aS_bal*kEnv, ialpha
    aL, aR SDMX aMid, aSide
	    outs aL, aR*/
endin

