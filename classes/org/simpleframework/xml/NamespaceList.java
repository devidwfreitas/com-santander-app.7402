package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface NamespaceList {
  Namespace[] value() default {};
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\simpleframework\xml\NamespaceList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */