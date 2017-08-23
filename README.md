# nuaathesis

南京航空航天大学(非官方)学位论文 LaTeX 模板

[模板文档和示例文件](https://ci.appveyor.com/project/yzwduck/nuaathesis/build/artifacts)

## 特点

* 模版(尽力)遵照南航官方论文模版排版要求
* 支持本科、硕士、博士学位论文
* 使用 XeLaTeX 进行编译
* 支持 Windows / Linux / macOS 系统环境

## 快速上手

首先请安装 LaTeX 环境，
TeX Live 用户可以参考 [`.ci/texlive.pkgs`](.ci/texlive.pkgs) 来安装所需的宏包，
ArchLinux 用户可以参考 [`.circleci/config.yml`](.circleci/config.yml) 来安装所需的软件包。

由于本 repo 是面向模板开发的，如果您下载了 release 版的 zip 压缩包，请忽略这一步；
通过其他途径下载的用户，请运行 `build.bat` 或 `build.sh` 来抽取模板和编译模板文档。

编译论文时，请使用 XeLaTeX 进行编译，使用 `biber` 编译生成参考文献。

命令行方式1：
```
latexmk -xelatex sample-master
```

命令行方式2：
```
xelatex -no-pdf sample-master
biber --debug sample-master
xelatex sample-master
xelatex sample-master # 此处需要运行两遍
```

GUI 方式：

请根据个人喜好选择 TeXworks、TeXmaker、TeXStudio、Texpad(macOS)、Emacs、Atom 等进行编辑和编译。

## 目录结构

模板部分包括：

- `nuaathesis.dtx`、`nuaathesis.ins`：带文档的模板，也是本 repo 主要的内容；
- `nuaathesis.cls`：模版文件，用户无需改动。该文件通过 `latex nuaathesis.ins` 命令自动生成；
- `nuaathesis.cfg`：模板配置文件，请根据自己需求修改。该文件通过 `latex nuaathesis.ins` 命令自动生成；
- `nuaathesis.bst`：参考文献格式；

论文部分包括：

- `sample-bachelor.tex`、`sample-master.tex`：主文件，此文件仅包含对模版和所有子文件的引用关系，建议实际使用时将文件名更改为论文名称。
- `chapter/`：存放具体各个章节的内容；
- `figures/`：被引用图片的文件夹，请不要删改已有内容；
- `bib/`：存放引用文献库，`.bib` 文件可使用常见的文献管理工具（EndNote、Mendeley、Papers等）进行生成。

---

Happy TeXing ;)
