import numpy as np
from random import *

def line(dt, x, y0, y1):
    a = (y1-y0)/dt
    b = y0
    return a * x + b
F = 1200
 


class inst():
    def __init__(self, nomeFile, inst):
        self.nomeFile = nomeFile
        self.inst = inst

    def play(self, when, dur, f, df, alpha, vol):
        print("i1\t%3.4f %3.4f \"../audioFiles/%s.wav\" %f %f %f %f %s" %(when, dur, self.nomeFile, f, f +df, alpha, vol,self.inst))
        return when+dur

def nuvola(when, dur, n, vol, inst, ffl, ffh, df):
    dt = dur/n
    dv = vol/np.sqrt(n)
    for i in range(n):
        f = randint(ffl, ffh)
        when = inst.play(when, dt, f, f+df, when+90, dv)
    return when

bianco = inst("b", "pb")
giallo = inst("g", "pb")
rosso = inst("r", "pb")
azzurro = inst("a", "pb")
nero = inst("n", "pb")

##########################
##########################

T = 0



