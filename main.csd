<CsoundSynthesizer>
<CsOptions>
-o "sp_dyn.wav" -W
</CsOptions>
<CsInstruments>
sr = 44100
kr = 4410
nchnls = 2
0dbfs = 1

;OPCODES
opcode MS, aa, ak
    amono, kag xin

    aSmod poscil 1, 0.5
    kar = kag*$M_PI/180
    aM = amono*sin(kar)
    aS = amono*cos(kar)*aSmod
    xout aM, aS
endop

opcode SDMX, aa,aa
    ain1,ain2 xin
    asum = (ain1+ain2)/sqrt(2)
    adif = (ain1-ain2)/sqrt(2)
    xout asum,adif
endop

opcode nbp4, a, aii
    asig, ifl, ifh xin
    asig butterlp asig, ifh
    asig butterlp asig, ifh
    asig butterlp asig, ifh
    asig butterlp asig, ifh
    asig butterlp asig, ifh
    asig butterhp asig, ifl
    asig butterhp asig, ifl
    asig butterhp asig, ifl
    asig butterhp asig, ifl
    aS butterhp asig, ifl
    xout aS	
endop

opcode bp8, a, aii
    asig, iff, ibw xin
    asig_new butbp asig, iff, 1, ibw
    asig_new butbp asig_new, iff, 1, ibw
    aS butbp asig_new, iff, 1, ibw
    xout aS
endop

        ;   o   o
        ;     1
        ;   \___/


instr 1                    ;point
    ;CARICO IL SUONO
        aS_mono diskin2 p4
    ;DEFINISCO FILTRO E ANGOLO
        ifreqFilt   =   p5
        ialpha = p6
        ivol = p7
        ibandwidth = 5
    ;FILTRO E BALENCIAGA IL SUONO
        aS_fil bp8 aS_mono, ifreqFilt, ibandwidth
        aS_bal balance aS_fil, (aS_mono*0.8)
    ;INVILUPPO
        kEnv expseg 0.0001, 0.06, ivol, 0.04, ivol/2, p3*4/5-0.1, ivol/2, p3/5, 0.0001
    ;MS
        aMid, aSide MS aS_bal*kEnv, ialpha
        aL, aR SDMX aMid, aSide
    outs aL, aR
endin

;SIMONE PALMIERI


instr 2                    ;point
    ;CARICO IL SUONO
        aS_mono diskin2 p4
    ;DEFINISCO FILTRO E ANGOLO
        ifl   =   p5
	    ifh   =   p6
        ialpha =  p7
        ivol = p8
    ;FILTRO E BALENCIAGA IL SUONO
        aS_fil nbp4 aS_mono, ifl, ifh
        abal poscil 440,1
        aS_bal balance aS_fil, (abal)
    ;INVILUPPO
        kEnv expseg 0.0001, 0.06, ivol, 0.04, ivol/2, p3*5/6-0.1, ivol/2, p3/6, 0.0001
    ;MS
        aMid, aSide MS aS_bal*kEnv, ialpha
        aL, aR SDMX aMid, aSide
    outs aL, aR
endin



</CsInstruments>

<CsScore>
i 1 0 6 "n.wav" 9000 9100 90 0.2


</CsScore>

</CsoundSynthesizer>
