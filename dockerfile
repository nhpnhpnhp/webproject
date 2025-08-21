# Chọn base image Tomcat có sẵn JDK11
FROM tomcat:9.0-jdk11

# Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào thư mục webapps, đổi tên thành ROOT.war để chạy ở root context
COPY webproject.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080
