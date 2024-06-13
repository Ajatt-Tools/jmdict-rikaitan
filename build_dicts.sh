#!/bin/bash

# This script is copied from
# https://github.com/Ajatt-Tools/rikaitan-import/blob/main/scripts/build_dicts.sh
# with little modifications.

set -euxo pipefail

readonly name="rikaitan-import-linux"
readonly latest_zip="https://github.com/Ajatt-Tools/rikaitan-import/releases/latest/download/$name.zip"

mkdir -p -- src
mkdir -p -- dst
mkdir -p -- binaries

function refresh_source () {
    NOW=$(date '+%s')
    YESTERDAY=$((NOW - 86400)) # 86,400 seconds in 24 hours
    if [ ! -f "src/$1" ]; then
        wget "ftp.edrdg.org/pub/Nihongo/$1.gz"
        gunzip -c "$1.gz" > "src/$1"
    elif [[ $YESTERDAY -gt $(date -r "src/$1" '+%s') ]]; then
        rsync "ftp.edrdg.org::nihongo/$1" "src/$1"
    fi
}

function get_rikaitan_import() {
	if [[ -f binaries/rikaitan ]]; then
		return
	fi
	curl -Ls --output-dir binaries -O -- "$latest_zip"
	unzip -j binaries/*zip -d binaries
	rm -r -- binaries/*zip
}

get_rikaitan_import
chmod +x -- ./binaries/rikaitan
refresh_source "JMdict_e_examp"
./binaries/rikaitan -language="english_extra" -title="JMdict" src/JMdict_e_examp dst/JMdict_english_with_examples.zip

refresh_source "JMdict"
./binaries/rikaitan -language="english_extra" -title="JMdict"         src/JMdict dst/JMdict_english.zip
./binaries/rikaitan -language="english"   -title="JMdict (Legacy)"    src/JMdict dst/JMdict_english_legacy.zip
./binaries/rikaitan -language="dutch"     -title="JMdict (Dutch)"     src/JMdict dst/JMdict_dutch.zip
./binaries/rikaitan -language="french"    -title="JMdict (French)"    src/JMdict dst/JMdict_french.zip
./binaries/rikaitan -language="german"    -title="JMdict (German)"    src/JMdict dst/JMdict_german.zip
./binaries/rikaitan -language="hungarian" -title="JMdict (Hungarian)" src/JMdict dst/JMdict_hungarian.zip
./binaries/rikaitan -language="russian"   -title="JMdict (Russian)"   src/JMdict dst/JMdict_russian.zip
./binaries/rikaitan -language="slovenian" -title="JMdict (Slovenian)" src/JMdict dst/JMdict_slovenian.zip
./binaries/rikaitan -language="spanish"   -title="JMdict (Spanish)"   src/JMdict dst/JMdict_spanish.zip
./binaries/rikaitan -language="swedish"   -title="JMdict (Swedish)"   src/JMdict dst/JMdict_swedish.zip

./binaries/rikaitan -format="forms"       -title="JMdict Forms"       src/JMdict dst/JMdict_forms.zip

refresh_source "JMnedict.xml"
./binaries/rikaitan src/JMnedict.xml dst/JMnedict.zip

refresh_source "kanjidic2.xml"
./binaries/rikaitan -language="english"    -title="KANJIDIC"              src/kanjidic2.xml dst/KANJIDIC_english.zip
./binaries/rikaitan -language="french"     -title="KANJIDIC (French)"     src/kanjidic2.xml dst/KANJIDIC_french.zip
./binaries/rikaitan -language="portuguese" -title="KANJIDIC (Portuguese)" src/kanjidic2.xml dst/KANJIDIC_portuguese.zip
./binaries/rikaitan -language="spanish"    -title="KANJIDIC (Spanish)"    src/kanjidic2.xml dst/KANJIDIC_spanish.zip
