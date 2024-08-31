package com.chopchop.jobportalapplication.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class loggingAspect {

    public static final Logger logger= LoggerFactory.getLogger(loggingAspect.class);

    @Before("execution(* com.chopchop.jobportalapplication.service.jobService.*(..))")
    public void beforeCall(JoinPoint jp){
        logger.info(jp.getSignature().getName()+" Method is being called!");
    }
    @After("execution(* com.chopchop.jobportalapplication.service.jobService.*(..))")
    public void afterCall(JoinPoint jp){
        logger.info(jp.getSignature().getName()+" Method Executed");
    }
    @AfterThrowing("execution(* com.chopchop.jobportalapplication.service.jobService.*(..))")
    public void exceptionCall(JoinPoint jp){
        logger.info("This method "+ jp.getSignature().getName()+" has an error");
    }
    @AfterReturning("execution(* com.chopchop.jobportalapplication.service.jobService.*(..))")
    public void executedCall(JoinPoint jp){
        logger.info("The method "+jp.getSignature().getName()+" executed successfully without Exception!");
    }
}
