# base image
FROM amazoncorretto:21-alpine

# 변수 선언 변수 이름 JAR_FILE = build/libs 안의 모든 .jar파일 전부를 대상.
ARG JAR_FILE=build/libs/*.jar

# 위에서 선언한 변수를 app.jar로 복사해서 도커 컨테이너 내부에 복사
COPY ${JAR_FILE} app.jar

# 컨테이너 시작 시 실행할 명령어 여기선 java -jar /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]