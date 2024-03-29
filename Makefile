backup:
	ruby ~/GyazzBackup/gyazz_backup Gictionary
gyaim:
	ruby getdict > tmp/tmp.txt
	grep -v '.*-' tmp/tmp.txt > tmp/tmp1.txt
	ruby -I~/SlimeDict/programs ~/SlimeDict/programs/dicmerge \
		~/SlimeDict/wikipedia.txt 500 \
		~/SlimeDIct/ktai.txt 300 \
		tmp/tmp1.txt 1000 \
		> tmp/tmp2.txt
	ruby -I~/SlimeDict/programs ~/SlimeDict/programs/connection2txt -r rklist.gyaim -n tmp/tmp2.txt > ~/Gyaim/Resources/dict.txt

xxx:
	grep -v '.*-' tmp/tmp.txt > tmp/tmp1.txt
	ruby -I~/SlimeDict/programs ~/SlimeDict/programs/dicmerge \
		~/SlimeDict/data/wikipedia.txt 500 \
		~/SlimeDict/data/ktai.txt 300 \
		tmp/tmp1.txt 1000 \
		> tmp/tmp2.txt
	ruby -I~/SlimeDict/programs ~/SlimeDict/programs/connection2txt -r rklist.gyaim -n tmp/tmp2.txt > ~/GyaimMotion/resources/dict.txt

push:
	git push pitecan.com:/home/masui/git/Gictionary.git
	git push git@github.com:masui/Gictionary.git
