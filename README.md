# My LaTeX templates 
## Including
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

## Note
- I don't know the reason why VScode presents a lot of warnings which seems to be generated in previous lualatex process when I compile this documents with `interaction=nonstopmode`.
### beamer
- A lot of `Caution "Overfull \hbox"` present. I'm thinking the reason of them are `beamercolorbox` in `head` and `foot`.
