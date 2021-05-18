import android.util.Log;
import com.santander.app.contacorrente.domain.ConsultarExtratoHubRequest;
import com.santander.app.contacorrente.domain.ConsultarExtratoRequest;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.contacorrente.domain.ExtratoContract;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class gwe implements gwa {
  private static final String a = "SaldoRepository";
  
  private void a(String paramString1, String paramString2) {
    ir ir = gnp.a().a("balance/v1/blocked-values?checkingAccountIndex=" + paramString2, im.GET, true);
    a(ir.e().toString(), true);
    try {
      gnp.a().b().a(ir, new gwi(this, paramString1));
      return;
    } catch (Exception exception) {
      Log.e("SaldoRepository", "consultarValoresBloqueados", exception);
      return;
    } 
  }
  
  private void a(String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      myu.a().a(paramString, "SaldoRepository", "");
      return;
    } 
    myu.a().b(paramString, "SaldoRepository");
  }
  
  private JSONObject b(String paramString1, String paramString2) {
    try {
      ejm ejm = new ejm();
      Map<?, ?> map1 = ejm.<Map>a(paramString1, Map.class);
      Map<?, ?> map2 = ejm.<Map>a(paramString2, Map.class);
      map1 = new HashMap<Object, Object>(map1);
      map1.putAll(map2);
      return new JSONObject(ejm.b(map1));
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.getMessage());
      return new JSONObject();
    } 
  }
  
  public void a(Conta paramConta, gwc paramgwc) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("checkingAccountIndex", paramConta.getIndiceAgenciaConta());
      ir ir = gnp.a().a("balance/v1/detailed", im.POST, jSONObject, true);
      a(ir.e().toString(), true);
      gnp.a().b().a(ir, new gwg(this, paramgwc));
      return;
    } catch (Exception exception) {
      Log.e("SaldoRepository", "consultarSaldoDetalhado", exception);
      paramgwc.b(null);
      return;
    } 
  }
  
  public void a(Conta paramConta, String paramString1, String paramString2, ExtratoContract paramExtratoContract, gwb paramgwb) {
    try {
      gnp gnp = gnp.a();
      JSONObject jSONObject = (new ConsultarExtratoHubRequest(paramConta, paramString1, paramString2, paramExtratoContract)).toJson();
      ir ir = gnp.a("statement/v1/statements", im.POST, jSONObject, true);
      a(ir.e().toString(), true);
      gnp.b().a(ir, new gwk(this, paramgwb));
      return;
    } catch (Exception exception) {
      Log.e("SaldoRepository", "consultarExtratoHub", exception);
      paramgwb.a();
      return;
    } 
  }
  
  public void a(Conta paramConta, String paramString1, String paramString2, gwb paramgwb) {
    ConsultarExtratoRequest consultarExtratoRequest = new ConsultarExtratoRequest(paramConta, paramString1, paramString2);
    (new gwl(new gwj(this, paramgwb))).execute((Object[])new ConsultarExtratoRequest[] { consultarExtratoRequest });
  }
  
  public void a(gwd paramgwd) {
    gnp gnp = gnp.a();
    try {
      ir ir = gnp.a("balance/v1/balances", im.POST, ipj.a(), true);
      a(ir.e().toString(), true);
      gnz.a().d().a(ir, new gwf(this, paramgwd));
      return;
    } catch (Exception exception) {
      Log.e("SaldoRepository", "consultarSaldoHub", exception);
      paramgwd.a((is)null);
      return;
    } 
  }
  
  public boolean a() {
    ipi ipi = miq.C().f().C();
    return (ipi.b("00000073") && ipi.b("00000085"));
  }
  
  public void b(Conta paramConta, gwc paramgwc) {
    (new gwm(paramConta, new gwh(this, paramgwc))).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */