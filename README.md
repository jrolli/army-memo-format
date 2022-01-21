# Army Memorandum LaTeX Class and Pandoc Template

Provides a basic AR 25-50 memo in latex and Markdown.

## Setup

- Requires LuaLaTeX for font handling.
- Linux: install Arial font ("preferred" by AR 25-50 1-17)

Debian:

```bash
sudo apt-get install ttf-mscorefonts-installer
sudo fc-cache
fc-match Arial
```

## Usage

See `main.tex` and `main.md`.

If using Markdown, please follow the [Pandoc Markdown]
(https://pandoc.org/MANUAL.html#pandocs-markdown) standards. In particular,
it is important that lists use `#.` to denote each item to avoid overriding
the Army memorandum template Latex styling for lists.

A minimum set of declarations are required for the office-symbol, subject,
signature block, etc. After these options, within `\begin
{document}` ... `\end{document}`, the structure is based on an `enumerate`
list.

## Compile

Currently the `Makefile` supplies automatic rules to build both Markdown and
LaTeX source files (preferring Markdown).  Given `file.md`, `make file.pdf`
will translate the file into a PDF.

If you receive a font error, make sure the `texlive-luatex` package is
installed and then run `luaotfload-tool --update --force` [source]
(https://github.com/gregorio-project/gregorio/issues/1458#issuecomment-499215969).

---

Pandoc LaTeX template copyright (c) 2020 Nathaniel Stickney.

Army memorandum LaTeX class copyright (c) 2011 George Allen, all rights reserved.

Digital signature command for LaTeX copyright (c) 2005-2015 Martin Lottermoser, all rights reserved.

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 59 Temple
Place, Suite 330, Boston, MA 02111-1307 USA
