import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

public class oo extends abw {
  private Context a;
  
  private ot b;
  
  public oo(Context paramContext) {
    this.a = paramContext;
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, ot paramot) {
    this.b = paramot;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(abq.SUB_CARACTERISTICAS.getEndpoint()).append("/").append(paramString1).append("/").append(paramString2).append("/").append(paramString3).append("?gw-app-key=").append(abp.b().a().a().c()).append("&operation=").append(paramString5);
    if (paramString4 != null)
      stringBuilder.append("&certificateNumber=").append(paramString4); 
    try {
      abp.b().a().a(a(stringBuilder.toString(), null), new op(this, paramot));
      return;
    } catch (Exception exception) {
      this.b.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
  
  public void a(String paramString1, String paramString2, String paramString3, ot paramot) {
    this.b = paramot;
    String str2 = "0000";
    String str1 = str2;
    if (paramString3 != null) {
      String[] arrayOfString = paramString3.split(":");
      str1 = str2;
      if (arrayOfString.length > 1) {
        if (arrayOfString[1].endsWith("h")) {
          paramString3 = arrayOfString[1].substring(0, arrayOfString[1].length() - 1);
        } else {
          paramString3 = arrayOfString[1];
        } 
        str1 = arrayOfString[0] + paramString3;
      } 
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(abq.DATA_AGENDAMENTO.getEndpoint()).append("/").append(paramString2).append("/").append(paramString1).append("/").append("0000/").append(str1).append("/").append("0000/").append(aca.a().c().m()).append("?").append("gw-app-key=").append(abp.b().a().a().c());
    try {
      abp.b().a().a(a(stringBuilder.toString(), null), new or(this, paramot));
      return;
    } catch (Exception exception) {
      this.b.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
  
  public void a(String paramString1, String paramString2, ot paramot) {
    this.b = paramot;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(abq.CALCULO_RENTABILIDADE.getEndpoint()).append("/").append(paramString1).append("?").append("gw-app-key=").append(abp.b().a().a().c()).append("&").append("applicationValue=").append(paramString2);
    try {
      abp.b().a().a(a(stringBuilder.toString(), null), new os(this, paramot));
      return;
    } catch (Exception exception) {
      this.b.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
  
  public void a(ot paramot) {
    this.b = paramot;
    String str = abq.SALDO_CONTA_CORRENTE.getEndpoint() + "?gw-app-key=" + abp.b().a().a().c();
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("system", abp.b().a().a().e());
      try {
        abp.b().a().a(a(str, jSONObject, new JSONObject()), new oq(this, paramot));
        return;
      } catch (Exception exception) {
        this.b.a(new aby(-1, exception.getMessage()));
      } 
    } catch (JSONException jSONException) {
      exception.a(new aby("-1", this.a.getResources().getString(lg.error_generic)));
      try {
        abp.b().a().a(a(str, jSONObject, new JSONObject()), new oq(this, (ot)exception));
        return;
      } catch (Exception exception1) {
        this.b.a(new aby(-1, exception1.getMessage()));
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\oo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */