# My LaTeX templates 
## Contents
templates of
- thesis (mainly for graduation or master's thesis)
- report (mainly for assignments or resumes)
- beamer (mainly for presentations)

## Requirements

## Usage
- `latexmk`
### thesis
- `LuaLaTeX` + `biber`
- Because of using `subfiles` package, you can compile each tex files.
### report
- `LuaLaTeX` + `upBibTeX`
### beamer
- `LuaLaTeX` + `upBibTeX`
- Because of using `subfiles` package, you can compile each tex files. <br>
Note that it may lead to error if you use `\frameagain.` 

## Note
### beamer
- You can choose weather you set sidebar on the left or not by the command `Sidebartrue` or `Sidebarfalse` in `main.tex.`
- A lot of `Caution "Overfull \hbox"` present. I'm thinking the reason of them are `beamercolorbox` in `head` and `foot.`

