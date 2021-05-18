import android.util.Log;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;
import org.json.JSONObject;

class hqe implements gkw {
  hqe(hqd paramhqd, hqb paramhqb) {}
  
  public void a(Object paramObject) {
    is is = (is)paramObject;
    if (is != null) {
      try {
        paramObject = mys.a().<ConsignadoSimulationResponse>a(is.c().toString(), ConsignadoSimulationResponse.class);
        if (paramObject == null) {
          this.a.a();
          return;
        } 
      } catch (NullPointerException nullPointerException) {
        nullPointerException = null;
        if (nullPointerException == null) {
          this.a.a();
          return;
        } 
      } 
      if (is.a().intValue() == 200) {
        if (nullPointerException.isEligivel()) {
          this.b.a((hxq)nullPointerException);
          this.a.a((ConsignadoSimulationResponse)nullPointerException);
          return;
        } 
        this.a.a();
        return;
      } 
      if (is.a().intValue() != 420) {
        this.a.a();
        return;
      } 
      try {
        JSONObject jSONObject = new JSONObject(is.b());
        new CPError(jSONObject.getString("code"), jSONObject.getString("message"));
        return;
      } catch (Exception exception) {
        Log.e("ConsignadoInteractor", exception.toString());
        return;
      } 
    } 
    paramObject = null;
    if (paramObject == null) {
      this.a.a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hqe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */