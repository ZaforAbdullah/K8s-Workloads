To create StatefulSet, service, persistent volume/persistent volume claim object
```
kubectl apply -f statefulSets.yaml
```
Port forwarding to service/mysql-service
```
kubectl port-forward service/mysql-service 3306:3306
```
Install mysql client for Ubuntu
```
sudo apt install mysql-client-core-8.0
```
CLI access to MySQL
```
mysql -h 127.0.0.1 -u root -p
Enter password: password
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.4.0 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use database;
Database changed

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| database           |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.01 sec)

```
To remove StatefulSet, service, persistent volume/persistent volume claim object
```
kubectl delete -f statefulSets.yaml
```