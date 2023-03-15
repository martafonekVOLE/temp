
#Author: Martin Pech
PROJECT = SIMPLO_API

default:
	composer create-project laravel/laravel API
	mv API .API
	rsync -a * .API
	mv Makefile .Makefile
	rm -rf *
	mv .Makefile Makefile
	mv .API API
	rm -rf Makefile


database:
	php artisan migrate:fresh

server:
	php artisan serve

