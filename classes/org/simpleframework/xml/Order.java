package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface Order {
  String[] attributes() default {};
  
  String[] elements() default {};
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\simpleframework\xml\Order.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */