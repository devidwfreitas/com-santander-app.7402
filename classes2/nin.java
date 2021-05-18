import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public final class nin {
  public static final String a = "battery_saver";
  
  public static final String b = "dispatch_expiration";
  
  public static final String c = "event_batch_size";
  
  public static final String d = "offline_dispatch_limit";
  
  public static final String e = "wifi_only_sending";
  
  public static final String f = "minutes_between_refresh";
  
  public static final String g = "override_log";
  
  public static final String h = "enable_tag_management";
  
  public static final String i = "enable_collect";
  
  public static final String j = "enable_s2s_legacy";
  
  static final String k = null;
  
  private final String l;
  
  private final String m;
  
  private final boolean n;
  
  private final boolean o;
  
  private final boolean p;
  
  private final boolean q;
  
  private final boolean r;
  
  private final float s;
  
  private final float t;
  
  private final int u;
  
  private final int v;
  
  private volatile int w;
  
  private nin() {
    this.t = -1.0F;
    this.u = 100;
    this.v = 1;
    this.q = false;
    this.r = true;
    this.s = 15.0F;
    this.n = false;
    this.o = false;
    this.p = false;
    this.l = k;
    this.m = null;
  }
  
  private nin(JSONObject paramJSONObject, String paramString) {
    if (!paramJSONObject.optBoolean("_is_enabled", true))
      throw new nio(); 
    this.t = (float)paramJSONObject.optDouble("dispatch_expiration", -1.0D);
    this.u = paramJSONObject.optInt("offline_dispatch_limit", 100);
    this.v = paramJSONObject.optInt("event_batch_size", 1);
    this.q = paramJSONObject.optBoolean("wifi_only_sending", false);
    this.r = paramJSONObject.optBoolean("battery_saver", true);
    this.s = (float)paramJSONObject.optDouble("minutes_between_refresh", 15.0D);
    this.n = paramJSONObject.optBoolean("enable_tag_management", false);
    this.o = paramJSONObject.optBoolean("enable_collect", false);
    this.p = paramJSONObject.optBoolean("enable_s2s_legacy", false);
    this.l = paramJSONObject.optString("override_log", k);
    this.m = paramString;
  }
  
  public static nin a(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return new nin(); 
    try {
      return new nin(paramJSONObject, paramJSONObject.toString());
    } catch (JSONException jSONException) {
      return new nin();
    } 
  }
  
  private static boolean a(float paramFloat1, float paramFloat2) {
    return (Math.abs(paramFloat1 - paramFloat2) < 1.0E-6F);
  }
  
  public static nin b(String paramString) {
    if (paramString == null)
      return new nin(); 
    try {
      return new nin(new JSONObject(paramString), paramString);
    } catch (JSONException jSONException) {
      return new nin();
    } 
  }
  
  public float a() {
    return this.t;
  }
  
  public String a(String paramString) {
    String str3 = System.getProperty("line.separator");
    String str1 = paramString;
    if (paramString == null)
      str1 = ""; 
    if (str1.length() == 0) {
      paramString = "    ";
    } else {
      paramString = str1 + str1;
    } 
    StringBuilder stringBuilder = (new StringBuilder()).append('{').append(str3).append(paramString).append("battery_saver").append(" : ").append(this.r).append(',').append(str3).append(paramString).append("dispatch_expiration").append(" : ").append(this.t).append(',').append(str3).append(paramString).append("enable_collect").append(" : ").append(this.o).append(',').append(str3).append(paramString).append("enable_s2s_legacy").append(" : ").append(this.p).append(',').append(str3).append(paramString).append("enable_tag_management").append(" : ").append(this.n).append(',').append(str3).append(paramString).append("event_batch_size").append(" : ").append(this.v).append(',').append(str3).append(paramString).append("minutes_between_refresh").append(" : ").append(this.s).append(',').append(str3).append(paramString).append("offline_dispatch_limit").append(" : ").append(this.u).append(',').append(str3).append(paramString).append("override_log").append(" : ");
    if (TextUtils.isEmpty(this.l)) {
      String str = "\"no override\"";
      return stringBuilder.append(str).append(',').append(str3).append(paramString).append("wifi_only_sending").append(" : ").append(this.q).append(str3).append(str1).append('}').toString();
    } 
    String str2 = this.l;
    return stringBuilder.append(str2).append(',').append(str3).append(paramString).append("wifi_only_sending").append(" : ").append(this.q).append(str3).append(str1).append('}').toString();
  }
  
  public int b() {
    return this.u;
  }
  
  public int c() {
    return this.v;
  }
  
  public boolean d() {
    return this.q;
  }
  
  public boolean e() {
    return this.r;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof nin) {
      paramObject = paramObject;
      return (a(this.t, ((nin)paramObject).t) && this.u == ((nin)paramObject).u && this.v == ((nin)paramObject).v && this.q == ((nin)paramObject).q && this.r == ((nin)paramObject).r && TextUtils.equals(this.l, ((nin)paramObject).l) && this.n == ((nin)paramObject).n && this.o == ((nin)paramObject).o && this.p == ((nin)paramObject).p && this.q == ((nin)paramObject).q && a(this.s, ((nin)paramObject).s));
    } 
    return super.equals(paramObject);
  }
  
  public float f() {
    return this.s;
  }
  
  public String g() {
    return this.l;
  }
  
  public String h() {
    return this.m;
  }
  
  public int hashCode() {
    byte b = 1;
    int j = this.w;
    int i = j;
    if (j == 0) {
      byte b1;
      byte b2;
      byte b3;
      if (this.l == null) {
        i = 0;
      } else {
        i = this.l.hashCode();
      } 
      int k = Float.floatToIntBits(this.s);
      int m = Float.floatToIntBits(this.t);
      int n = this.u;
      int i1 = this.v;
      if (this.n) {
        j = 1;
      } else {
        j = 0;
      } 
      if (this.o) {
        b1 = 1;
      } else {
        b1 = 0;
      } 
      if (this.p) {
        b2 = 1;
      } else {
        b2 = 0;
      } 
      if (this.q) {
        b3 = 1;
      } else {
        b3 = 0;
      } 
      if (!this.r)
        b = 0; 
      i = (b3 + (b2 + (b1 + (j + (((((i + 527) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31) * 31) * 31) * 31) * 31 + b;
      this.w = i;
    } 
    return i;
  }
  
  public boolean i() {
    return this.n;
  }
  
  public boolean j() {
    return this.o;
  }
  
  public boolean k() {
    return this.p;
  }
  
  public String toString() {
    return a((String)null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */