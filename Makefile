all: index blog programming-languages

index:
	gcc -E -x c -P index.html.in > index.html

blog:
	gcc -E -x c -P blog.html.in > blog.html

programming-languages:
	gcc -E -x c -P programming-languages.html.in > programming-languages.html

clean:
	rm *.html
