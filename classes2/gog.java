import android.util.Log;

public class gog<E, T> implements gof<E, T> {
  public T a(E paramE, Class paramClass, String paramString1, String paramString2, String paramString3) {
    mzd mzd = new mzd();
    if (paramE != null) {
      try {
        String str = mzd.a(paramE, paramString2);
        str = jcd.a(paramString1, str, "", false);
      } catch (Exception exception) {
        Log.e("ERROR_PARSER", exception.getMessage());
      } 
    } else {
      String str = mzd.a(paramString2);
      str = jcd.a(paramString1, str, "", false);
    } 
    return null;
  }
  
  public T a(E paramE, Class paramClass, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean) {
    mzd<E> mzd = new mzd();
    E e = null;
    try {
      paramString1 = jcd.a(paramString1, mzd.a(paramE, paramString2, paramString4), "", paramBoolean);
      paramE = e;
      if (paramString1 != null)
        paramE = mzd.a(paramClass, mzd.a(paramString1, paramString3, Boolean.valueOf(false))); 
      return (T)paramE;
    } catch (Exception exception) {
      Log.e("ERROR_PARSER", exception.getMessage());
      return null;
    } 
  }
  
  public T a(E paramE, Class paramClass, String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    mzd<E> mzd = new mzd();
    E e = null;
    try {
      paramString1 = jcd.a(paramString1, mzd.a(paramE, paramString2), "", paramBoolean);
      paramE = e;
      if (paramString1 != null)
        paramE = mzd.a(paramClass, mzd.a(paramString1, paramString3, Boolean.valueOf(false))); 
      return (T)paramE;
    } catch (Exception exception) {
      Log.e("ERROR_PARSER", exception.getMessage());
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */