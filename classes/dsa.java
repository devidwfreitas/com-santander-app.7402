import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;

public abstract class dsa<T> implements Comparable<dsa<T>> {
  private final dsn a;
  
  private final int b;
  
  private final String c;
  
  private final int d;
  
  private final dsf e;
  
  private Integer f;
  
  private dsd g;
  
  private boolean h;
  
  private boolean i;
  
  private boolean j;
  
  private boolean k;
  
  private dsi l;
  
  private dps m;
  
  public dsa(int paramInt, String paramString, dsf paramdsf) {
    dsn dsn1;
    if (dsn.a) {
      dsn1 = new dsn();
    } else {
      dsn1 = null;
    } 
    this.a = dsn1;
    this.h = true;
    this.i = false;
    this.j = false;
    this.k = false;
    this.m = null;
    this.b = paramInt;
    this.c = paramString;
    this.e = paramdsf;
    a((dsi)new drr());
    this.d = a(paramString);
  }
  
  private static int a(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      Uri uri = Uri.parse(paramString);
      if (uri != null) {
        String str = uri.getHost();
        if (str != null)
          return str.hashCode(); 
      } 
    } 
    return 0;
  }
  
  public int a() {
    return this.b;
  }
  
  public int a(dsa<T> paramdsa) {
    dsc dsc1 = m();
    dsc dsc2 = paramdsa.m();
    return (dsc1 == dsc2) ? (this.f.intValue() - paramdsa.f.intValue()) : (dsc2.ordinal() - dsc1.ordinal());
  }
  
  public final dsa<?> a(int paramInt) {
    this.f = Integer.valueOf(paramInt);
    return this;
  }
  
  public dsa<?> a(dps paramdps) {
    this.m = paramdps;
    return this;
  }
  
  public dsa<?> a(dsd paramdsd) {
    this.g = paramdsd;
    return this;
  }
  
  public dsa<?> a(dsi paramdsi) {
    this.l = paramdsi;
    return this;
  }
  
  protected abstract dse<T> a(dry paramdry);
  
  protected dsl a(dsl paramdsl) {
    return paramdsl;
  }
  
  protected abstract void a(T paramT);
  
  public int b() {
    return this.d;
  }
  
  public void b(dsl paramdsl) {
    if (this.e != null)
      this.e.a(paramdsl); 
  }
  
  public void b(String paramString) {
    if (dsn.a)
      this.a.a(paramString, Thread.currentThread().getId()); 
  }
  
  public String c() {
    return this.c;
  }
  
  void c(String paramString) {
    long l;
    if (this.g != null)
      this.g.b(this); 
    if (dsn.a) {
      l = Thread.currentThread().getId();
      if (Looper.myLooper() != Looper.getMainLooper()) {
        (new Handler(Looper.getMainLooper())).post((Runnable)new dsb(this, paramString, l));
        return;
      } 
    } else {
      return;
    } 
    this.a.a(paramString, l);
    this.a.a(toString());
  }
  
  public String d() {
    return c();
  }
  
  public dps e() {
    return this.m;
  }
  
  public Map<String, String> f() {
    return Collections.emptyMap();
  }
  
  @Deprecated
  public String g() {
    return j();
  }
  
  @Deprecated
  public byte[] h() {
    return null;
  }
  
  protected String i() {
    return "UTF-8";
  }
  
  public String j() {
    return "application/x-www-form-urlencoded; charset=" + i();
  }
  
  public byte[] k() {
    return null;
  }
  
  public final boolean l() {
    return this.h;
  }
  
  public dsc m() {
    return dsc.zzT;
  }
  
  public final int n() {
    return this.l.a();
  }
  
  public dsi o() {
    return this.l;
  }
  
  public void p() {
    this.j = true;
  }
  
  public boolean q() {
    return this.j;
  }
  
  public String toString() {
    String str = "0x" + Integer.toHexString(b());
    return "[ ] " + c() + " " + str + " " + m() + " " + this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dsa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */