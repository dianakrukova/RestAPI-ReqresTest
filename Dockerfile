#FROM openjdk:17-jre-slim
FROM maven:3.9.6-eclipse-temurin-17-alpine
WORKDIR /app
COPY . .
#COPY pom.xml /app
#Устанавливаем Maven (если используете Maven для сборки)
#RUN mvn dependency:go-offline

# Копируем исходный код и выполняем сборку
#COPY src ./src
#RUN mvn clean package

#Устанавливаем Chrome и ChromeDriver
#RUN apt-get update && apt-get install -y \
#    wget \
 #   unzip \
#    gnupg \
 #   && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
 #   && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
 #   && apt-get update \
 #   && apt-get install -y google-chrome-stable \
 #   && wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/$(curl -s https://chromedriver.storage.googleapis.com/LATEST_RELEASE)/chromedriver_linux64.zip \
 #   && unzip /tmp/chromedriver.zip -d /usr/bin/ \
 #   && rm /tmp/chromedriver.zip \
 #   && chmod +x /usr/bin/chromedriver

#Указываем команду для запуска тестов
CMD ["mvn", "test"]
#docker build -t selenium-java-tests .