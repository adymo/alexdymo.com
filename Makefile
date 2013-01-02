
resume: resume.pdf

resume.pdf: resume.ps
	ps2pdf resume/resume.ps

resume.ps: resume.dvi
	cd resume &&  dvips resume.dvi

resume.dvi: resume/resume.tex resume/resume.sty
	cd resume && latex resume.tex
