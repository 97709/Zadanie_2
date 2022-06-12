#Plik Makefile1
Code2: main.o libkwadrat.a libszescian.so
	gcc -o Code2 main.o libkwadrat.a libszescian.so

main.o: main.c libkwadrat.a libszescian.so
	gcc -c main.c

kwadrat.o: kwadrat.c
	gcc -c kwadrat.c

szescian.o: szescian.c
	gcc -fPIC -c  szescian.c

libkwadrat.a : kwadrat.o
	ar rs libkwadrat.a kwadrat.o

libszescian.so: szescian.o
	gcc -shared -o libszescian.so szescian.o
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib
