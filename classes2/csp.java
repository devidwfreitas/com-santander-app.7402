import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;

public final class csp {
  public static int a(int paramInt) {
    if (paramInt == 0)
      throw new IllegalArgumentException("Given Integer is zero"); 
    return paramInt;
  }
  
  public static int a(int paramInt, Object paramObject) {
    if (paramInt == 0)
      throw new IllegalArgumentException(String.valueOf(paramObject)); 
    return paramInt;
  }
  
  public static long a(long paramLong, Object paramObject) {
    if (paramLong == 0L)
      throw new IllegalArgumentException(String.valueOf(paramObject)); 
    return paramLong;
  }
  
  public static <T> T a(T paramT) {
    if (paramT == null)
      throw new NullPointerException("null reference"); 
    return paramT;
  }
  
  public static <T> T a(T paramT, Object paramObject) {
    if (paramT == null)
      throw new NullPointerException(String.valueOf(paramObject)); 
    return paramT;
  }
  
  public static String a(String paramString) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("Given String is empty or null"); 
    return paramString;
  }
  
  public static String a(String paramString, Object paramObject) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException(String.valueOf(paramObject)); 
    return paramString;
  }
  
  public static void a() {
    c("Must not be called on the main application thread");
  }
  
  public static void a(Handler paramHandler) {
    if (Looper.myLooper() != paramHandler.getLooper())
      throw new IllegalStateException("Must be called on the handler thread"); 
  }
  
  public static void a(boolean paramBoolean) {
    if (!paramBoolean)
      throw new IllegalStateException(); 
  }
  
  public static void a(boolean paramBoolean, Object paramObject) {
    if (!paramBoolean)
      throw new IllegalStateException(String.valueOf(paramObject)); 
  }
  
  public static void a(boolean paramBoolean, String paramString, Object... paramVarArgs) {
    if (!paramBoolean)
      throw new IllegalStateException(String.format(paramString, paramVarArgs)); 
  }
  
  public static void b(String paramString) {
    if (Looper.myLooper() != Looper.getMainLooper())
      throw new IllegalStateException(paramString); 
  }
  
  public static void b(boolean paramBoolean) {
    if (!paramBoolean)
      throw new IllegalArgumentException(); 
  }
  
  public static void b(boolean paramBoolean, Object paramObject) {
    if (!paramBoolean)
      throw new IllegalArgumentException(String.valueOf(paramObject)); 
  }
  
  public static void b(boolean paramBoolean, String paramString, Object... paramVarArgs) {
    if (!paramBoolean)
      throw new IllegalArgumentException(String.format(paramString, paramVarArgs)); 
  }
  
  public static void c(String paramString) {
    if (Looper.myLooper() == Looper.getMainLooper())
      throw new IllegalStateException(paramString); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */