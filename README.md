# pet

## how to run
1. run **db_pet.sql** to create dabase.
2. update file in "pet/src/main/webapp/connection.jsp", replace ```conn_url```、```conn_user``` and ```conn_passwd``` with your own database setting.
3. build this project using command: ```mvn clean package```
4. run jetty: ```mvn jetty:run```
5. open the broser and input the url:```http://localhost:8081/shouye.jsp```