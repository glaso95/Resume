
all: resume.pdf resume.ps

resume.pdf: resume.ms
	troff -Tpdf -ms resume.ms | gropdf > resume.pdf

resume.ps: resume.ms
	troff -Tps -ms resume.ms | grops > resume.ps

terminal:
	nroff -ms resume.ms

clean:
	rm -f resume.ps resume.pdf
