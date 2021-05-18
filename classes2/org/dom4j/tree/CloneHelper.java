package org.dom4j.tree;

import java.lang.reflect.Field;

final class CloneHelper {
  public static <T> void setFinalContent(Class<T> paramClass, T paramT) {
    setFinalField(paramClass, paramT, "content", new LazyList());
  }
  
  public static <T> void setFinalField(Class<T> paramClass, T paramT, String paramString, Object paramObject) {
    try {
      Field field = paramClass.getDeclaredField(paramString);
      field.setAccessible(true);
      field.set(paramT, paramObject);
      return;
    } catch (NoSuchFieldException noSuchFieldException) {
      throw new RuntimeException(noSuchFieldException);
    } catch (IllegalAccessException illegalAccessException) {
      throw new RuntimeException(illegalAccessException);
    } 
  }
  
  public static <T> void setFinalLazyList(Class<T> paramClass, T paramT, String paramString) {
    setFinalField(paramClass, paramT, paramString, new LazyList());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\CloneHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */