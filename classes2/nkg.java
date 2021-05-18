import android.text.TextUtils;
import java.util.EventListener;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class nkg {
  private static final Map<String, nkg> a = new ConcurrentHashMap<String, nkg>();
  
  private final nhp b;
  
  private final njz c;
  
  private final String d;
  
  private final String e;
  
  private final String f;
  
  private volatile ngm g;
  
  private nkg(nkj paramnkj, nhp paramnhp) {
    this.d = paramnkj.c();
    this.e = paramnkj.d();
    this.f = paramnkj.e();
    this.c = new njz(paramnkj);
    this.b = paramnhp;
    paramnhp.a(this.c.d());
    paramnhp.a(g());
  }
  
  public static nkg a(String paramString, nkj paramnkj) {
    if (paramString == null || paramnkj == null)
      throw new IllegalArgumentException("key and config must be non-null"); 
    paramnkj = nkj.a(paramnkj);
    nhp nhp1 = nku.a(paramnkj.o());
    Iterator<EventListener> iterator = paramnkj.j().iterator();
    while (iterator.hasNext())
      nhp1.a(iterator.next()); 
    nkg nkg1 = new nkg(paramnkj, nhp1);
    a.put(paramString, nkg1);
    nkg1.b.a(new nkm(paramnkj, nkg1.b));
    nkg1.b.a(new nkq(paramnkj, nkg1.b, nkg1.c));
    nkg1.b.b(nkg1.b(paramString, paramnkj));
    return nkg1;
  }
  
  private void a(nil paramnil) {
    if (paramnil == null)
      throw new IllegalArgumentException(); 
    this.b.b(new nic(paramnil));
    this.b.b(new nhy(paramnil));
  }
  
  private Runnable b(String paramString, nkj paramnkj) {
    return new nki(this, paramnkj, paramString);
  }
  
  public static nkg b(String paramString) {
    return (paramString == null) ? null : a.get(paramString);
  }
  
  public static void c(String paramString) {
    if (paramString != null) {
      nkg nkg1 = a.remove(paramString);
      if (nkg1 != null) {
        nkg1.b.b(new nhw(nkg1));
        return;
      } 
    } 
  }
  
  private ngk g() {
    return new nkh(this);
  }
  
  public String a() {
    return this.d;
  }
  
  public void a(String paramString) {
    this.b.b(new nif(paramString, false));
  }
  
  public void a(String paramString1, String paramString2, Map<String, ?> paramMap) {
    nil nil = new nil(paramMap);
    paramString1 = nkb.a(paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      nil.a("link_id", paramString2);
      nil.b("event_name", paramString2);
      nil.b("tealium_event", paramString2);
    } 
    if (paramString1.equals("view")) {
      nil.b("call_type", "view");
    } else {
      nil.b("call_type", "link");
    } 
    nil.b("tealium_event_type", paramString1);
    a(nil);
  }
  
  public void a(String paramString, Map<String, ?> paramMap) {
    nil nil = new nil(paramMap);
    if (!TextUtils.isEmpty(paramString))
      nil.a("screen_title", paramString); 
    nil.b("page_type", "mobile_view");
    nil.b("call_type", "view");
    nil.b("tealium_event_type", "view");
    a(nil);
  }
  
  public void a(Map<String, ?> paramMap) {
    // Byte code:
    //   0: aload_1
    //   1: ifnull -> 91
    //   4: aload_1
    //   5: ldc 'timestamp_unix'
    //   7: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   12: checkcast java/lang/String
    //   15: astore #4
    //   17: aload #4
    //   19: ifnull -> 91
    //   22: aload #4
    //   24: invokestatic valueOf : (Ljava/lang/String;)Ljava/lang/Long;
    //   27: invokevirtual longValue : ()J
    //   30: lstore_2
    //   31: lload_2
    //   32: ldc2_w 1000
    //   35: lmul
    //   36: lstore_2
    //   37: lload_2
    //   38: ldc2_w -9223372036854775808
    //   41: lcmp
    //   42: ifne -> 69
    //   45: new nil
    //   48: dup
    //   49: aload_1
    //   50: invokespecial <init> : (Ljava/util/Map;)V
    //   53: astore_1
    //   54: aload_0
    //   55: aload_1
    //   56: invokespecial a : (Lnil;)V
    //   59: return
    //   60: astore #4
    //   62: ldc2_w -9223372036854775808
    //   65: lstore_2
    //   66: goto -> 37
    //   69: new nil
    //   72: dup
    //   73: lload_2
    //   74: invokespecial <init> : (J)V
    //   77: astore #4
    //   79: aload #4
    //   81: aload_1
    //   82: invokevirtual a : (Ljava/util/Map;)V
    //   85: aload #4
    //   87: astore_1
    //   88: goto -> 54
    //   91: ldc2_w -9223372036854775808
    //   94: lstore_2
    //   95: goto -> 37
    // Exception table:
    //   from	to	target	type
    //   22	31	60	java/lang/NumberFormatException
  }
  
  public void a(njq paramnjq) {
    if (paramnjq == null)
      throw new IllegalArgumentException(); 
    this.b.a(new nhs(paramnjq));
  }
  
  public String b() {
    return this.e;
  }
  
  public void b(String paramString, Map<String, ?> paramMap) {
    nil nil = new nil(paramMap);
    if (!TextUtils.isEmpty(paramString)) {
      nil.a("link_id", paramString);
      nil.b("event_name", paramString);
      nil.b("tealium_event", paramString);
    } 
    nil.b("call_type", "link");
    nil.b("tealium_event_type", "activity");
    a(nil);
  }
  
  public void b(njq paramnjq) {
    if (paramnjq == null)
      throw new IllegalArgumentException(); 
    this.b.a(new nie(paramnjq));
  }
  
  public String c() {
    return this.f;
  }
  
  public void d() {
    this.b.b(new nif(null, false));
  }
  
  public njz e() {
    return this.c;
  }
  
  public ngm f() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */