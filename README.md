# Quick Start

Use the `.env` file to set up your local website variables including url and database name / credentials.

    cd cli

Run the `add-hosts` script to modify your hosts file and allow for custom domain.

    bash add-hosts.sh

Run the `create-cert` script to create SSL certificates for local https support.

    bash create-cert.sh

Change to main directory and initiate Docker to get up and running!

    cd ..
    docker-compose up

You should now have access to the local site dashboard and SQL database using the settings you provided in the `.env` file. Enjoy!

------

# Detailed Instructions

## Required setup

In order to use this you will need docker desktop installed and the mkcert utility for creating ssl certificates

check if you have it by using:

    mkcert --version

if you do not, you can install with homebrew:

    brew install mkcert

## Getting Started

Use the .env file to define your variables. Here you can set up what you want your local site url to be as well as all the database settings that will be applied to your wp-config.php file.

Once you are happy with your setup navigate to the cli folder

    cd cli

### Run the two scripts:

    bash add-hosts.sh

This will add a hosts file entry for your site url so that you can access it with your custom url instead of "localhost"

    bash create-cert.sh

This uses the mkcert utility to generate ssl certificates and adds them to the certs folder. It may prompt you to enter your password to trust the certs when they are created.

### Run Docker

Now you are ready to go! Change directories back one:

    cd ..

Run docker compose and the images will be downloaded and your local instance will be setup and accessible at your custom url.

    docker-compose up