
src=$(wildcard *.frag)

all: $(src:.frag=.html)

%.html: head0.part %.head head1.part %.frag tail.part
	cat $^ > $@

# cal.frag: table mkcal cal.top cal.bottom
#	./mkcal > $@

# reg.frag: regular mkreg reg.top reg.bottom
#	./mkreg > $@

#install: all
#	rsync -avP --rsync-path bin/rsync ./ deffa2010@deffa.org:html/festival/
