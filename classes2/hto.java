import android.util.Log;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import java.lang.reflect.Type;
import org.json.JSONObject;

class hto implements ih {
  hto(htn paramhtn) {}
  
  private CPError a(is paramis) {
    try {
      if (paramis.a().intValue() != 420)
        return null; 
      JSONObject jSONObject = new JSONObject(paramis.b());
      return new CPError(jSONObject.getString("code"), jSONObject.getString("message"));
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private void b(is paramis) {
    if (paramis != null) {
      String str;
      JSONObject jSONObject = paramis.c();
      Log.d("ConsignadoHUBExecutor", "statusCode " + paramis.a());
      Log.d("ConsignadoHUBExecutor", "message " + paramis.b());
      StringBuilder stringBuilder = (new StringBuilder()).append("result ");
      if (jSONObject != null) {
        str = jSONObject.toString();
      } else {
        str = "null";
      } 
      Log.d("ConsignadoHUBExecutor", stringBuilder.append(str).toString());
      return;
    } 
    Log.d("ConsignadoHUBExecutor", "null");
  }
  
  public void onFailure(is paramis) {
    b(paramis);
    htn.a(this.a, paramis);
    CPError cPError = a(paramis);
    htn.c(this.a).a(cPError);
  }
  
  public void onSuccess(is paramis) {
    b(paramis);
    htn.a(this.a, paramis);
    int i = htn.a(this.a).a().intValue();
    htn.a(this.a, htn.a(this.a).d());
    try {
      Type type = htn.b(this.a);
      String str = paramis.c().toString();
      type = mys.a().a(str, type);
      htn.c(this.a).a(i, type);
      return;
    } catch (Exception exception) {
      Log.e("ONSUCCESS_EXCEPTION", exception.getMessage());
      htn.c(this.a).a(new CPError(String.valueOf(paramis.a()), paramis.b()));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */