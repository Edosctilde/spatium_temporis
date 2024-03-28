PY = python
CS = csound

all: UP

UP: $(PY)/Up.py $(CS)/orc.orc $(PY)/muslib.py
	$(PY)3 $(PY)/Up.py > $(CS)/scoUp.sco
	$(CS) $(CS)/orc.orc $(CS)/scoUp.sco
