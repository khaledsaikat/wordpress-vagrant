# Install wp-cli, move it to /usr/loal/bin directory and rename as wp
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# Install PHPUnit
sudo apt-get install -y phpunit

# Create wordpress directory
sudo -u vagrant -i -- mkdir /home/vagrant/wordpress

WP_PATH="/home/vagrant/wordpress"

# Download and install WordPress
sudo -u vagrant -i -- wp core download --path=$WP_PATH --version=latest
sudo -u vagrant -i -- wp core config --path=$WP_PATH --dbname=wordpress --dbuser=homestead --dbpass=secret
sudo -u vagrant -i -- wp core install --path=$WP_PATH --url="http://wordpress.app" --title="WordPress" --admin_user=admin --admin_password=secret --admin_email="myemail@gmail.com"
