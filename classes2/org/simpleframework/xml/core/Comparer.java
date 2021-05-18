package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

class Comparer {
  private static final String NAME = "name";
  
  private final String[] ignore;
  
  public Comparer() {
    this(new String[] { "name" });
  }
  
  public Comparer(String... paramVarArgs) {
    this.ignore = paramVarArgs;
  }
  
  private boolean isIgnore(Method paramMethod) {
    boolean bool2 = false;
    String str = paramMethod.getName();
    boolean bool1 = bool2;
    if (this.ignore != null) {
      String[] arrayOfString = this.ignore;
      int j = arrayOfString.length;
      for (int i = 0;; i++) {
        bool1 = bool2;
        if (i < j) {
          if (str.equals(arrayOfString[i]))
            return true; 
        } else {
          return bool1;
        } 
      } 
    } 
    return bool1;
  }
  
  public boolean equals(Annotation paramAnnotation1, Annotation paramAnnotation2) {
    Class<? extends Annotation> clazz1 = paramAnnotation1.annotationType();
    Class<? extends Annotation> clazz2 = paramAnnotation2.annotationType();
    Method[] arrayOfMethod = clazz1.getDeclaredMethods();
    if (clazz1.equals(clazz2)) {
      int j = arrayOfMethod.length;
      int i = 0;
      while (i < j) {
        Method method = arrayOfMethod[i];
        if (isIgnore(method) || method.invoke(paramAnnotation1, new Object[0]).equals(method.invoke(paramAnnotation2, new Object[0]))) {
          i++;
          continue;
        } 
        return false;
      } 
    } else {
      return false;
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Comparer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */