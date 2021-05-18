package org.simpleframework.xml.strategy;

class Loader {
  private static ClassLoader getCallerClassLoader() {
    return Loader.class.getClassLoader();
  }
  
  private static ClassLoader getClassLoader() {
    return Thread.currentThread().getContextClassLoader();
  }
  
  public Class load(String paramString) {
    ClassLoader classLoader2 = getClassLoader();
    ClassLoader classLoader1 = classLoader2;
    if (classLoader2 == null)
      classLoader1 = getCallerClassLoader(); 
    return classLoader1.loadClass(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\Loader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */