@echo off

@echo Installing audio...


cd override
oggdec ffight2*.ogg
del ffight2*.ogg
del oggdec.exe


@echo Finished installing audio.
