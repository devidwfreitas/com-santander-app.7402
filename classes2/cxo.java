import android.os.IBinder;
import java.lang.reflect.Field;

public final class cxo<T> extends cwy {
  private final T a;
  
  private cxo(T paramT) {
    this.a = paramT;
  }
  
  public static <T> cwx a(T paramT) {
    return new cxo<T>(paramT);
  }
  
  public static <T> T a(cwx paramcwx) {
    Field field;
    int j = 0;
    if (paramcwx instanceof cxo)
      return ((cxo)paramcwx).a; 
    IBinder iBinder = paramcwx.asBinder();
    Field[] arrayOfField = iBinder.getClass().getDeclaredFields();
    paramcwx = null;
    int k = arrayOfField.length;
    int i;
    for (i = 0; i < k; i++) {
      Field field1 = arrayOfField[i];
      if (!field1.isSynthetic()) {
        j++;
        field = field1;
      } 
    } 
    if (j == 1) {
      if (!field.isAccessible()) {
        field.setAccessible(true);
        try {
          return (T)field.get(iBinder);
        } catch (NullPointerException nullPointerException) {
          throw new IllegalArgumentException("Binder object is null.", nullPointerException);
        } catch (IllegalAccessException illegalAccessException) {
          throw new IllegalArgumentException("Could not access the field in remoteBinder.", illegalAccessException);
        } 
      } 
      throw new IllegalArgumentException("IObjectWrapper declared field not private!");
    } 
    i = arrayOfField.length;
    throw new IllegalArgumentException((new StringBuilder(64)).append("Unexpected number of IObjectWrapper declared fields: ").append(i).toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */