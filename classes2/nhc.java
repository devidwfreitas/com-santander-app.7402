import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;

public final class nhc implements nje, njj {
  private final Context a;
  
  private volatile int b;
  
  public nhc(Context paramContext, String paramString) {
    this.a = paramContext.getApplicationContext();
    this.b = a(paramString);
  }
  
  private static int a(String paramString) {
    int i = 2;
    paramString = paramString.toLowerCase(Locale.ROOT);
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            i = Integer.MAX_VALUE;
          case 0:
            return i;
          case 1:
            return 4;
          case 2:
            break;
        } 
        return 7;
      case 99349:
        if (paramString.equals("dev"))
          b = 0; 
      case 3600:
        if (paramString.equals("qa"))
          b = 1; 
      case 3449687:
        break;
    } 
    if (paramString.equals("prod"))
      b = 2; 
  }
  
  public void a(int paramInt) {
    if (e())
      Log.e("Tealium-5.2.0", this.a.getString(paramInt)); 
  }
  
  public void a(int paramInt, Throwable paramThrowable) {
    if (this.b <= 7)
      Log.wtf("Tealium-5.2.0", this.a.getString(paramInt), paramThrowable); 
  }
  
  public void a(int paramInt, Throwable paramThrowable, Object... paramVarArgs) {
    if (e())
      Log.e("Tealium-5.2.0", this.a.getString(paramInt, paramVarArgs), paramThrowable); 
  }
  
  public void a(int paramInt, Object... paramVarArgs) {
    if (this.b == 2)
      Log.v("Tealium-5.2.0", this.a.getString(paramInt, paramVarArgs)); 
  }
  
  public void a(Throwable paramThrowable) {
    a(nkf.logger_error_caught_exception, paramThrowable, new Object[0]);
  }
  
  public void a(nil paramnil) {
    String str;
    if (!b())
      return; 
    Context context = this.a;
    int i = nkf.logger_dispatch_send;
    if ("true".equals(paramnil.c("was_queued"))) {
      str = "queued";
    } else {
      str = "new";
    } 
    Log.d("Tealium-5.2.0", context.getString(i, new Object[] { str, paramnil.d() }));
  }
  
  public void a(nin paramnin) {
    if (!TextUtils.isEmpty(paramnin.g()))
      this.b = a(paramnin.g()); 
    c(nkf.logger_rcvd_publish_settings, new Object[] { paramnin });
  }
  
  public boolean a() {
    return (this.b == 2);
  }
  
  public void b(int paramInt, Object... paramVarArgs) {
    if (b())
      Log.d("Tealium-5.2.0", this.a.getString(paramInt, paramVarArgs)); 
  }
  
  public void b(Throwable paramThrowable) {
    if (this.b <= 7)
      Log.wtf("Tealium-5.2.0", paramThrowable); 
  }
  
  public boolean b() {
    return (this.b <= 3);
  }
  
  public void c(int paramInt, Object... paramVarArgs) {
    if (c())
      Log.i("Tealium-5.2.0", this.a.getString(paramInt, paramVarArgs)); 
  }
  
  public boolean c() {
    return (this.b <= 4);
  }
  
  public void d(int paramInt, Object... paramVarArgs) {
    if (e())
      Log.e("Tealium-5.2.0", this.a.getString(paramInt, paramVarArgs)); 
  }
  
  public boolean d() {
    return (this.b <= 5);
  }
  
  public void e(int paramInt, Object... paramVarArgs) {
    if (d())
      Log.w("Tealium-5.2.0", this.a.getString(paramInt, paramVarArgs)); 
  }
  
  public boolean e() {
    return (this.b <= 6);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */