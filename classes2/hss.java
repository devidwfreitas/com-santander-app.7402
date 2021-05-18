import android.util.Log;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;
import org.json.JSONObject;

class hss implements gkw {
  hss(hsq paramhsq) {}
  
  public void a(Object paramObject) {
    is is = (is)paramObject;
    try {
      paramObject = mys.a().<ConsignadoSimulationResponse>a(is.c().toString(), ConsignadoSimulationResponse.class);
    } catch (NullPointerException nullPointerException) {
      Log.e("CPConsigRepositoryImpl", nullPointerException.toString());
      nullPointerException = null;
    } 
    if (nullPointerException != null && is.a().intValue() == 200) {
      this.a.b.a(nullPointerException);
    } else {
      try {
        JSONObject jSONObject = new JSONObject(is.b());
        CPError cPError = new CPError(jSONObject.getString("code"), jSONObject.getString("message"));
      } catch (Exception exception) {
        Log.e("CPConsigRepositoryImpl", exception.toString());
        exception = null;
      } 
      this.a.b.a((CPError)exception);
    } 
    this.a.d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */