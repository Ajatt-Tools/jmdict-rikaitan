# JMdict for Rikaitan <!-- omit in toc -->

[![Download](https://img.shields.io/github/v/tag/Ajatt-Tools/jmdict-rikaitan?style=for-the-badge&label=Last%20Release)](#downloads)
[![Chat](https://img.shields.io/badge/chat-join-green?style=for-the-badge&logo=Element&logoColor=green)](https://tatsumoto.neocities.org/blog/join-our-community)

This repository contains automatically generated dictionaries for use with [Rikaitan](https://github.com/Ajatt-Tools/rikaitan), a free Japanese dictionary browser extension. They are built using information from the [JMdict](https://www.edrdg.org/wiki/index.php/JMdict-EDICT_Dictionary_Project) project, which is a freely available Japanese dictionary maintained by the [Electronic Dictionary Research and Development Group](http://www.edrdg.org/). There are also releases for [JMnedict](https://www.edrdg.org/enamdict/enamdict_doc.html) and [KANJIDIC](https://www.edrdg.org/wiki/index.php/KANJIDIC_Project), which are respectively a Japanese proper names dictionary and a kanji dictionary.

This repository is automatically updated daily and the dictionary files are built from JMdict using the [Rikaitan Import](https://github.com/Ajatt-Tools/rikaitan-import) tool.

- [Downloads](#downloads)
  - [JMdict for Rikaitan](#jmdict-for-rikaitan)
  - [JMnedict for Rikaitan](#jmnedict-for-rikaitan)
  - [KANJIDIC for Rikaitan](#kanjidic-for-rikaitan)
- [FAQ](#faq)
  - [Legacy vs Extra/Regular JMdict](#legacy-vs-extraregular-jmdict)
  - [JMdict English vs JMdict English Without Proper Names](#jmdict-english-vs-jmdict-english-without-proper-names)
  - [How Often Should I Update?](#how-often-should-i-update)
  - [漢字使い参考 vs JMdict Forms](#漢字使い参考-vs-jmdict-forms)
- [Acknowledgements](#acknowledgements)
- [License](#license)

## Set up Rikaitan

If you are new to Rikaitan, read
[Setting up Rikaitan](https://tatsumoto.neocities.org/blog/setting-up-yomichan).

## Downloads

The download links below will always point toward the latest release.

### JMdict for Rikaitan

To see your current version of JMdict, hover over this entry:

> ＪＭｄｉｃｔ

- JMdict (English)
  - [JMdict_english_with_examples.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_english_with_examples.zip)
    - This is the version of JMdict with example sentences from the [Tatoeba Project](http://tatoeba.org/home).
  - [JMdict_english.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_english.zip)
    - This is the same JMdict but without example sentences.
  - [JMdict_english_legacy.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_english_legacy.zip)
    - This is JMdict with legacy formatting. It is not recommended for use; see the [FAQ](#legacy-vs-extraregular-jmdict) below.
  - [JMdict_english_without_proper_names.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_english_without_proper_names.zip)
    - This is `JMdict_english` but without several thousand entries from JMnedict. Recommended if you are using JMdict and JMnedict together; see the [FAQ](#jmdict-english-vs-jmdict-english-without-proper-names) below.
  - [JMdict_english_legacy_without_proper_names.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_english_legacy_without_proper_names.zip)
    - This is `JMdict_english_without_proper_names` but with the legacy formatting of `JMdict_english_legacy`.
- JMdict (Other Languages)
  - [JMdict_dutch.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_dutch.zip)
  - [JMdict_french.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_french.zip)
  - [JMdict_german.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_german.zip)
  - [JMdict_hungarian.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_hungarian.zip)
  - [JMdict_russian.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_russian.zip)
  - [JMdict_slovenian.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_slovenian.zip)
  - [JMdict_spanish.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_spanish.zip)
  - [JMdict_swedish.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_swedish.zip)
- JMdict Forms
  - [JMdict_forms.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMdict_forms.zip)
    - This is a version of JMdict that includes only the alternate forms of each entry. This is useful for conjugation lookup for those who do not wish to have any dictionary definitons, and is unnecessary if you are using the regular JMdict.

### JMnedict for Rikaitan

- [JMnedict.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/JMnedict.zip)

### KANJIDIC for Rikaitan

- [KANJIDIC_english.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/KANJIDIC_english.zip)
- [KANJIDIC_french.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/KANJIDIC_french.zip)
- [KANJIDIC_portuguese.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/KANJIDIC_portuguese.zip)
- [KANJIDIC_spanish.zip](https://github.com/Ajatt-Tools/jmdict-rikaitan/releases/latest/download/KANJIDIC_spanish.zip)

## FAQ

### Legacy vs Extra/Regular JMdict

The legacy JMdict for Rikaitan is a version of JMdict for Yomichan with legacy formatting and with lots of information missing. The so-called "extra" version of JMdict was [introduced by stephenmk](https://github.com/FooSoft/yomichan-import/pull/40) to modernize the formatting and add vital missing information such as notes, type information, source languages, references, antonyms, other forms, and more.

The terminology of "Extra" is confusing since it implies that the extra version is a marginal improvement to the legacy version, so we will just call it the "regular" JMdict. The legacy version is available for download as some third-party apps do not yet support new structured-content features, but we recommend using the regular version if possible as you will be missing out on a lot of important information otherwise.

### JMdict English vs JMdict English Without Proper Names

If you are using JMDict English and JMnedict together, it is recommended to use `JMdict_english_without_proper_names`.

[Starting in 2023](https://github.com/JMdictProject/JMdictIssues/issues/94), JMdict began copying a subset of entries from JMnedict (~10k as of 2026) into its dictionary file as part of the default distribution process for JMdict English. As a result, if you are using both JMdict English and JMnedict in Rikaitan and look up a proper name that has been copied over, such as 三貴, you will get duplicate results from both dictionaries.

To solve this issue, a version of JMDict English without proper names is provided here that is built from a variation of JMdict English that skips partially copying entries from JMnedict (`JMdict_b` from [EDRDG](https://www.edrdg.org/wiki/Main_Page.html#Current_Version_&_Downloads)). Other languages are not affected, so do not have additional variations provided.

However, an equivalent to `JMdict_english_with_examples` but without any JMnedict entries is not provided here as EDRDG does not currently publish a version of `JMdict_b` with examples to use as a source for it.

### How Often Should I Update?

- The **JMdict** project [is quite active](https://www.edrdg.org/jmwsgi/updates.py?svc=jmdict&i=1) so we recommend you update your JMdict files every few months as lots of entries are added and improved upon every single day by contributers. You can even [contribute to the project here](https://www.edrdg.org/jmwsgi/edhelpq.py?svc=jmdict&sid=).

- The **JMnedict** project is [also somewhat active](https://www.edrdg.org/jmwsgi/updates.py?svc=jmdict&i=1) although arguably less relevant.

- The **KANJIDIC** project [does not appear to be as active](https://www.edrdg.org/wiki/index.php/KANJIDIC_Project), so it is probably fine not to update it.

### 漢字使い参考 vs JMdict Forms

There is a very old version of the JMdict Forms dictionary floating around under the name 漢字使い参考 dating back to 2021 or so. We recommend you update to the latest version of JMdict Forms from that so that you get the benefits of the latest JMdict data.

## License

The code in this repository is licensed under the GNU AGPL.
The released dictionaries are licensed under the [Creative Commons Attribution-ShareAlike Licence (V4.0)](https://creativecommons.org/licenses/by-sa/4.0/) that [JMdict is](https://www.edrdg.org/edrdg/licence.html).

This repository uses the [JMdict/EDICT](https://www.edrdg.org/wiki/index.php/JMdict-EDICT_Dictionary_Project) and [KANJIDIC](https://www.edrdg.org/wiki/index.php/KANJIDIC_Project) dictionary files. These files are the property of the [Electronic Dictionary Research and Development Group](https://www.edrdg.org/), and are used in conformance with the Group's licence.
