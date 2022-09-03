all: blog contact index reviews blog-posts

blog:
	gcc -E -x assembler-with-cpp -P blog.html.in > blog.html

contact:
	gcc -E -x assembler-with-cpp -P contact.html.in > contact.html

index:
	gcc -E -x assembler-with-cpp -P index.html.in > index.html

reviews:
	gcc -E -x assembler-with-cpp -P reviews.html.in > reviews.html

blog-posts: 2018-06-08 2018-11-08 2020-02-18 2020-02-19 2020-02-20 2020-02-21 2020-04-02 2020-04-10 2020-04-13 2020-04-24 2020-04-28 2020-05-01 2020-05-07 2020-05-14 2020-05-15 2020-05-18 2020-05-22

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

2020-04-02:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-02.html.in > blog-posts/2020-04-02.html

2020-04-10:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-10.html.in > blog-posts/2020-04-10.html

2020-04-13:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-13.html.in > blog-posts/2020-04-13.html

2020-04-24:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-24.html.in > blog-posts/2020-04-24.html

2020-04-28:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-04-28.html.in > blog-posts/2020-04-28.html

2020-05-01:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-05-01.html.in > blog-posts/2020-05-01.html

2020-05-07:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-05-07.html.in > blog-posts/2020-05-07.html

2020-05-14:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-05-14.html.in > blog-posts/2020-05-14.html

2020-05-15:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-05-15.html.in > blog-posts/2020-05-15.html

2020-05-18:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-05-18.html.in > blog-posts/2020-05-18.html

2020-05-22:
	gcc -E -x assembler-with-cpp -P -I. blog-posts/2020-05-22.html.in > blog-posts/2020-05-22.html

clean:
	rm *.html
	rm blog-posts/*.html
