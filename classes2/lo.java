import android.content.Context;
import android.util.Log;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class lo extends abw {
  private Context a;
  
  private lt b;
  
  public lo() {}
  
  public lo(Context paramContext) {
    this.a = paramContext;
  }
  
  private void a(JSONObject paramJSONObject) {
    try {
      abp.b().a().a(b(a(abq.MANTER_CARRINHO.getEndpoint()), b(), paramJSONObject), new lp(this));
      return;
    } catch (Exception exception) {
      this.b.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
  
  public void a() {
    JSONObject jSONObject = new JSONObject();
    try {
      JSONObject jSONObject1 = new JSONObject((new eju()).j().b(new lu("MA")));
      jSONObject = jSONObject1;
    } catch (JSONException jSONException) {}
    a(jSONObject);
    this.b = new lr(this);
  }
  
  public void a(List<ace> paramList, lt paramlt) {
    JSONException jSONException1;
    this.b = paramlt;
    JSONObject jSONObject = new JSONObject();
    try {
      JSONObject jSONObject1 = new JSONObject((new eju()).j().b(new lu("MA", paramList)));
      try {
        Log.e("requestCarrinho", jSONObject1.toString());
        a(jSONObject1);
        return;
      } catch (JSONException jSONException2) {}
    } catch (JSONException jSONException) {
      jSONException1 = jSONException2;
      jSONException2 = jSONException;
    } 
    this.b.a(new aby(-1, jSONException2.getMessage()));
    a((JSONObject)jSONException1);
  }
  
  public void a(lt paramlt) {
    this.b = paramlt;
    try {
      abp.b().a().a(a(a(abq.MANTER_CARRINHO.getEndpoint()) + "&operationType=C", b()), new lq(this, paramlt));
      return;
    } catch (Exception exception) {
      this.b.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
  
  public void b(List<ace> paramList, lt paramlt) {
    JSONException jSONException1;
    this.b = paramlt;
    JSONObject jSONObject = new JSONObject();
    try {
      JSONObject jSONObject1 = new JSONObject((new eju()).j().b(new lu("MR", paramList)));
      try {
        Log.e("requestCarrinho", jSONObject1.toString());
        a(jSONObject1);
        return;
      } catch (JSONException jSONException2) {}
    } catch (JSONException jSONException) {
      jSONException1 = jSONException2;
      jSONException2 = jSONException;
    } 
    this.b.a(new aby(-1, jSONException2.getMessage()));
    a((JSONObject)jSONException1);
  }
  
  public void b(lt paramlt) {
    this.b = paramlt;
    try {
      abp.b().a().a(a(a(abq.USER_INFO.getEndpoint()) + "&flagOnlyCartIndicator=true", b()), new ls(this, paramlt));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */