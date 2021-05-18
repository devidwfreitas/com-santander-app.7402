import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

public class qw extends abw {
  private Context a;
  
  private qy b;
  
  public qw(Context paramContext) {
    this.a = paramContext;
  }
  
  public void a(String paramString, tk paramtk, qy paramqy) {
    this.b = paramqy;
    JSONObject jSONObject = new JSONObject();
    try {
      JSONObject jSONObject1 = new JSONObject((new eju()).j().b(new qv(paramString, paramtk)));
      try {
        abp.b().a().a(a(a(abq.DETALHE_INVESTIMENTO.getEndpoint()), b(), jSONObject1), new qx(this, paramqy));
        return;
      } catch (Exception exception) {
        this.b.a(new aby(-1, exception.getMessage()));
      } 
    } catch (JSONException jSONException) {
      this.b.a(new aby(-1, jSONException.getMessage()));
      JSONObject jSONObject1 = jSONObject;
      try {
        abp.b().a().a(a(a(abq.DETALHE_INVESTIMENTO.getEndpoint()), b(), jSONObject1), new qx(this, paramqy));
        return;
      } catch (Exception exception) {
        this.b.a(new aby(-1, exception.getMessage()));
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\qw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */