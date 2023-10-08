@echo on

set model=vox-adv-256
set modelCp=vox-adv-cpk
set target=data/source.mp4
set source=data/chinnm1.png

python ./demo.py ^
--config config/%model%.yaml ^
--driving_video %target% ^
--source_image %source% ^
--checkpoint config/%modelCp%.pth.tar ^
--relative ^
--adapt_scale

@REM mv result.mp4 results/%source%.mp4
