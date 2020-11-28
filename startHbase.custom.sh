echo "===================================="
echo "sh /opt/soft/hadoop/sbin/start-all.sh" && sleep 1;
sh /opt/soft/hadoop/sbin/start-all.sh && echo `jps`

echo "===================================="
echo "sh /opt/soft/zookeeper/bin/zkServer.sh start " && sleep 1;
sh /opt/soft/zookeeper/bin/zkServer.sh start 

echo "===================================="
echo "sh /opt/soft/hbase/bin/start-hbase.sh" && sleep 1;
sh /opt/soft/hbase/bin/start-hbase.sh && echo `jps`


