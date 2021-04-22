echo '<?xml version="1.0"?>' > /etc/hadoop/hdfs-site.xml
echo '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' >> /etc/hadoop/hdfs-site.xml 
echo ' ' >> /etc/hadoop/hdfs-site.xml
echo '<!-- Put site-specific property overrides in this file. -->' >> /etc/hadoop/hdfs-site.xml
echo ' ' >> /etc/hadoop/hdfs-site.xml
echo '<configuration>' >> /etc/hadoop/hdfs-site.xml
echo '<property>' >> /etc/hadoop/hdfs-site.xml
echo '<name>dfs.data.dir</name>' >> /etc/hadoop/hdfs-site.xml
echo '<value>/datanode</value>' >> /etc/hadoop/hdfs-site.xml
echo '</property>' >> /etc/hadoop/hdfs-site.xml
echo '</configuration>' >> /etc/hadoop/hdfs-site.xml

echo '<?xml version="1.0"?>' > /etc/hadoop/core-site.xml
echo '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' >> /etc/hadoop/core-site.xml 
echo ' ' >> /etc/hadoop/core-site.xml
echo '<!-- Put site-specific property overrides in this file. -->' >> /etc/hadoop/core-site.xml
echo ' ' >> /etc/hadoop/core-site.xml
echo '<configuration>' >> /etc/hadoop/core-site.xml
echo '<property>' >> /etc/hadoop/core-site.xml
echo '<name>fs.default.name</name>' >> /etc/hadoop/core-site.xml
echo '<value>hdfs://65.0.86.167:9001</value>' >> /etc/hadoop/core-site.xml
echo '</property>' >> /etc/hadoop/core-site.xml
echo '</configuration>' >> /etc/hadoop/core-site.xml

echo 3 > /proc/sys/vm/drop_caches
mkdir /datanode
hadoop-daemon.sh start datanode
jps

