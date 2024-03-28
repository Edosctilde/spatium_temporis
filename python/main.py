import numpy as np
from random import *


class inst():
    def __init__(self, nomeFile, inst):
        self.nomeFile = nomeFile
        self.inst = inst

    def play(self, when, dur, f, df, alpha, vol):
        print("i\"%s\" %f %f \"audioFiles/%s.wav\" %f %f %f %f" %(self.inst, when, dur, self.nomeFile, f, f +df, alpha, vol))
        return when+dur

def nuvola(when, dur, n, vol, inst, ffl, ffh, df):
    dt = dur/n
    dv = vol/np.sqrt(n)
    for i in range(n):
        f = randint(ffl, ffh)
        when = inst.play1(when, dt, f, f+df, when+90, dv)
    return when

bianco = inst("b", "pb")
giallo = inst("g", "pb")
rosso = inst("r", "pb")
azzurro = inst("a", "pb")
nero = inst("n", "pb")

##########################
##########################

T = 0

#0
T = bianco.play(T, 6, 9990, 200, T+90, 0.05)
#6



