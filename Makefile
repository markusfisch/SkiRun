HTDOCS = htdocs
SPRITES = sprites
WEBROOT = hhsw.de@ssh.strato.de:sites/SkiRun/
OPTIONS = \
	--recursive \
	--links \
	--update \
	--delete-after \
	--times \
	--compress

upload: atlas.png
	rsync $(OPTIONS) \
		$(HTDOCS)/* \
		$(WEBROOT)

atlas: $(SPRITES)
	cd $(HTDOCS) && mkatlas ../$(SPRITES)/* | patchatlas index.html
