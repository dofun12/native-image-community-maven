FROM ghcr.io/graalvm/native-image-community:25
RUN microdnf install maven -y
COPY pom.xml .
RUN mvn install -DskipTests
