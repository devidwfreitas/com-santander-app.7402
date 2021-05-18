import dalvik.system.PathClassLoader;

public final class cya extends PathClassLoader {
  public cya(String paramString, ClassLoader paramClassLoader) {
    super(paramString, paramClassLoader);
  }
  
  protected Class<?> loadClass(String paramString, boolean paramBoolean) {
    if (!paramString.startsWith("java.") && !paramString.startsWith("android."))
      try {
        return findClass(paramString);
      } catch (ClassNotFoundException classNotFoundException) {} 
    return super.loadClass(paramString, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cya.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */