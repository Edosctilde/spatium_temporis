from muslib import *
instrument = "pf"
bianco.inst = instrument
giallo.inst = instrument
rosso.inst = instrument
azzurro.inst = instrument
nero.inst = instrument
F = 7200
dil = 3
T = 0
bianco.play(T + 0.5*dil, 1*dil, 120, 150, T +90, 0.07)
T = azzurro.play(T, 2*dil, F+1200, 200, T+90, 0.1)
T -= 1*dil
giallo.play(T-0.5*dil, 1*dil, 60, 400, T+90, 0.04)
T = bianco.play(T, 1*dil, F+1100, 50, T+90, 0.05)
T -= 0.2*dil
T = giallo.play(T, 1*dil, F+1000, 100, T+90, 0.3)
T -= 0.2*dil
T = rosso.play(T, 1*dil, F+900, 200, T+90, 0.3)
bianco.play(T -0.5*dil, 1*dil, 120, 150, T +90, 0.05)
T -= 0.2*dil
T = nero.play(T, 1*dil, F+800, 180, T+90, 0.4)
nero.play(T-0.7*dil, 1*dil, 70, 400, T+90, 0.025)
T -= 0.2*dil
T = azzurro.play(T,  1.5*dil, F+700, 200, T+90, 0.25)
#---------------------------------------------------#
T = 0
F = 2400
dil = 1.2
for i in range(3):
    nero.play(T, 1.5*dil, F+500, 100, T+90, 0.002)
    T += 1*dil
    azzurro.play(T, 1.5*dil, F+500, 150, T+90, 0.005)
    T += 1*dil
    rosso.play(T, 1.5*dil, F+500, 200, T+90, 0.01)
    T += 1*dil
    giallo.play(T, 1.5*dil, F+500, 150, T+90, 0.005)
    T += 1*dil
    bianco.play(T, 1.5*dil, F+500, 100, T+90, 0.002)
    T += 1*dil
