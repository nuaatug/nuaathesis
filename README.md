# nuaathesis

南京航空航天大学(非官方)学位论文 LaTeX 模板 

### Build Status 

| CI |   Platform   | Status |
| ---- |---------- | --- |
| CircleCI | ArchLinux |  [![CircleCI](https://circleci.com/gh/nuaatug/nuaathesis/tree/master.svg?style=svg)](https://circleci.com/gh/nuaatug/nuaathesis/tree/master) |
| Appveyor | Windows       |  [![Build status](https://ci.appveyor.com/api/projects/status/t1sh0d9t01bvi83l/branch/master?svg=true)](https://ci.appveyor.com/project/summershrimp/nuaathesis/branch/master) |
| TravisCI | Linux + MacOS    | [![Build Status](https://travis-ci.org/nuaatug/nuaathesis.svg?branch=master)](https://travis-ci.org/nuaatug/nuaathesis) |


[模板文档和示例文件](https://ci.appveyor.com/project/summershrimp/nuaathesis/build/artifacts)

## 特点

* 模版(尽力)遵照南航官方论文模版排版要求；
* 支持本科、硕士、博士学位论文；
* 支持中文，初步支持英文、日文；
* 使用 XeLaTeX 进行编译 (日文例外)；
* 支持 Windows / Linux / macOS 系统环境；

## 快速上手

> 详细内容可参考文档 `nuaathesis.pdf` 以及各示例论文。

首先请安装 LaTeX 环境，
TeX Live 用户可以使用 [`.ci/install.bat`](.ci/install.bat) 或 [`.ci/install.sh`](.ci/install.sh) 来安装所需宏包，
也参考 [`.ci/texlive.pkgs`](.ci/texlive.pkgs) 手动安装。

由于本 repo 是面向模板开发者设立的，如果您获取到的源代码目录中没有模板 `nuaathesis.cls` 或编译好的文档的话，
请使用 `build.bat` 或 `build.sh` 编译生成。

编译论文时，请使用 XeLaTeX 进行编译，使用 `biber` 编译生成参考文献。

命令行方式1：
```
latexmk -xelatex master
```

命令行方式2：
```
xelatex -no-pdf master
bibtex master
xelatex master
xelatex master # 此处需要运行两遍
```

GUI 方式：

请根据个人喜好选择 TeXworks、TeXmaker、TeXStudio、Texpad(macOS)、Emacs、Atom 等进行编辑和编译。

## 目录结构

模板部分包括：

- `nuaathesis.dtx`：带文档的模板，也是本 repo 主要的内容；
- `nuaathesis.bst`：参考文献格式；
- `nuaathesis.cls`：模版文件，用户无需改动。该文件通过 `xelatex nuaathesis.dtx` 命令自动生成；
- `demo_*/`：示例论文；

论文部分包括：

- `bachelor.tex`、`master.tex`：主文件，此文件仅包含对模版和所有子文件的引用关系，建议实际使用时将文件名更改为论文名称。
- `content/`：存放具体各个章节的内容；
- `logo/`：封面、页眉所需的图片；
- `fig/`：被引用图片的文件夹；
- `bib/`：存放引用文献库，`.bib` 文件可使用常见的文献管理工具（EndNote、Mendeley、Papers等）进行生成。

---

Happy TeXing ;)
