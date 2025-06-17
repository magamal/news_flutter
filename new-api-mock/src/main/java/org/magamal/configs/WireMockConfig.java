package org.magamal.configs;


import com.github.tomakehurst.wiremock.WireMockServer;
import com.github.tomakehurst.wiremock.extension.responsetemplating.ResponseTemplateTransformer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;

import static com.github.tomakehurst.wiremock.core.WireMockConfiguration.wireMockConfig;

@Configuration
public class WireMockConfig {
    @Value("${wiremock.mapping.path}")
    private String wireMockPath;

    @Value("${wiremock.port}")
    private Integer wireMockPort;


    @Bean(initMethod = "start", destroyMethod = "stop")
    WireMockServer wireMockServer() throws IOException {
        ClassPathResource resource = new ClassPathResource(wireMockPath);
        return new WireMockServer(
                wireMockConfig()
                        .port(wireMockPort)
                        .extensions(new ResponseTemplateTransformer(true))
                        .usingFilesUnderDirectory(resource.getFile().getAbsolutePath())
        );
    }
}
