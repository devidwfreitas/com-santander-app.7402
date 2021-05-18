import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ffa {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  public static final int d = 3;
  
  public static final int e = 4;
  
  int A;
  
  String B = null;
  
  private int C;
  
  Date f = null;
  
  String g = null;
  
  String h = null;
  
  String i = null;
  
  ffb j = null;
  
  String k = null;
  
  boolean l = false;
  
  String m = null;
  
  String n = null;
  
  String o = null;
  
  String p = null;
  
  String q = null;
  
  ffc r = null;
  
  String s = null;
  
  String t = null;
  
  String u = null;
  
  String v = null;
  
  String w = null;
  
  String x = null;
  
  String y = null;
  
  int z;
  
  public ffa(int paramInt) {
    if (paramInt == 2) {
      this.j = new ffb(this);
      this.r = new ffc(this);
    } 
    this.C = paramInt;
  }
  
  private String a(String paramString) {
    if (paramString == null || paramString.length() == 0)
      return paramString; 
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0; i < paramString.length(); i++) {
      char c = paramString.charAt(i);
      if (c != '"' && c != '&' && c != '<' && c != '>' && c != '\'')
        stringBuilder.append(c); 
    } 
    return stringBuilder.toString();
  }
  
  public String a(boolean paramBoolean, HashMap<String, Object> paramHashMap) {
    JSONObject jSONObject;
    try {
      jSONObject = new JSONObject();
      if (paramBoolean)
        jSONObject.put("TIMESTAMP", a(fgf.a(this.f))); 
      if (this.g != null)
        jSONObject.put("HardwareID", a(this.g)); 
      if (this.h != null)
        jSONObject.put("SIM_ID", a(this.h)); 
      if (this.i != null)
        jSONObject.put("PhoneNumber", a(this.i)); 
      if (this.j != null) {
        if (this.j.p == 0 && !this.j.b && !this.j.d && !this.j.m && !this.j.o && !this.j.f && !this.j.h && !this.j.j)
          this.j.p = 2; 
        JSONObject jSONObject1 = new JSONObject();
        if (this.j.b)
          jSONObject1.put("Longitude", fgf.a(this.j.a)); 
        if (this.j.d)
          jSONObject1.put("Latitude", fgf.a(this.j.c)); 
        if (this.j.f) {
          int i = (int)Math.round(this.j.e);
          jSONObject1.put("HorizontalAccuracy", "" + i);
        } 
        if (this.j.h) {
          int i = (int)Math.round(this.j.g);
          jSONObject1.put("Altitude", "" + i);
        } 
        if (this.j.j) {
          int i = (int)Math.round(this.j.i);
          jSONObject1.put("AltitudeAccuracy", "" + i);
        } 
        long l = this.j.k;
        jSONObject1.put("Timestamp", a("" + l));
        if (this.j.m)
          jSONObject1.put("Heading", fgf.a(this.j.l)); 
        if (this.j.o) {
          int i = (int)Math.round(this.j.n);
          jSONObject1.put("Speed", "" + i);
        } 
        jSONObject1.put("Status", "" + this.j.p);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject1);
        jSONObject.put("GeoLocationInfo", jSONArray);
      } 
      if (this.k != null)
        jSONObject.put("DeviceModel", a(this.k)); 
      if (this.C == 1 || this.C == 2)
        jSONObject.put("MultitaskingSupported", this.l); 
      if (this.m != null)
        jSONObject.put("DeviceName", a(this.m)); 
      if (this.n != null)
        jSONObject.put("DeviceSystemName", a(this.n)); 
      if (this.o != null)
        jSONObject.put("DeviceSystemVersion", a(this.o)); 
      if (this.p != null)
        jSONObject.put("Languages", a(this.p)); 
      if (this.q != null)
        jSONObject.put("WiFiMacAddress", a(this.q)); 
      if (this.r != null) {
        JSONObject jSONObject1 = new JSONObject();
        if (this.r.a != null)
          jSONObject1.put("StationName", a(this.r.a)); 
        if (this.r.b != null)
          jSONObject1.put("BBSID", a(this.r.b)); 
        jSONObject1.put("SignalStrength", "" + this.r.c);
        jSONObject1.put("Channel", "" + a(this.r.d));
        if (this.r.e != null)
          jSONObject1.put("SSID", a(this.r.e)); 
        if (jSONObject1.length() > 0)
          jSONObject.put("WiFiNetworksData", jSONObject1); 
      } 
      if (this.s != null)
        jSONObject.put("CellTowerId", a(this.s)); 
      if (this.t != null)
        jSONObject.put("LocationAreaCode", a(this.t)); 
      if (this.u != null)
        jSONObject.put("ScreenSize", a(this.u)); 
      if (this.v != null)
        jSONObject.put("RSA_ApplicationKey", a(this.v)); 
      if (this.x != null)
        jSONObject.put("MCC", a(this.x)); 
      if (this.y != null)
        jSONObject.put("MNC", a(this.y)); 
      if (this.B != null)
        jSONObject.put("OS_ID", a(this.B)); 
      jSONObject.put("SDK_VERSION", a("3.6.0"));
      jSONObject.put("Compromised", this.z);
      jSONObject.put("Emulator", this.A);
      if (paramHashMap != null)
        for (Map.Entry<String, Object> entry : paramHashMap.entrySet()) {
          if (entry.getValue() instanceof String) {
            jSONObject.put((String)entry.getKey(), a((String)entry.getValue()));
            continue;
          } 
          jSONObject.put((String)entry.getKey(), entry.getValue());
        }  
    } catch (JSONException jSONException) {
      return "JSONStringFailure:" + jSONException.toString();
    } 
    return jSONObject.toString(0);
  }
  
  public void a() {
    if (this.j != null)
      this.j.a(); 
    if (this.r != null)
      this.r.b(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */