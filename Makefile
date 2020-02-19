all: index blog programming-languages complaints

index:
	gcc -E -x c -P index.html.in > index.html

blog:
	gcc -E -x c -P blog.html.in > blog.html

programming-languages:
	gcc -E -x c -P programming-languages.html.in > programming-languages.html

complaints:
	gcc -E -x c -P complaints.html.in > complaints.html

clean:
	rm *.html
