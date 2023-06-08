package com.exercise.controller;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class CronExpressionConfig {
    @Bean
    public CronExpressionParser cronExpressionParser() {
        return new CronExpressionParser();
    }
}