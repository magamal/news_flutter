plugins {
    id("java")
    id("org.springframework.boot") version "2.7.4"
    id("io.spring.dependency-management") version "1.0.14.RELEASE"
}

group = "org.magamal"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {

    val springBootVersion = "2.7.4"
    
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")


    implementation("org.springframework.boot:spring-boot-starter-web:${springBootVersion}")
    implementation("org.springframework.boot:spring-boot-starter-webflux:2.7.4")
    implementation ("org.projectlombok:lombok:1.18.24")
    annotationProcessor ("org.springframework.boot:spring-boot-configuration-processor:2.7.4")
    annotationProcessor ("org.projectlombok:lombok:1.18.24")
    implementation("com.github.tomakehurst:wiremock-jre8-standalone:2.34.0")
    implementation ("org.slf4j:slf4j-api:2.0.3")
    implementation ("org.slf4j:slf4j-log4j12:2.0.3")

    implementation ("org.apache.commons:commons-io:1.3.2")
}

tasks.test {
    useJUnitPlatform()
}