all: blog index programming-languages

blog:
	gcc -E -x assembler-with-cpp -P blog.html.in > blog.html

index:
	gcc -E -x c -P index.html.in > index.html

programming-languages:
	gcc -E -x c -P programming-languages.html.in > programming-languages.html

clean:
	rm *.html
