#Plik Makefile1
Code2: main.o libkwadrat.a libszescian.so
	gcc -o $@ $^

main.o: main.c libkwadrat.a libszescian.so
	gcc -c $<

kwadrat.o: kwadrat.c
	gcc -c $<

szescian.o: szescian.c
	gcc -fPIC -c  $<

libkwadrat.a : kwadrat.o
	ar rs $@ $<

libszescian.so: szescian.o
	gcc -shared -o $@ $<
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib
