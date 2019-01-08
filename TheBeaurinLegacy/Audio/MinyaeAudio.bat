@echo off

@echo Installing audio...


cd override
oggdec QI#Mi*.ogg
del QI#Mi*.ogg
del oggdec.exe


@echo Finished installing audio.
