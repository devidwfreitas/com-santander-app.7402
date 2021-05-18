import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import org.json.JSONObject;

public class hnc implements hmy {
  private static final String a = "CancelamentoRepository";
  
  private mwy b = miq.C().f().y();
  
  private hya c = hyb.j();
  
  private JSONObject a(hxl paramhxl) {
    JSONObject jSONObject = new JSONObject();
    if (paramhxl.f()) {
      jSONObject.put("proposalCode", paramhxl.c());
    } else {
      jSONObject.put("contractCode", paramhxl.c());
    } 
    jSONObject.put("formalizationStatus", "true");
    if (!TextUtils.isEmpty(paramhxl.A()))
      jSONObject.put("onLineAverbationCode", paramhxl.A()); 
    return jSONObject;
  }
  
  private void a(hmz paramhmz) {
    mzp mzp1 = mzp.RELOAD_CONTA;
    mzp mzp2 = mzp.RELOAD_EMPRESTIMOS;
    mzn mzn = new mzn();
    hni hni = new hni(this, paramhmz);
    mzn.a(new mzp[] { mzp1, mzp2 }, hni);
  }
  
  public void a(hna paramhna) {
    ArrayList arrayList = new ArrayList();
    hlc hlc = new hlc();
    (new hmw(new hnd(this, arrayList, paramhna))).execute((Object[])new hlc[] { hlc });
  }
  
  public void a(hxl paramhxl, hmz paramhmz) {
    hkz hkz = new hkz(paramhxl);
    (new hmv(new hng(this, paramhxl, paramhmz))).execute((Object[])new hkz[] { hkz });
  }
  
  public void a(String paramString, hnb paramhnb) {
    paramString = "payroll-loans/v1/contract-terms?contractType=" + paramString;
    ir ir = gnp.a().a(paramString, im.GET, true);
    gnp.a().b().a(ir, new hnf(this, paramhnb));
  }
  
  public void b(hna paramhna) {
    ArrayList<hxl> arrayList = new ArrayList();
    ir ir = gnp.a().a("payroll-loans/v1/?agreementCode=0&propostalCode=0&operationIdentifier=0", im.GET, true);
    try {
      gnp.a().b().a(ir, new hne(this, arrayList, paramhna));
      return;
    } catch (Exception exception) {
      Log.e("CancelamentoRepository", "consultarConsig", exception);
      paramhna.a(false, arrayList);
      return;
    } 
  }
  
  public void b(hxl paramhxl, hmz paramhmz) {
    try {
      JSONObject jSONObject1 = a(paramhxl);
      JSONObject jSONObject2 = this.b.m();
      ir ir = gnp.a().a("payroll-loans/v1/cancel", im.PUT, jSONObject2, jSONObject1, true);
      try {
        gnp.a().b().a(ir, new hnh(this, paramhxl, paramhmz));
        return;
      } catch (Exception exception) {
        this.b.l();
        Log.e("CancelamentoRepository", "cancelarConsig", exception);
        paramhmz.b();
      } 
    } catch (Exception exception) {
      paramhmz.b();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */