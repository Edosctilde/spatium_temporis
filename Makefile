PY = python
CS = csound

all: UP DOWN

UP: $(PY)/Up.py $(CS)/orc.orc $(PY)/muslib.py
	$(PY)3 $(PY)/Up.py > $(CS)/scoUp.sco
	$(CS) $(CS)/orc.orc $(CS)/scoUp.sco -o results/Up

DOWN: $(PY)/Down.py $(CS)/orc.orc $(PY)/muslib.py
	$(PY)3 $(PY)/Down.py > $(CS)/scoDown.sco
	$(CS) $(CS)/orc.orc $(CS)/scoDown.sco -o results/Down
