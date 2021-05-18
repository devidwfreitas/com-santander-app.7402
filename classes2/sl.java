import android.content.Context;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class sl extends abw {
  public void a(Context paramContext, Boolean paramBoolean, List<String> paramList, yt paramyt, String paramString, sn paramsn) {
    JSONObject jSONObject1;
    StringBuilder stringBuilder = new StringBuilder();
    JSONObject jSONObject3 = new JSONObject();
    if (paramBoolean.booleanValue()) {
      stringBuilder.append(abq.EFETIVAR_RESGATE.getEndpoint());
      jSONObject1 = jSONObject3;
    } else {
      stringBuilder.append(abq.EFETIVAR_APLICACAO.getEndpoint());
      jSONObject1 = jSONObject3;
      if (paramList != null)
        try {
          jSONObject1 = new JSONObject((new eju()).j().b(new so(paramList)));
        } catch (JSONException jSONException) {
          paramsn.a(new aby(-1, jSONException.getMessage()));
          jSONObject1 = jSONObject3;
        }  
    } 
    stringBuilder.append("?gw-app-key=").append(abp.b().a().a().c());
    jSONObject3 = new JSONObject();
    JSONObject jSONObject2 = jSONObject3;
    if (paramyt != null)
      try {
        jSONObject2 = new JSONObject((new eju()).j().b(paramyt, yt.class));
      } catch (JSONException jSONException) {
        paramsn.a(new aby(-1, jSONException.getMessage()));
        jSONObject2 = jSONObject3;
      }  
    if (paramString != null) {
      try {
        jSONObject2.put("otp", paramString);
        try {
          abp.b().a().a(a(stringBuilder.toString(), jSONObject2, jSONObject1), new sm(this, paramsn, paramContext));
          return;
        } catch (Exception null) {
          paramsn.a(new aby(-1, exception.getMessage()));
        } 
      } catch (JSONException jSONException) {
        paramsn.a(new aby(-1, jSONException.getMessage()));
        try {
          abp.b().a().a(a(stringBuilder.toString(), jSONObject2, jSONObject1), new sm(this, paramsn, (Context)exception));
          return;
        } catch (Exception exception) {
          paramsn.a(new aby(-1, exception.getMessage()));
        } 
      } 
      return;
    } 
    try {
      abp.b().a().a(a(stringBuilder.toString(), jSONObject2, jSONObject1), new sm(this, paramsn, (Context)exception));
      return;
    } catch (Exception exception1) {
      paramsn.a(new aby(-1, exception1.getMessage()));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\sl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */