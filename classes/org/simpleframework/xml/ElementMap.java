package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface ElementMap {
  boolean attribute() default false;
  
  boolean data() default false;
  
  boolean empty() default true;
  
  String entry() default "";
  
  boolean inline() default false;
  
  String key() default "";
  
  Class keyType() default void.class;
  
  String name() default "";
  
  boolean required() default true;
  
  String value() default "";
  
  Class valueType() default void.class;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\simpleframework\xml\ElementMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */