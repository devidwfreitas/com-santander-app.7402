import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

class jol implements joh {
  public void a(String paramString, joi paramjoi) {
    try {
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("id", paramString);
      paramString = nab.a().b(jSONObject.toString());
      iq iq = gnz.a().a("/campaigns/v1/getCampaign", im.POST, paramString, true);
      gnz.a().b().a(iq, new jon(this, paramjoi));
      return;
    } catch (JSONException jSONException) {
    
    } catch (ExecutionException executionException) {
    
    } catch (InterruptedException interruptedException) {}
    paramjoi.a(new jnb(interruptedException));
  }
  
  public void a(String paramString, jok paramjok) {
    try {
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("id", paramString);
      paramString = nab.a().b(jSONObject.toString());
      iq iq = gnz.a().a("/campaigns/v1/getTerm", im.POST, paramString, true);
      gnz.a().b().a(iq, new joo(this, paramjok));
      return;
    } catch (JSONException jSONException) {
    
    } catch (ExecutionException executionException) {
    
    } catch (InterruptedException interruptedException) {}
    paramjok.a(new jnb(interruptedException));
  }
  
  public void a(joj paramjoj) {
    try {
      iq iq = gnz.a().a("/campaigns/v1/getHome", im.POST, "", true);
      gnz.a().b().a(iq, new jom(this, paramjoj));
      return;
    } catch (ExecutionException executionException) {
    
    } catch (InterruptedException interruptedException) {}
    paramjoj.a(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jol.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */