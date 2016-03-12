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
sudo mv spark-1.6.0-bin-hadoop2.6 spark

sudo echo "export SPARK_HOME=/home/vagrant/spark" >> ~/.profile && export SPARK_HOME=/home/vagrant/spark

sudo echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> ~/.profile && export JAVA_HOME=/usr/lib/jvm/java-8-oracle

sudo chmod 777 -R /home/vagrant/spark/

cd /home/vagrant/spark

sudo cp conf/spark-env.sh.template conf/spark-env.sh && sudo chmod 777 conf/spark-env.sh 
echo "SPARK_MASTER_IP='node1'" > conf/spark-env.sh 

sudo cp conf/spark-defaults.conf.template conf/spark-defaults.conf && sudo chmod 777 conf/spark-defaults.conf 
echo "spark.master		spark://node1:7077" > conf/spark-defaults.conf
echo "spark.executor.memory	1g" >> conf/spark-defaults.conf
echo "spark.eventLog.enabled	true" >> conf/spark-defaults.conf
echo "spark.eventLog.dir	file:///tmp/" >> conf/spark-defaults.conf
echo "spark.serializer       	org.apache.spark.serializer.KryoSerializer" >> conf/spark-defaults.conf

sudo cp conf/slaves.template conf/slaves && sudo chmod 777 conf/slaves 
echo "node2" > conf/slaves 
echo "node3" >> conf/slaves
