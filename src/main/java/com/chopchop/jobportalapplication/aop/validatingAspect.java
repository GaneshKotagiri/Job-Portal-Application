package com.chopchop.jobportalapplication.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;


@Component
@Aspect
public class validatingAspect {
     public static final Logger logger= LoggerFactory.getLogger(validatingAspect.class);

     @Around("execution(* com.chopchop.jobportalapplication.service.*(..)) && args(id)")
     public Object validateMethod(ProceedingJoinPoint jp,int id) throws Throwable {

         if(id<0){
             logger.info("Id of the job is negative, updating it");
             id=-id;
             logger.info("New Id: "+id);
         }
         Object obj=jp.proceed(new Object[] {id});

         return obj;
     }
}
