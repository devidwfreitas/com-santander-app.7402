package org.simpleframework.xml.transform;

public interface Transform<T> {
  T read(String paramString);
  
  String write(T paramT);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\Transform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */