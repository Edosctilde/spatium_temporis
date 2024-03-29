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
  asig butterlp asig, ifh
  asig butterlp asig, ifh
  asig butterlp asig, ifh
  asig butterlp asig, ifh
  asig butterlp asig, ifh
  asig butterlp asig, ifh
  asig butterlp asig, ifh
  asig butterlp asig, ifh
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  asig butterhp asig, ifl
  aS butterhp asig, ifl
  xout aS
endop

opcode bp8, a, aki
    asig, kff, ibw xin
    asig_new butbp asig, kff, 1, ibw
    asig_new butbp asig_new, kff, 1, ibw
    aS butbp asig_new, kff, 1, ibw
    xout aS
endop

#define PART1(p4'p5'p6'p7'p8) #
   ;CARICO IL SUONO
        aS_mono diskin2 $p4
    ;DEFINISCO FILTRO E ANGOLO
        ifl   =   $p5
	ifh   =   $p6
        ialpha =  $p7
        ivol   =  $p8
;FILTRO E BALENCIAGA IL SUONO
        kfilt linseg ifl, p3, ifh    
#

#define PART2(aS_fil) #
        abal poscil 1, 440
        aS_bal balance $aS_fil, (abal)
#

#define PART3(aS_bal'kEnv'ialpha) #
        aMid, aSide MS $aS_bal*$kEnv, $ialpha
        aL, aR SDMX aMid, aSide
    outs aL, aR
#

