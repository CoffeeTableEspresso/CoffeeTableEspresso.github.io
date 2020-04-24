all: blog index blog-posts

blog:
	gcc -E -x assembler-with-cpp -P blog.html.in > blog.html

index:
	gcc -E -x assembler-with-cpp -P index.html.in > index.html

blog-posts: 2018-06-08 2018-11-08 2020-02-18 2020-02-19 2020-02-20 2020-02-21 2020-03-20 2020-03-22 2020-03-24 2020-03-29 2020-04-01 2020-04-02 2020-04-05 2020-04-10 2020-04-13

2018-06-08:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2018-06-08.html.in > blog-posts/2018-06-08.html

2018-11-08:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2018-11-08.html.in > blog-posts/2018-11-08.html

2020-02-18:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-02-18.html.in > blog-posts/2020-02-18.html

2020-02-19:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-02-19.html.in > blog-posts/2020-02-19.html

2020-02-20:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-02-20.html.in > blog-posts/2020-02-20.html

2020-02-21:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-02-21.html.in > blog-posts/2020-02-21.html

2020-03-20:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-03-20.html.in > blog-posts/2020-03-20.html

2020-03-22:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-03-22.html.in > blog-posts/2020-03-22.html

2020-03-24:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-03-24.html.in > blog-posts/2020-03-24.html

2020-03-29:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-03-29.html.in > blog-posts/2020-03-29.html

2020-04-01:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-01.html.in > blog-posts/2020-04-01.html

2020-04-02:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-02.html.in > blog-posts/2020-04-02.html

2020-04-05:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-05.html.in > blog-posts/2020-04-05.html

2020-04-10:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-10.html.in > blog-posts/2020-04-10.html

2020-04-13:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-13.html.in > blog-posts/2020-04-13.html

clean:
	rm *.html
	rm blog-posts/*.html
