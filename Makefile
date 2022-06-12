#Plik Makefile1
.PHONY: clean
.SUFFIXES: .c .o .a

.c.o:
	gcc -c $<
.o:
	gcc -o $@ $^

Code2: main.o libkwadrat.a libszescian.so
	gcc -o $@ $^

main.o: main.c libkwadrat.a libszescian.so
kwadrat.o: kwadrat.c
szescian.o: szescian.c
	gcc -fPIC -c  $<

libkwadrat.a : kwadrat.o
	ar rs $@ $<
libszescian.so: szescian.o
	gcc -shared -o $@ $<
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib
clean:
	rm -f kwadrat *.o *.a
