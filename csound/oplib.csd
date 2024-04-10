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