# My LaTeX templates 
## Including
- thesis (mainly for graduation thesis)
- report (mainly for assignments of resumes)
- beamer (mainly for presentation)

## Usage
use `latexmk` in VScode


## Note
### thesis
Because of using `subfiles` package, you can compile contents/section.tex but temporary files (for example section.aux file) are generated in "main" directory.
### beamer
A lot of `Caution "Overfull \hbox"` present. I'm thinking the reason of them are `beamercolorbox` in `head` and `foot`.
