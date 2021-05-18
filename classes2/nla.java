import android.os.SystemClock;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

final class nla implements nik, njd {
  private final String a;
  
  private final String b;
  
  private final nhp c;
  
  private final ngq d;
  
  private final AtomicInteger e;
  
  private final SimpleDateFormat f;
  
  private final nhc g;
  
  private volatile nin h;
  
  private volatile long i;
  
  private volatile long j;
  
  nla(String paramString, nkj paramnkj, nhp paramnhp) {
    this(paramString, paramnkj, paramnhp, ngq.a(paramnkj.b().getApplicationContext()));
  }
  
  private nla(String paramString, nkj paramnkj, nhp paramnhp, ngq paramngq) {
    String str;
    if (paramnkj.h() == null) {
      str = paramnkj.f();
    } else {
      str = paramnkj.h();
    } 
    this.b = str;
    this.a = paramString;
    this.h = paramnkj.q();
    this.c = paramnhp;
    this.d = paramngq;
    this.g = paramnkj.o();
    this.e = new AtomicInteger(0);
    this.f = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.ROOT);
    this.f.setTimeZone(TimeZone.getTimeZone("GMT"));
    if (this.h.h() == null)
      a(false); 
  }
  
  private void a() {
    boolean bool;
    if (this.h.d() && !this.d.a()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (!bool && this.d.b() && 1 != this.e.getAndSet(1)) {
      this.c.c(nii.a(this.b).a(this).a("If-Modified-Since", this.f.format(new Date(this.j))).a());
      return;
    } 
  }
  
  private void a(int paramInt) {
    if (paramInt == 200) {
      a(true);
      return;
    } 
    this.e.set(0);
  }
  
  private void a(String paramString) {
    try {
      a(new JSONObject(paramString));
      return;
    } catch (JSONException jSONException) {
      this.g.d(nkf.publish_settings_retriever_malformed_json, new Object[] { paramString });
      return;
    } 
  }
  
  private void a(JSONObject paramJSONObject) {
    try {
      nin nin1 = nin.a(paramJSONObject.optJSONObject("5"));
      if (!this.h.equals(nin1)) {
        this.h = nin1;
        this.c.b(new nid(this.h));
        return;
      } 
      if (this.g.a()) {
        this.g.a(nkf.publish_settings_retriever_no_change, new Object[0]);
        return;
      } 
    } catch (nio nio) {
      if (this.g.c())
        this.g.c(nkf.publish_settings_retriever_disabled, new Object[] { this.a }); 
      nkg.c(this.a);
      return;
    } catch (JSONException jSONException) {
      throw new RuntimeException(jSONException);
    } 
  }
  
  private void a(boolean paramBoolean) {
    boolean bool;
    if (this.h.d() && !this.d.a()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (!bool && this.d.b() && (paramBoolean || 1 != this.e.getAndSet(1))) {
      if (this.g.a())
        this.g.a(nkf.publish_settings_retriever_fetching, new Object[] { this.b }); 
      this.c.c(nii.b(this.b).a(this).a());
      return;
    } 
  }
  
  private void b(String paramString) {
    if (paramString == null)
      return; 
    try {
      paramString = nkz.a(paramString);
      if (paramString != null) {
        a(new JSONObject(paramString));
        return;
      } 
    } catch (JSONException jSONException) {
      throw new RuntimeException(jSONException);
    } 
    this.g.a(nkf.publish_settings_retriever_no_mps);
  }
  
  private boolean b() {
    long l = (long)this.h.f();
    return (SystemClock.elapsedRealtime() - this.i > l * 60000L);
  }
  
  public void a(String paramString1, String paramString2, int paramInt, Map<String, List<String>> paramMap, byte[] paramArrayOfbyte) {
    boolean bool;
    if (paramMap != null && paramMap.containsKey("Content-Type")) {
      bool = ((List)paramMap.get("Content-Type")).toString().toLowerCase(Locale.ROOT).contains("html");
    } else {
      bool = false;
    } 
    this.c.b(new nlb(this, paramString2, paramArrayOfbyte, bool, paramInt));
  }
  
  public void a(String paramString, Throwable paramThrowable) {
    this.e.set(0);
  }
  
  public void b(nil paramnil) {
    boolean bool;
    if (this.h.h() == null) {
      bool = true;
    } else {
      bool = false;
    } 
    if (!b() && !bool)
      return; 
    if (bool) {
      a(false);
      return;
    } 
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nla.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */