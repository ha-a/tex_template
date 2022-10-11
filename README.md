# My LaTeX templates 
## Including
- thesis (mainly for graduation thesis)
- report (mainly for assignments of resumes)
- beamer (mainly for presentation)

## Usage
- `latexmk`
- Because of using `subfiles` package, you can compile each tex files in contents directory.

## Note
- I don't know the reason why VScode presents a lot of warnings which seems to be generated in previous lualatex process when I compile this documents with `interaction=nonstopmode`.
### thesis
- using `LuaLaTeX` + `biber` + `latexmk`
### report
- useing `LuaLaTeX` + `upbibtex` + `latexmk`
### beamer
- Because of using `subfiles` package, you can compile each tex files in contents directory.
- A lot of `Caution "Overfull \hbox"` present. I'm thinking the reason of them are `beamercolorbox` in `head` and `foot`.
