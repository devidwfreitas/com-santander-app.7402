import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import android.util.Pair;

public final class dll {
  final String a;
  
  private final String c;
  
  private final String d;
  
  private final long e;
  
  private dll(dlh paramdlh, String paramString, long paramLong) {
    boolean bool;
    csp.a(paramString);
    if (paramLong > 0L) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool);
    this.a = String.valueOf(paramString).concat(":start");
    this.c = String.valueOf(paramString).concat(":count");
    this.d = String.valueOf(paramString).concat(":value");
    this.e = paramLong;
  }
  
  @WorkerThread
  private void b() {
    this.b.e();
    long l = this.b.m().a();
    SharedPreferences.Editor editor = dlh.a(this.b).edit();
    editor.remove(this.c);
    editor.remove(this.d);
    editor.putLong(this.a, l);
    editor.apply();
  }
  
  @WorkerThread
  private long c() {
    this.b.e();
    long l = d();
    if (l == 0L) {
      b();
      return 0L;
    } 
    return Math.abs(l - this.b.m().a());
  }
  
  @WorkerThread
  private long d() {
    return dlh.c(this.b).getLong(this.a, 0L);
  }
  
  @WorkerThread
  public Pair<String, Long> a() {
    this.b.e();
    long l = c();
    if (l < this.e)
      return null; 
    if (l > this.e * 2L) {
      b();
      return null;
    } 
    String str = dlh.c(this.b).getString(this.d, null);
    l = dlh.c(this.b).getLong(this.c, 0L);
    b();
    return (str == null || l <= 0L) ? dlh.a : new Pair(str, Long.valueOf(l));
  }
  
  @WorkerThread
  public void a(String paramString) {
    a(paramString, 1L);
  }
  
  @WorkerThread
  public void a(String paramString, long paramLong) {
    boolean bool;
    this.b.e();
    if (d() == 0L)
      b(); 
    String str = paramString;
    if (paramString == null)
      str = ""; 
    long l = dlh.a(this.b).getLong(this.c, 0L);
    if (l <= 0L) {
      SharedPreferences.Editor editor1 = dlh.a(this.b).edit();
      editor1.putString(this.d, str);
      editor1.putLong(this.c, paramLong);
      editor1.apply();
      return;
    } 
    if ((dlh.b(this.b).nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / (l + paramLong) * paramLong) {
      bool = true;
    } else {
      bool = false;
    } 
    SharedPreferences.Editor editor = dlh.a(this.b).edit();
    if (bool)
      editor.putString(this.d, str); 
    editor.putLong(this.c, l + paramLong);
    editor.apply();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */