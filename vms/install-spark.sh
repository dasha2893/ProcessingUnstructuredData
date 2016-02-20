#!/usr/bin/env bash
sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

sudo wget http://apache-mirror.rbc.ru/pub/apache/spark/spark-1.6.0/spark-1.6.0-bin-hadoop2.6.tgz -P /home/vagrant
cd /home/vagrant
sudo tar zxvf spark-1.6.0-bin-hadoop2.6.tgz
sudo rm spark-1.6.0-bin-hadoop2.6.tgz