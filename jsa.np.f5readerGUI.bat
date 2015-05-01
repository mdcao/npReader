@echo off

rem This batch file serves as a wrapper for several
rem  JSA command line tools.

if not "%JSA_HOME%" == "" goto gotjsaHome

echo JSA requires an environment variable JSA_HOME.
goto :eof

:gotjsaHome

set JSA_MEM=7000m
set JSA_LIBS=%JSA_HOME%\lib\japsa\
set JSA_CP=%JSA_LIBS%\japsa.jar;%JSA_LIBS%\commons-math3-3.0.jar;%JSA_LIBS%\sam-1.84.jar;%JSA_LIBS%\jhdf5.jar;%JSA_LIBS%\jhdfobj.jar;%JSA_LIBS%\htsjdk-1.126.jar;%JSA_LIBS%\jcommon-1.0.23.jar;%JSA_LIBS%\jfreechart-1.0.19.jar

:run

java -Xmx%JSA_MEM% -ea -Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Djava.library.path="%JHDF5_LIB%" -classpath %JSA_CP% japsa.seq.nanopore.NanoporeReaderStream --folder . -output output.fastq -fail --minLength 50 -GUI 

:eof

