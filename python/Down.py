from muslib import *

def oscillate(sound, when, dur, rep, f, df, vol, dyn = None):
    step = dur/rep
    tbkp = when
    for i in range(rep):
        if dyn is None:
            dyn = vol
        v = line(dur, when-tbkp, vol, dyn)
        sound.play(when, step, F+f, df, T+90, v)
        when += step
        print(when, step)
    return when

instrument = "mpf"
bianco.inst = instrument
giallo.inst = instrument
rosso.inst = instrument
azzurro.inst = instrument
nero.inst = instrument

F = 6000
dil = 3
T = 0
dil = 1.8

T = rosso.play(T, 2*dil, F+250, 330, T+90, 0.02)
T -= 0.1*dil
T = azzurro.play(T, 1.5*dil, F+330, 300, T +90, 0.05)
T -= 0.1*dil
F = 4800
T -= 1*dil
T = oscillate(bianco, T, 2*dil, 20, F+250, 200, 0.3, dyn = 0.01)
T = oscillate(rosso, T, 0.2*dil, 2, F+160, 400, 0.02)
T -= 0.1*dil
T = oscillate(bianco, T, 3*dil, 29, F+200, 400, 0.08, dyn = 0.001)
T -= 5.3*dil
T = giallo.play(T, 1*dil, F + 400, 50, T +90, 0.01)
T -= 0.1*dil
T = nero.play(T, 1.7*dil, F+ 350, 100, T +90, 0.03)
T -= 0.1*dil
F = 6000
T = bianco.play(T, 1.8*dil, F+ 500, 400, T+90, 0.004)
F = 4800
T = rosso.play(T, 3*dil, F+300, 330, T+90, 0.008)
"va bene come si legano le parti ma ora devi sovrapporle per creare + comunicazione: un discorso, come hai fatto per le freq basse"
#---------------------------------------------------#
T = 0
F = 9000
dil = 1.2
for i in range(6):
    bianco.play(T, 0.3*dil, F+500, 100, T+90, 0.002)
    T += 0.15*dil
    giallo.play(T, 0.6*dil, F+500, 150, T+90, 0.005)
    T += 0.3*dil
    rosso.play(T, 0.9*dil, F+500, 200, T+90, 0.01)
    T += 0.45*dil
    azzurro.play(T, 1.2*dil, F+500, 150, T+90, 0.005)
    T += 0.6*dil
    nero.play(T, 1.5*dil, F+500, 100, T+90, 0.002)
    T += 0.8*dil
    

#---------------------------------------------------#
T = 0
F = 0
dil = 1
T = azzurro.play(T, 3*dil, F+60, 400, T+90, 0.1)
T -= 0.1*dil
T = oscillate(nero, T, 2.5*dil, 15, F+200, 200, 0.08)
T -= 0.1*dil
T = oscillate(rosso, T, 0.2*dil, 2, F+150, 200, 0.2)
T -= 0.1*dil
T = oscillate(bianco, T, 1*dil, 9, F+200, 400, 0.08)
T -= 0.1*dil
T = oscillate(bianco, T, 2*dil, 7, F+80, 200, 0.1, dyn = 0.01)
T -= 0.1*dil
T = oscillate(rosso, T, 0.2*dil, 2, F+150, 200, 0.3)
T -= 0.1*dil
T = oscillate(bianco, T, 2*dil, 19, F+200, 400, 0.13)
T -= 1*dil
T = rosso.play(T, 4*dil, F+200, 400, T+90, 0.2)
T -= 3*dil
T = bianco.play(T, 3*dil, F+200, 700, T+90, 0.2)
T -= 0.1*dil
T = oscillate(bianco, T, 2*dil, 20, F+60, 400, 0.3, dyn = 0.1)
T = oscillate(rosso, T, 0.2*dil, 2, F+150, 200, 0.2)
T -= 0.1*dil
T = oscillate(bianco, T, 3*dil, 29, F+200, 400, 0.08, dyn = 0.001)
T -= 0.1*dil



