import numpy as np
from random import *
class inst():
    def __init__(self, nomeFile):
        self.nomeFile = nomeFile

    def play1(self, when, dur, f, alpha, vol,df = 0):
        print("i1 %f %f \"%s.wav\" %f %f %f %f" %(when, dur, self.nomeFile, f, alpha, vol, f +df))
        return when+dur
    def play2(self, when, dur, f, alpha, vol, df):
        print("i2 %f %f \"%s.wav\" %f %f %f %f" %(when, dur, self.nomeFile, f, f+df, alpha, vol))
        return when+dur

def nuvola(when, dur, n, vol, inst, ffl, ffh, df, ninst):
    dt = dur/n
    dv = vol/np.sqrt(n)
    for i in range(n):
        f = randint(ffl, ffh)
        if ninst == 1:
            when = inst.play1(when, dt, f, when+90, dv, f+df)
        elif ninst == 2:
            when = inst.play2(when, dt, f, when+90, dv, f+df)
    return when

bianco = inst("w")
giallo = inst("g")
rosso = inst("r")
azzurro = inst("a")
nero = inst("n")

##########################
##########################

T = 0

#0
T = bianco.play2(T, 6, 9990, T+90, 0.05, 200)
#6
T = bianco.play2(T, 6, 9990, T+90, 0.1, 200)
#12
nero.play2(T, 4, 40, T+90, 0.1, 60)
T = giallo.play2(T, 6, 9990, T+90, 0.1, 200)
#18
rosso.play2(T, 6, 40, T+90, 0.1, 60)
azzurro.play2(T, 6, 2357, T+90, 0.1, 200)
T += 1
T = nuvola(T, 0.5, 2, 0.5, nero, 5000, 6000, df = 100, ninst=1)
T = nero.play1(T, 1.5, 2537, T+90, 0.6)
T += 1.5
T = nuvola(T, 0.5, 2, 0.5, nero, 5000, 6500,  df = 200, ninst=1)
#24
T = 24
nero.play2(T, 4, 9000, T+90, 0.1, 10000)


