import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoDadoObrigatorio;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSetter;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;
import java.util.List;
import org.json.JSONObject;

public class hqd implements hqa {
  private static final int d = 420;
  
  private static final int e = 200;
  
  private static final String f = "ConsignadoInteractor";
  
  private hxo a = miq.C().f().u().a();
  
  private htp b = new htq();
  
  private hpz c;
  
  private void a(ConsignadoSimulationResponse paramConsignadoSimulationResponse) {
    ConsignadoSetter consignadoSetter = (ConsignadoSetter)a();
    consignadoSetter.setAverbationCode(d().d());
    consignadoSetter.setSimulation(paramConsignadoSimulationResponse);
    consignadoSetter.setQuente();
    consignadoSetter.update();
  }
  
  private hpz d() {
    if (this.c == null)
      this.c = new hpz(a()); 
    return this.c;
  }
  
  public hxq a() {
    return this.a.h();
  }
  
  public void a(hqb paramhqb) {
    this.b.a(new hqe(this, paramhqb));
  }
  
  public void a(hqc paramhqc) {
    if (d() == null) {
      paramhqc.b();
      return;
    } 
    try {
      JSONObject jSONObject = d().c();
      this.b.a(jSONObject, new hqf(this, paramhqc));
      return;
    } catch (Exception exception) {
      paramhqc.b();
      return;
    } 
  }
  
  public void a(hxq paramhxq) {
    this.a.a(paramhxq);
  }
  
  public List<ConsignadoDadoObrigatorio> b() {
    return d().a();
  }
  
  public boolean c() {
    return d().b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hqd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */