#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@https://github.com/barkinkzlkaya/blogproject.git
cd /home/ubuntu/blogproject
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/blogproject/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80