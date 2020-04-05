TARGET=tb

STD=standard
VSTD=08
WORKDIR=work
LIBRARY=/usr/local/lib/ghdl/vendors/

SOURCES =  my_pkg.vhd \
 tb.vhd \
 ${TARGET}.vhd \

${TARGET}:
	@mkdir -p work
	ghdl -a --std=${VSTD} --ieee=${STD} --workdir=${WORKDIR} -P${LIBRARY} ${SOURCES}
	ghdl -e --std=${VSTD} --workdir=${WORKDIR} -P${LIBRARY} ${TARGET}
	./${TARGET} --wave=${TARGET}.ghw
	# Uncomment below line if needed
	gtkwave ${TARGET}.ghw > /dev/null 2>&1 & disown

clean:
	rm e~${TARGET}.o
	rm ${TARGET}
	rm ${TARGET}.ghw
	rm _Alert.txt
	rm _Log.txt

.PHONY: ${TARGET} clean
