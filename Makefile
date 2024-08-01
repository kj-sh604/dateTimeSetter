compile:
	cython3 --embed -o dateTimeSetter.c -X language_level=3 dateTimeSetter.py
	PYTHON_VERSION=`ls /usr/include | grep -o 'python[3-9]\+\.[0-9]\+'` ; \
	gcc -march=native -O2 -pipe -fno-plt -I /usr/include/$$PYTHON_VERSION -o dateTimeSetter dateTimeSetter.c -l$$PYTHON_VERSION -lpthread -lm -lutil -ldl
