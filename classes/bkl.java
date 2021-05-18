import android.os.Bundle;
import android.support.annotation.Nullable;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONObject;

class bkl implements Serializable {
  private static final long a = 1L;
  
  private static final HashSet<String> b = new HashSet<String>();
  
  private final JSONObject c;
  
  private final boolean d;
  
  private final String e;
  
  private final String f;
  
  public bkl(String paramString1, String paramString2, Double paramDouble, Bundle paramBundle, boolean paramBoolean, @Nullable UUID paramUUID) {
    this.c = a(paramString1, paramString2, paramDouble, paramBundle, paramBoolean, paramUUID);
    this.d = paramBoolean;
    this.e = paramString2;
    this.f = e();
  }
  
  private bkl(String paramString1, boolean paramBoolean, String paramString2) {
    this.c = new JSONObject(paramString1);
    this.d = paramBoolean;
    this.e = this.c.optString("_eventName");
    this.f = paramString2;
  }
  
  private static String a(byte[] paramArrayOfbyte) {
    StringBuffer stringBuffer = new StringBuffer();
    int j = paramArrayOfbyte.length;
    for (int i = 0; i < j; i++) {
      stringBuffer.append(String.format("%02x", new Object[] { Byte.valueOf(paramArrayOfbyte[i]) }));
    } 
    return stringBuffer.toString();
  }
  
  private static JSONObject a(String paramString1, String paramString2, Double paramDouble, Bundle paramBundle, boolean paramBoolean, @Nullable UUID paramUUID) {
    a(paramString2);
    JSONObject jSONObject = new JSONObject();
    jSONObject.put("_eventName", paramString2);
    jSONObject.put("_logTime", System.currentTimeMillis() / 1000L);
    jSONObject.put("_ui", paramString1);
    if (paramUUID != null)
      jSONObject.put("_session_id", paramUUID); 
    if (paramDouble != null)
      jSONObject.put("_valueToSum", paramDouble.doubleValue()); 
    if (paramBoolean)
      jSONObject.put("_implicitlyLogged", "1"); 
    paramString1 = bla.e();
    if (paramString1 != null)
      jSONObject.put("_app_user_id", paramString1); 
    if (paramBundle != null)
      for (String paramString2 : paramBundle.keySet()) {
        a(paramString2);
        Object object = paramBundle.get(paramString2);
        if (!(object instanceof String) && !(object instanceof Number))
          throw new bhp(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", new Object[] { object, paramString2 })); 
        jSONObject.put(paramString2, object.toString());
      }  
    if (!paramBoolean)
      bpu.a(bjb.APP_EVENTS, "AppEvents", "Created app event '%s'", new Object[] { jSONObject.toString() }); 
    return jSONObject;
  }
  
  private static void a(String paramString) {
    if (paramString == null || paramString.length() == 0 || paramString.length() > 40) {
      String str = paramString;
      if (paramString == null)
        str = "<None Provided>"; 
      throw new bhp(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", new Object[] { str, Integer.valueOf(40) }));
    } 
    synchronized (b) {
      boolean bool = b.contains(paramString);
      if (!bool) {
        if (paramString.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"))
          synchronized (b) {
            b.add(paramString);
            return;
          }  
      } else {
        return;
      } 
    } 
    throw new bhp(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", new Object[] { paramString }));
  }
  
  private static String b(String paramString) {
    try {
      MessageDigest messageDigest = MessageDigest.getInstance("MD5");
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      messageDigest.update(arrayOfByte, 0, arrayOfByte.length);
      return a(messageDigest.digest());
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      bqq.a("Failed to generate checksum: ", noSuchAlgorithmException);
      return "0";
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      bqq.a("Failed to generate checksum: ", unsupportedEncodingException);
      return "1";
    } 
  }
  
  private String e() {
    return b(this.c.toString());
  }
  
  private Object writeReplace() {
    return new bko(this.c.toString(), this.d, this.f, null);
  }
  
  public String a() {
    return this.e;
  }
  
  public boolean b() {
    return this.d;
  }
  
  public JSONObject c() {
    return this.c;
  }
  
  public boolean d() {
    return (this.f == null) ? true : e().equals(this.f);
  }
  
  public String toString() {
    return String.format("\"%s\", implicit: %b, json: %s", new Object[] { this.c.optString("_eventName"), Boolean.valueOf(this.d), this.c.toString() });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bkl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */