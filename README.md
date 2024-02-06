# Android decompiler

Same idea as [Android Project Creator](https://github.com/ThisIsLibra/AndroidProjectCreator) by Max Kersten, but written in bash.
I created this because I wanted to automate the decompilation process, instead of manually performing the steps.
Android Project Creator took too much time to run for my needs, while with my own steps I got sufficient results in a much shorter runtime.

During decompiling, decompilation of certain common libraries (such as android, androidx, junit, etc.) are excluded.

## Install

```
ln -s $(pwd)/android-decompiler <somewhere_in_your_path>
```

## Usage

```
android-decompiler <input.apk> <output_dir>
```

## Dependencies

* [fernflower](https://github.com/fesh0r/fernflower)
* [dex2jar](https://github.com/pxb1988/dex2jar)
* [apktool](https://apktool.org)
* Java

I included releases of fernflower, apktool and dex2jar in this repository, but you can replace them with your own if you don't trust me.
Fernflower was compiled with OpenJDK 20, if you use a different java version, your mileage may vary.
