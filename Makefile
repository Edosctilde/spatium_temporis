PY = python3
CS = csound

all: UP

UP: python/Up.py csound/orc.orc python/muslib.py
	$(PY) python/Up.py > csound/scoUp.sco
	$(CS) csound/orc.orc csound/scoUp.sco