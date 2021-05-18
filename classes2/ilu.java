import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.util.Log;
import android.view.WindowManager;
import java.util.HashSet;
import java.util.UUID;

public class ilu extends AsyncTask<ilo, Void, ilp> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public ilu(gkv paramgkv, Activity paramActivity) {
    this.c = paramgkv;
    this.a = paramActivity;
  }
  
  private String a(String paramString) {
    naf naf = new naf();
    if (miq.C().h() == null)
      return ""; 
    try {
      frq.d("Outros_Geolocalizacao_TrocaDeChaves", "Sucesso");
      return naf.b(naf.a(paramString).getBytes("UTF-8"));
    } catch (Exception exception) {
      frq.d("Outros_Geolocalizacao_TrocaDeChaves", "Falha");
      return "";
    } 
  }
  
  private String a(String paramString, ilo paramilo) {
    StringBuilder stringBuilder = new StringBuilder("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\"><soapenv:Header/>\n<soapenv:Body>\n");
    stringBuilder.append("<web:" + paramString + "> ").append("<arg0>").append("<codigoDevice>" + paramilo.a() + "</codigoDevice>").append("<codigoSimCard>" + paramilo.b() + "</codigoSimCard>").append("<connUuid>" + paramilo.getConnUuid() + "</connUuid>").append("<ipExterno>" + paramilo.g() + "</ipExterno>").append("<ipInterno>" + paramilo.h() + "</ipInterno>").append("<latitude>" + paramilo.c() + "</latitude>").append("<longitude>" + paramilo.d() + "</longitude>").append("<modeloDevice>" + paramilo.e() + "</modeloDevice>").append("<nomeDevice>" + paramilo.e() + "</nomeDevice>").append("<operadora>" + paramilo.i() + "</operadora>").append("<tokenSessao>" + paramilo.getTokenSessao() + "</tokenSessao>").append("<requestId>" + UUID.randomUUID().toString() + "</requestId>").append("</arg0>");
    stringBuilder.append("</web:" + paramString + ">");
    stringBuilder.append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString().replace("</tokenSessao>", "</tokenSessao><dataHash>" + a(stringBuilder.toString(), "tokenSessao") + "</dataHash>");
  }
  
  protected ilp a(ilo... paramVarArgs) {
    String str = a("enviarGeolocalizacao", paramVarArgs[0]);
    str = jcd.a(has.am(), str, "", false);
    if (str != null) {
      try {
        ilp ilp = (new mzd<ilp>()).a(ilp.class, str);
        try {
          frq.d("Outros_Geolocalizacao_TentouEnviarGeo_Resultado", "Sucesso");
          return ilp;
        } catch (Exception null) {}
      } catch (Exception exception) {
        str = null;
      } 
      Log.e("ERROR_CALL_GEOLOC", exception.getMessage());
      frq.d("Outros_Geolocalizacao_TentouEnviarGeo_Resultado", "Falha");
      frq.d("Outros_Geolocalizacao_TentouEnviarGeo_Erro", exception.getMessage());
      return (ilp)str;
    } 
    return null;
  }
  
  public String a(String paramString1, String paramString2) {
    HashSet<String> hashSet = new HashSet();
    hashSet.add("dataHash");
    hashSet.add(paramString2);
    return a(mxj.a(paramString1, "//soapenv:Body", hashSet).toString());
  }
  
  protected void a(ilp paramilp) {
    this.c.a(paramilp);
    if (this.b != null) {
      if (this.a != null && this.b.isShowing())
        this.b.cancel(); 
      this.b = null;
    } 
  }
  
  protected void onPreExecute() {
    try {
      if (this.a != null)
        this.b = mxn.b(this.a); 
      return;
    } catch (android.view.WindowManager.BadTokenException badTokenException) {
      Log.e("Bad window", "error");
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */