package org.simpleframework.xml.transform;

class ClassTransform implements Transform<Class> {
  private static final String BOOLEAN = "boolean";
  
  private static final String BYTE = "byte";
  
  private static final String CHARACTER = "char";
  
  private static final String DOUBLE = "double";
  
  private static final String FLOAT = "float";
  
  private static final String INTEGER = "int";
  
  private static final String LONG = "long";
  
  private static final String SHORT = "short";
  
  private static final String VOID = "void";
  
  private ClassLoader getCallerClassLoader() {
    return getClass().getClassLoader();
  }
  
  private static ClassLoader getClassLoader() {
    return Thread.currentThread().getContextClassLoader();
  }
  
  private Class readPrimitive(String paramString) {
    return (Class)(paramString.equals("byte") ? byte.class : (paramString.equals("short") ? short.class : (paramString.equals("int") ? int.class : (paramString.equals("long") ? long.class : (paramString.equals("char") ? char.class : (paramString.equals("float") ? float.class : (paramString.equals("double") ? double.class : (paramString.equals("boolean") ? boolean.class : (paramString.equals("void") ? void.class : null)))))))));
  }
  
  public Class read(String paramString) {
    Class clazz1 = readPrimitive(paramString);
    Class<?> clazz = clazz1;
    if (clazz1 == null) {
      ClassLoader classLoader2 = getClassLoader();
      ClassLoader classLoader1 = classLoader2;
      if (classLoader2 == null)
        classLoader1 = getCallerClassLoader(); 
      clazz = classLoader1.loadClass(paramString);
    } 
    return clazz;
  }
  
  public String write(Class paramClass) {
    return paramClass.getName();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\ClassTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */