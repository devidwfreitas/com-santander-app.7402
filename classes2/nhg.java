import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.android.app.CaMDOWebView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;

public final class nhg implements njd, nje, njf, njj, njn, njo {
  private final ngq a;
  
  private final AtomicInteger b;
  
  private final SimpleDateFormat c;
  
  private final nhp d;
  
  private final nhc e;
  
  private final nkj f;
  
  private final String g;
  
  private final njx h;
  
  private boolean i;
  
  private long j;
  
  private volatile long k;
  
  private String l;
  
  private volatile WebView m;
  
  public nhg(nkj paramnkj, nhp paramnhp) {
    String str;
    this.f = paramnkj;
    if (paramnkj.g() == null) {
      str = paramnkj.f();
    } else {
      str = paramnkj.g();
    } 
    this.g = str;
    this.a = ngq.a((Context)paramnkj.b());
    this.b = new AtomicInteger(0);
    this.e = paramnkj.o();
    this.d = paramnhp;
    this.h = new njx(paramnkj, this.d);
    this.c = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.ROOT);
    this.c.setTimeZone(TimeZone.getTimeZone("GMT"));
    this.k = Long.MIN_VALUE;
    a(paramnkj.q());
    this.d.a(b());
  }
  
  private Runnable a(boolean paramBoolean, String paramString) {
    return new nhh(this, paramBoolean, paramString);
  }
  
  private nik a(int paramInt) {
    return new nhm(this, paramInt);
  }
  
  private static WebChromeClient b(nhc paramnhc) {
    return new nhn(paramnhc);
  }
  
  private Runnable b() {
    return new nhi(this);
  }
  
  private void c(nil paramnil) {
    String str = String.format(Locale.ROOT, "utag.track(\"%s\", %s)", new Object[] { "remote_api", paramnil.c() });
    this.d.a(new nia(str));
  }
  
  private boolean c() {
    boolean bool;
    if (this.i && !this.a.a()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (this.m != null && !bool && this.a.b() && 1 != this.b.getAndSet(1)) {
      byte b;
      StringBuilder stringBuilder = new StringBuilder();
      if (this.g.contains("?")) {
        b = 38;
      } else {
        b = 63;
      } 
      String str = stringBuilder.append(b).append("timestamp_unix=").append(System.currentTimeMillis() / 1000L).toString();
      str = this.g + str;
      if (nip.a()) {
        try {
          CaMDOWebView.loadUrl(this.m, str);
        } catch (Throwable throwable) {
          this.e.d(nkf.webview_dispatcher_error_loading_url, new Object[] { str, this.m });
        } 
        return true;
      } 
      this.d.a(new nhj(this, str));
      return true;
    } 
    return false;
  }
  
  private void d() {
    int i;
    if (this.i && !this.a.a()) {
      i = 1;
    } else {
      i = 0;
    } 
    if (!i && this.a.b()) {
      i = this.b.getAndSet(1);
      if (1 != i) {
        String str = this.c.format(new Date(this.k));
        Runnable runnable = nii.a(this.g).a("Accept-Encoding", "*").a("If-Modified-Since", str).a(a(i)).a();
        this.d.c(runnable);
        return;
      } 
    } 
  }
  
  private boolean e() {
    return (SystemClock.elapsedRealtime() - this.k >= this.j);
  }
  
  private WebViewClient f() {
    return new nhk(this);
  }
  
  public njx a() {
    return this.h;
  }
  
  public void a(WebView paramWebView) {
    if (this.f.l()) {
      CookieManager cookieManager = CookieManager.getInstance();
      cookieManager.setAcceptCookie(true);
      if (Build.VERSION.SDK_INT >= 21)
        cookieManager.setAcceptThirdPartyCookies(paramWebView, true); 
      if (Build.VERSION.SDK_INT >= 12)
        CookieManager.setAcceptFileSchemeCookies(true); 
      Log.d("Tealium-5.2.0", "WebView " + paramWebView + " created and cookies enabled");
    } 
  }
  
  public void a(WebView paramWebView, boolean paramBoolean) {
    String str;
    StringBuilder stringBuilder = (new StringBuilder()).append("Webview ").append(paramWebView);
    if (paramBoolean) {
      str = " loaded successfully";
    } else {
      str = "failed to load";
    } 
    Log.d("Tealium-5.2.0", stringBuilder.append(str).toString());
  }
  
  public void a(String paramString) {
    String str;
    if (this.b.get() != 2)
      return; 
    try {
      if (Build.VERSION.SDK_INT >= 19) {
        String str1 = paramString;
        if (paramString.startsWith("javascript:"))
          str1 = paramString.substring("javascript:".length()); 
        this.m.evaluateJavascript(str1, null);
        return;
      } 
    } catch (Throwable throwable) {
      this.e.b(throwable);
      return;
    } 
    if (!throwable.startsWith("javascript:"))
      str = "javascript:" + throwable; 
    CaMDOWebView.loadUrl(this.m, str);
  }
  
  public void a(String paramString, boolean paramBoolean) {
    String str = this.l;
    this.l = paramString;
    if (paramBoolean && !TextUtils.equals(str, paramString)) {
      nhp nhp1 = this.d;
      if (!TextUtils.isEmpty(str)) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      } 
      nhp1.a(a(paramBoolean, paramString));
      return;
    } 
  }
  
  public void a(nil paramnil) {
    if (this.b.get() != 2)
      return; 
    String str3 = paramnil.c("call_type");
    Locale locale = Locale.ROOT;
    String str2 = str3;
    if (str3 == null)
      str2 = "link"; 
    String str1 = String.format(locale, "utag.track(\"%s\", %s)", new Object[] { str2, paramnil.c() });
    this.d.a(new nia(str1));
  }
  
  public void a(nin paramnin) {
    this.i = paramnin.d();
    this.j = (long)paramnin.f() * 60000L;
  }
  
  public void b(nil paramnil) {
    switch (this.b.get()) {
      default:
        c();
      case 1:
        return;
      case 0:
        this.d.a(b());
        return;
      case 3:
        if (!e())
          return; 
      case 2:
        break;
    } 
    c(paramnil);
    if (e()) {
      d();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */