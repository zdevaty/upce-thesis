filename=manual-tulthesis
default:
	xelatex -8bit -shell-escape ${filename}.tex
	xelatex -8bit -shell-escape ${filename}.tex
	xelatex -8bit -shell-escape ${filename}.tex

quick:
	xelatex -8bit -shell-escape ${filename}.tex

view: default
	open ${filename}.pdf

preview: quick
	open ${filename}.pdf

clean:
	rm -f ${filename}.{ps,toc,idx,log,aux,out,dvi,bbl,blg}
