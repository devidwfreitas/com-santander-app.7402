import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.measurement.AppMeasurement;

public class dkw extends dmu {
  private final String a = w().a();
  
  private final char b;
  
  private final long c = w().U();
  
  private final dky d;
  
  private final dky e;
  
  private final dky f;
  
  private final dky g;
  
  private final dky h;
  
  private final dky i;
  
  private final dky j;
  
  private final dky k;
  
  private final dky l;
  
  dkw(dlv paramdlv) {
    super(paramdlv);
    if (w().W()) {
      w().V();
      this.b = 'C';
    } else {
      w().V();
      this.b = 'c';
    } 
    this.d = new dky(this, 6, false, false);
    this.e = new dky(this, 6, true, false);
    this.f = new dky(this, 6, false, true);
    this.g = new dky(this, 5, false, false);
    this.h = new dky(this, 5, true, false);
    this.i = new dky(this, 5, false, true);
    this.j = new dky(this, 4, false, false);
    this.k = new dky(this, 3, false, false);
    this.l = new dky(this, 2, false, false);
  }
  
  protected static Object a(String paramString) {
    return (paramString == null) ? null : new dkz(paramString);
  }
  
  static String a(boolean paramBoolean, Object paramObject) {
    if (paramObject == null)
      return ""; 
    if (paramObject instanceof Integer)
      paramObject = Long.valueOf(((Integer)paramObject).intValue()); 
    if (paramObject instanceof Long) {
      if (!paramBoolean)
        return String.valueOf(paramObject); 
      if (Math.abs(((Long)paramObject).longValue()) < 100L)
        return String.valueOf(paramObject); 
      if (String.valueOf(paramObject).charAt(0) == '-') {
        String str1 = "-";
        paramObject = String.valueOf(Math.abs(((Long)paramObject).longValue()));
        long l3 = Math.round(Math.pow(10.0D, (paramObject.length() - 1)));
        long l4 = Math.round(Math.pow(10.0D, paramObject.length()) - 1.0D);
        return (new StringBuilder(String.valueOf(str1).length() + 43 + String.valueOf(str1).length())).append(str1).append(l3).append("...").append(str1).append(l4).toString();
      } 
      String str = "";
      paramObject = String.valueOf(Math.abs(((Long)paramObject).longValue()));
      long l1 = Math.round(Math.pow(10.0D, (paramObject.length() - 1)));
      long l2 = Math.round(Math.pow(10.0D, paramObject.length()) - 1.0D);
      return (new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(str).length())).append(str).append(l1).append("...").append(str).append(l2).toString();
    } 
    if (paramObject instanceof Boolean)
      return String.valueOf(paramObject); 
    if (paramObject instanceof Throwable) {
      Throwable throwable = (Throwable)paramObject;
      if (paramBoolean) {
        paramObject = throwable.getClass().getName();
      } else {
        paramObject = throwable.toString();
      } 
      paramObject = new StringBuilder((String)paramObject);
      String str1 = b(AppMeasurement.class.getCanonicalName());
      String str2 = b(dlv.class.getCanonicalName());
      for (StackTraceElement stackTraceElement : throwable.getStackTrace()) {
        if (!stackTraceElement.isNativeMethod()) {
          String str = stackTraceElement.getClassName();
          if (str != null) {
            str = b(str);
            if (str.equals(str1) || str.equals(str2)) {
              paramObject.append(": ");
              paramObject.append(stackTraceElement);
              break;
            } 
          } 
        } 
      } 
      return paramObject.toString();
    } 
    return (paramObject instanceof dkz) ? dkz.a((dkz)paramObject) : (paramBoolean ? "-" : String.valueOf(paramObject));
  }
  
  static String a(boolean paramBoolean, String paramString, Object paramObject1, Object paramObject2, Object paramObject3) {
    String str1 = paramString;
    if (paramString == null)
      str1 = ""; 
    String str2 = a(paramBoolean, paramObject1);
    paramObject2 = a(paramBoolean, paramObject2);
    paramObject3 = a(paramBoolean, paramObject3);
    StringBuilder stringBuilder = new StringBuilder();
    paramString = "";
    if (!TextUtils.isEmpty(str1)) {
      stringBuilder.append(str1);
      paramString = ": ";
    } 
    paramObject1 = paramString;
    if (!TextUtils.isEmpty(str2)) {
      stringBuilder.append(paramString);
      stringBuilder.append(str2);
      paramObject1 = ", ";
    } 
    Object object = paramObject1;
    if (!TextUtils.isEmpty((CharSequence)paramObject2)) {
      stringBuilder.append((String)paramObject1);
      stringBuilder.append((String)paramObject2);
      object = ", ";
    } 
    if (!TextUtils.isEmpty((CharSequence)paramObject3)) {
      stringBuilder.append((String)object);
      stringBuilder.append((String)paramObject3);
    } 
    return stringBuilder.toString();
  }
  
  private static String b(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return ""; 
    int i = paramString.lastIndexOf('.');
    String str = paramString;
    return (i != -1) ? paramString.substring(0, i) : str;
  }
  
  public dky A() {
    return this.i;
  }
  
  public dky B() {
    return this.j;
  }
  
  public dky C() {
    return this.k;
  }
  
  public dky D() {
    return this.l;
  }
  
  public String E() {
    Pair<String, Long> pair = (v()).b.a();
    if (pair == null || pair == dlh.a)
      return null; 
    String str1 = String.valueOf(String.valueOf(pair.second));
    String str2 = (String)pair.first;
    return (new StringBuilder(String.valueOf(str1).length() + 1 + String.valueOf(str2).length())).append(str1).append(":").append(str2).toString();
  }
  
  protected void a() {}
  
  protected void a(int paramInt, String paramString) {
    Log.println(paramInt, this.a, paramString);
  }
  
  public void a(int paramInt, String paramString, Object paramObject1, Object paramObject2, Object paramObject3) {
    csp.a(paramString);
    dlq dlq = this.n.k();
    if (dlq == null) {
      a(6, "Scheduler not set. Not logging error/warn");
      return;
    } 
    if (!dlq.Q()) {
      a(6, "Scheduler not initialized. Not logging error/warn");
      return;
    } 
    int i = paramInt;
    if (paramInt < 0)
      i = 0; 
    paramInt = i;
    if (i >= "01VDIWEA?".length())
      paramInt = "01VDIWEA?".length() - 1; 
    String str = String.valueOf("2");
    char c1 = "01VDIWEA?".charAt(paramInt);
    char c2 = this.b;
    long l = this.c;
    paramObject1 = String.valueOf(a(true, paramString, paramObject1, paramObject2, paramObject3));
    paramObject2 = (new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(paramObject1).length())).append(str).append(c1).append(c2).append(l).append(":").append((String)paramObject1).toString();
    paramObject1 = paramObject2;
    if (paramObject2.length() > 1024)
      paramObject1 = paramString.substring(0, 1024); 
    dlq.a(new dkx(this, (String)paramObject1));
  }
  
  protected void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString, Object paramObject1, Object paramObject2, Object paramObject3) {
    if (!paramBoolean1 && a(paramInt))
      a(paramInt, a(false, paramString, paramObject1, paramObject2, paramObject3)); 
    if (!paramBoolean2 && paramInt >= 5)
      a(paramInt, paramString, paramObject1, paramObject2, paramObject3); 
  }
  
  protected boolean a(int paramInt) {
    return Log.isLoggable(this.a, paramInt);
  }
  
  public dky x() {
    return this.d;
  }
  
  public dky y() {
    return this.e;
  }
  
  public dky z() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */