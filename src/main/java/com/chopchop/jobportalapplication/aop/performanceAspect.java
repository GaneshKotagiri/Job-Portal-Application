package com.chopchop.jobportalapplication.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class performanceAspect {

    public static final Logger logger= LoggerFactory.getLogger(performanceAspect.class);

    @Around("execution(* com.chopchop.jobportalapplication.service.jobService.*(..))")
    public Object callTime(ProceedingJoinPoint jp) throws Throwable {
        long start=System.currentTimeMillis();
        Object obj=jp.proceed();

        long end=System.currentTimeMillis();

        logger.info("Time taken to call and execute the method: "+ jp.getSignature().getName()+" is: " +(start-end)+"ms");

        return obj;
    }

}
