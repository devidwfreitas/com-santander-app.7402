import android.util.Log;
import org.json.JSONObject;

class gzl implements gkv {
  gzl(gzk paramgzk) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    try {
      if (gnp.a().b() != null) {
        paramObject = gnp.a().a("session-management/v1/initialize", im.POST, new JSONObject(mys.a().b(new gzt(paramObject.a(), "MBB", "false"))), true);
        gnv gnv = new gnv(new gzm(this), (ir)paramObject);
        gnp.a().b().a((ir)paramObject, gnv);
      } 
      return;
    } catch (Exception exception) {
      Log.e("ERROR_SERV", exception.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gzl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */