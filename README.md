# Android decompiler

Same idea as [Android Project Creator](https://github.com/ThisIsLibra/AndroidProjectCreator) by Max Kersten, but written in bash.
I created this because I wanted to automate the decompilation process, instead of manually performing the steps.
Android Project Creator took too much time to run for my needs, while with my own steps I got sufficient results in a much shorter runtime.

During decompiling, decompilation of certain common libraries (such as android, androidx, junit, etc.) are excluded.

## Install

Install dependencies:
```
make dependencies
```

Symlink the binary to your PATH:

```
ln -s $(pwd)/android-decompiler <somewhere_in_your_path>
```

## Usage

```
android-decompiler <input.apk> <output_dir>
```

## Dependencies

* [jadx](https://github.com/skylot/jadx)
* [apktool](https://apktool.org)
* Java
