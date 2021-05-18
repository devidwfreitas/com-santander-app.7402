import android.content.Context;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import java.io.IOException;
import java.util.Map;

public class dlp extends dmu {
  private final Map<String, Map<String, String>> a = (Map<String, Map<String, String>>)new ArrayMap();
  
  private final Map<String, Map<String, Boolean>> b = (Map<String, Map<String, Boolean>>)new ArrayMap();
  
  private final Map<String, Map<String, Boolean>> c = (Map<String, Map<String, Boolean>>)new ArrayMap();
  
  private final Map<String, dpe> d = (Map<String, dpe>)new ArrayMap();
  
  private final Map<String, String> e = (Map<String, String>)new ArrayMap();
  
  dlp(dlv paramdlv) {
    super(paramdlv);
  }
  
  @WorkerThread
  private dpe a(String paramString, byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null)
      return new dpe(); 
    dqv dqv = dqv.a(paramArrayOfbyte);
    dpe dpe = new dpe();
    try {
      dpe.b(dqv);
      u().D().a("Parsed config. version, gmp_app_id", dpe.a, dpe.b);
      return dpe;
    } catch (IOException iOException) {
      u().z().a("Unable to merge remote config. appId", dkw.a(paramString), iOException);
      return null;
    } 
  }
  
  private Map<String, String> a(dpe paramdpe) {
    ArrayMap<String, String> arrayMap = new ArrayMap();
    if (paramdpe != null && paramdpe.d != null)
      for (dpf dpf : paramdpe.d) {
        if (dpf != null)
          arrayMap.put(dpf.a, dpf.b); 
      }  
    return (Map<String, String>)arrayMap;
  }
  
  private void a(String paramString, dpe paramdpe) {
    ArrayMap<String, Boolean> arrayMap1 = new ArrayMap();
    ArrayMap<String, Boolean> arrayMap2 = new ArrayMap();
    if (paramdpe != null && paramdpe.e != null)
      for (dpd dpd : paramdpe.e) {
        if (dpd != null) {
          String str = egf.a.get(dpd.a);
          if (str != null)
            dpd.a = str; 
          arrayMap1.put(dpd.a, dpd.b);
          arrayMap2.put(dpd.a, dpd.c);
        } 
      }  
    this.b.put(paramString, arrayMap1);
    this.c.put(paramString, arrayMap2);
  }
  
  @WorkerThread
  private void d(String paramString) {
    byte[] arrayOfByte;
    R();
    e();
    csp.a(paramString);
    if (this.d.get(paramString) == null) {
      arrayOfByte = p().d(paramString);
      if (arrayOfByte == null) {
        this.a.put(paramString, null);
        this.b.put(paramString, null);
        this.c.put(paramString, null);
        this.d.put(paramString, null);
        this.e.put(paramString, null);
        return;
      } 
    } else {
      return;
    } 
    dpe dpe = a(paramString, arrayOfByte);
    this.a.put(paramString, a(dpe));
    a(paramString, dpe);
    this.d.put(paramString, dpe);
    this.e.put(paramString, null);
  }
  
  @WorkerThread
  protected dpe a(String paramString) {
    R();
    e();
    csp.a(paramString);
    d(paramString);
    return this.d.get(paramString);
  }
  
  @WorkerThread
  String a(String paramString1, String paramString2) {
    e();
    d(paramString1);
    Map map = this.a.get(paramString1);
    return (map != null) ? (String)map.get(paramString2) : null;
  }
  
  protected void a() {}
  
  @WorkerThread
  protected boolean a(String paramString1, byte[] paramArrayOfbyte, String paramString2) {
    R();
    e();
    csp.a(paramString1);
    dpe dpe = a(paramString1, paramArrayOfbyte);
    if (dpe == null)
      return false; 
    a(paramString1, dpe);
    this.d.put(paramString1, dpe);
    this.e.put(paramString1, paramString2);
    this.a.put(paramString1, a(dpe));
    g().a(paramString1, dpe.f);
    try {
      dpe.f = null;
      byte[] arrayOfByte = new byte[dpe.g()];
      dpe.a(dqw.a(arrayOfByte));
      paramArrayOfbyte = arrayOfByte;
    } catch (IOException iOException) {
      u().z().a("Unable to serialize reduced-size config. Storing full config instead. appId", dkw.a(paramString1), iOException);
    } 
    p().a(paramString1, paramArrayOfbyte);
    return true;
  }
  
  @WorkerThread
  protected String b(String paramString) {
    e();
    return this.e.get(paramString);
  }
  
  @WorkerThread
  boolean b(String paramString1, String paramString2) {
    e();
    d(paramString1);
    if ((!q().o(paramString1) || !dou.l(paramString2)) && (!q().p(paramString1) || !dou.a(paramString2))) {
      Map map = this.b.get(paramString1);
      if (map != null) {
        Boolean bool = (Boolean)map.get(paramString2);
        return (bool == null) ? false : bool.booleanValue();
      } 
      return false;
    } 
    return true;
  }
  
  @WorkerThread
  protected void c(String paramString) {
    e();
    this.e.put(paramString, null);
  }
  
  @WorkerThread
  boolean c(String paramString1, String paramString2) {
    e();
    d(paramString1);
    Map map = this.c.get(paramString1);
    if (map != null) {
      Boolean bool = (Boolean)map.get(paramString2);
      return (bool == null) ? false : bool.booleanValue();
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */