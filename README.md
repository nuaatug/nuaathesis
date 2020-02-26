# nuaathesis

南京航空航天大学(非官方)学位论文 LaTeX 模板

UNOFFICIAL LaTeX thesis template for Nanjing University of Aeronautics and Astronautics

下载: [“稳定版”][link_rel], [最新开发分支构建][link_dev]

| Branch | ArchLinux | TeXLive on Linux | TeXLive on Win |
| :----: | :-------: | :--------------: | :------------: |
| master | [![CircleCI][i1]][l1] | [![TravisCI][i2]][l2] | [![AppVeyor][i3]][l3] |

[link_rel]: https://github.com/nuaatug/nuaathesis/releases
[link_dev]: https://ci.appveyor.com/project/summershrimp/nuaathesis/build/artifacts
[l1]: https://circleci.com/gh/nuaatug/nuaathesis/tree/master
[i1]: https://circleci.com/gh/nuaatug/nuaathesis/tree/master.svg?style=svg
[l2]: https://ci.appveyor.com/project/summershrimp/nuaathesis/branch/master
[i2]: https://ci.appveyor.com/api/projects/status/t1sh0d9t01bvi83l/branch/master?svg=true
[l3]: https://travis-ci.org/nuaatug/nuaathesis
[i3]: https://travis-ci.org/nuaatug/nuaathesis.svg?branch=master

## 特点

* 模版(尽力)遵照南航官方论文模版排版要求
* 支持本科、硕士、博士学位论文
* 支持中文，初步支持英文、日文
* 使用 XeLaTeX 进行编译 (日文例外)
* 支持 Windows / Linux / macOS 等系统环境

## 快速上手

1. 从 [Release 页面][link_rel] 下载与系统对应的压缩包，并解压到本地文件夹 (注意不要下载 Source code);
2. 根据论文的语言，用编辑器打开 [demo_chs](demo_chs), [demo_en](demo_en) 或 [demo_ja](demo_ja) 文件夹 (里的主文件 `bachelor.tex` 或 `master.tex`);
3. 将 LaTeX 编译方式修改为 latexmk，尝试编译论文;
4. 如果遇到问题，建议阅读编译的文档本身，或者看一下根目录下的 [nuaathesis.pdf](nuaathesis.pdf).

## Quick Start

1. [Download][link_rel] zip/tar release (don't download Source code, unless you know how to compile them),
2. Open [demo_en/bachelor.tex](demo_en/bachelor.tex) or [demo_en/master.tex](demo_en/master.tex) with LaTeX editor,
3. Compile the file with latexmk,
4. If any problems, check out the document itself (i.e.: demo_en/content) for FAQ.

---

Happy TeXing ;)
