#Author: Martin Pech
PROJECT = SIMPLO_API

default:
	composer create-project laravel/laravel API
	mv API .API
	rsync -a * .API
	rm -rf *
	y
	mv .API API


database:
	php artisan migrate:fresh

server:
	php artisan serve
