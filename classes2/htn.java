import android.util.Log;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

abstract class htn<Response> implements htm<Response> {
  private static final String a = "ConsignadoHUBExecutor";
  
  private static final int b = 420;
  
  private htn<Response> c = this;
  
  private ir d;
  
  private Map<String, List<String>> e;
  
  private is f;
  
  private ih g = new hto(this);
  
  htn(ir paramir) {
    this.d = paramir;
  }
  
  private Type c() {
    return ((ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0];
  }
  
  void a() {
    try {
      Log.d("ConsignadoHUBExecutor", "request " + this.d.b());
      Log.d("ConsignadoHUBExecutor", "body " + this.d.e().toString());
      gnp.a().b().a(this.d, this.g);
      return;
    } catch (Exception exception) {
      a(null);
      return;
    } 
  }
  
  public Map<String, List<String>> b() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */