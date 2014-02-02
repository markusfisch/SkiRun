OBJECTS = *.html *.png
PRODUCTION = hhsw.de@ssh.strato.de:sites/proto/2ski
OPTIONS = \
	--recursive \
	--update \
	--delete-after \
	--times \
	--compress

up: atlas.png
	rsync $(OPTIONS) $(OBJECTS) $(PRODUCTION)

atlas.png: img/*
	BORDER=2 mkatlas img/* | patchatlas index.html
