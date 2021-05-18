import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public abstract class emq {
  public static emq a() {
    try {
      Class<?> clazz = Class.forName("sun.misc.Unsafe");
      Field field = clazz.getDeclaredField("theUnsafe");
      field.setAccessible(true);
      Object object = field.get(null);
      return new emr(clazz.getMethod("allocateInstance", new Class[] { Class.class }), object);
    } catch (Exception exception) {
      try {
        Method method = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[] { Class.class });
        method.setAccessible(true);
        int i = ((Integer)method.invoke(null, new Object[] { Object.class })).intValue();
        method = ObjectStreamClass.class.getDeclaredMethod("newInstance", new Class[] { Class.class, int.class });
        method.setAccessible(true);
        return new ems(method, i);
      } catch (Exception exception1) {
        try {
          Method method = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Class.class });
          method.setAccessible(true);
          return new emt(method);
        } catch (Exception exception2) {
          return new emu();
        } 
      } 
    } 
  }
  
  private static void c(Class<?> paramClass) {
    int i = paramClass.getModifiers();
    if (Modifier.isInterface(i))
      throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + paramClass.getName()); 
    if (Modifier.isAbstract(i))
      throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + paramClass.getName()); 
  }
  
  public abstract <T> T a(Class<T> paramClass);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */