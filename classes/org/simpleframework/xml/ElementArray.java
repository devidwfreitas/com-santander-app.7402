package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface ElementArray {
  boolean data() default false;
  
  boolean empty() default true;
  
  String entry() default "";
  
  String name() default "";
  
  boolean required() default true;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\simpleframework\xml\ElementArray.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */