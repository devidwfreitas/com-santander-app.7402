import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import org.json.JSONObject;

public class jmv {
  private jlv a;
  
  private jls b;
  
  private miq c;
  
  private Context d;
  
  public jmv(Context paramContext, jls paramjls) {
    this.b = paramjls;
    this.c = miq.C();
    this.d = paramContext;
  }
  
  public jmv(Context paramContext, jlv paramjlv) {
    this.a = paramjlv;
    this.c = miq.C();
    this.d = paramContext;
  }
  
  public void a(String paramString) {}
  
  public void a(String paramString1, String paramString2) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("latitude", paramString1);
    hashMap.put("longitude", paramString2);
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("coordenada", new JSONObject(hashMap));
      jSONObject1.put("local", "AMBOS");
    } catch (Exception exception1) {
      Log.e("Error", exception1.getMessage());
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", mzx.a().c().get("appKey"));
      try {
        ir ir = gnp.a().a(jmt.LOCALIZADOR_OBTER_AGENCIAS.getEndpoint(), im.POST, jSONObject2, jSONObject1, true);
        gnp.a().c().a(ir, new jmw(this));
        return;
      } catch (Exception exception) {
        Log.e("LOCALIZADOR_AGENCIAS", exception.getMessage());
      } 
    } catch (Exception exception1) {
      Log.e("Error", exception1.getMessage());
      try {
        ir ir = gnp.a().a(jmt.LOCALIZADOR_OBTER_AGENCIAS.getEndpoint(), im.POST, jSONObject2, (JSONObject)exception, true);
        gnp.a().c().a(ir, new jmw(this));
        return;
      } catch (Exception exception2) {
        Log.e("LOCALIZADOR_AGENCIAS", exception2.getMessage());
      } 
    } 
  }
  
  public void b(String paramString) {}
  
  public void c(String paramString) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jmv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */