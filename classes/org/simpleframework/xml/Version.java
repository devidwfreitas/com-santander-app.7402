package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface Version {
  String name() default "";
  
  boolean required() default false;
  
  double revision() default 1.0D;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\simpleframework\xml\Version.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */