# WordPress Vagrant

## About

Initialize a WordPress [Vagrant](https://www.vagrantup.com/) box based on homestead.

[Laravel Homestead](http://laravel.com/docs/5.1/homestead) is an official, pre-packaged Vagrant "box" that provides you a wonderful development environment for Laravel framework.

As homestead already contains everything that we need, here we are extending homestead for our WordPress project.

### WordPress Vagrant Includes

- Ubuntu 18.04
- Git
- PHP 7.2
- PHP 7.1
- PHP 7.0
- PHP 5.6
- Nginx
- Apache (Optional)
- MySQL
- MariaDB (Optional)
- Sqlite3
- PostgreSQL
- Composer
- Node (With Yarn, Bower, Grunt, and Gulp)
- Redis
- Memcached
- Beanstalkd
- Mailhog
- Elasticsearch (Optional)
- ngrok
- wp-cli
- Zend Z-Ray
- Go
- Minio
- PHPUnit
- Running WordPress Instance

## Requirements

- [Vagrant](http://www.vagrantup.com/downloads.html)
- [VirtualBox 5.x](https://www.virtualbox.org/wiki/Downloads)
- PHP 5.6+
- [Composer](https://getcomposer.org/doc/00-intro.md)

## Get started

### Initial setup

Clone WordPress Vagrant:

```
git clone https://github.com/khaledsaikat/wordpress-vagrant.git
```

Then go to your cloned directory and install composer dependencies by running following command:

```
composer install
```

### Setting Your SSH Key
You will need to have ssh keys for accessing virtual server. On Mac and Linux, you can create an SSH key pair using the following command:

```
ssh-keygen -t rsa -C "you@wordpress"
```

### Run vagrant box

To run vagrant box type:

```
vagrant up
```

This shall create a new instance of Ubuntu 14.04 with included softwares.

To ssh new instance, run following command:

```
vagrant ssh
```

### Access your WordPress blog

You can see your WordPress blog by visiting http://192.168.10.10/

To use custom domain, add following line to your hosts file:

```
192.168.10.10  wordpress.app
```

On Mac and Linux, this file is located at /etc/hosts. On Windows, it is located at C:\Windows\System32\drivers\etc\hosts.

Now visit http://wordpress.app to check your new blog.

You can find all WordPress files inside `wordpress` directory on your local machine. Now use your favorite editor to modify files. Any modification will immediately reflect on virtual machine.

**Admin access of WordPress:**
- username: admin
- password: secret

**MySQL Database:**
- dbname: wordpress
- dbuser: homestead
- dbpass: secret

### Homestead.yaml

Homestead.yaml comes with several configurations. You can map any local directory to virtual server and also configure custom domain.

To get more info about homestead, visit [Laravel Homestead](http://laravel.com/docs/5.1/homestead)
