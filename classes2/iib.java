import android.util.Log;
import org.json.JSONObject;

public class iib implements iia {
  public void a(gkw paramgkw) {
    ir ir = gnp.a().a(iic.FORMALIZACAO_CHECK_PROPOSAL.getEndpoint(), im.POST, null, new JSONObject(), true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void a(gkw paramgkw, JSONObject paramJSONObject) {
    ir ir = gnp.a().a(iic.FORMALIZACAO_FIND_PROPOSAL.getEndpoint(), im.POST, null, paramJSONObject, true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void a(gkw paramgkw, JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    ir ir = gnp.a().a(iic.FORMALIZACAO_AUTHORIZE_PROPOSAL.getEndpoint(), im.POST, paramJSONObject2, paramJSONObject1, true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void b(gkw paramgkw) {
    ir ir = gnp.a().a(iic.FORMALIZACAO_FIND_PROPOSALS.getEndpoint(), im.POST, null, new JSONObject(), true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void b(gkw paramgkw, JSONObject paramJSONObject) {
    ir ir = gnp.a().a(iic.FORMALIZACAO_UPDATE_PROPOSAL.getEndpoint(), im.PUT, null, paramJSONObject, true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void c(gkw paramgkw, JSONObject paramJSONObject) {
    ir ir = gnp.a().a(iic.FORMALIZACAO_REASONS_PROPOSAL.getEndpoint(), im.POST, null, paramJSONObject, true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void d(gkw paramgkw, JSONObject paramJSONObject) {
    ir ir = gnp.a().a(iic.FORMALIZACAO_CANCEL_PROPOSAL.getEndpoint(), im.PUT, null, paramJSONObject, true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iib.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */