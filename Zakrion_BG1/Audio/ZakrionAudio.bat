@echo off

@echo Installing audio...


cd override
oggdec ZAK*.ogg
del ZAK*.ogg
del oggdec.exe


@echo Finished installing audio.
