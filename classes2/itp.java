import android.app.Activity;
import android.content.SharedPreferences;
import android.util.Log;
import com.santander.app.MinhaConta;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

public class itp implements itn {
  private Activity a;
  
  public itp(Activity paramActivity) {
    this.a = paramActivity;
  }
  
  public String a() {
    return MinhaConta.b().getSharedPreferences("SovereignBrasilProfile", 0).getString("segmento", "999");
  }
  
  public void a(gkw paramgkw) {
    (new itt(new itr(this, paramgkw))).execute((Object[])new Void[0]);
  }
  
  public void a(gkw paramgkw, String paramString) {
    String str;
    if (miq.C().w()) {
      str = nab.a().d();
    } else {
      str = "";
    } 
    (new itv(this.a, paramString, mwz.a(), str, new itq(this, paramgkw))).execute((Object[])new Void[0]);
  }
  
  public void a(ito paramito) {
    try {
      JSONObject jSONObject1 = new JSONObject();
      jSONObject1.put("uuid", miq.C().i());
      jSONObject1.put("version", "7.4.0.2");
      JSONObject jSONObject2 = new JSONObject();
      jSONObject2.put("Content-Type", "application/json");
      ir ir = gnz.a().a("version/v1/checkVersionAndroid", im.POST, jSONObject2, jSONObject1, false);
      gnz.a().g().a(ir, new its(this, paramito));
      return;
    } catch (JSONException jSONException) {
    
    } catch (ExecutionException executionException) {
    
    } catch (InterruptedException interruptedException) {
    
    } finally {
      gnz.a().b().a(gnz.b);
    } 
    paramito.a();
    gnz.a().b().a(gnz.b);
  }
  
  public void a(String paramString) {
    SharedPreferences sharedPreferences = MinhaConta.b().getSharedPreferences("SovereignBrasilProfile", 0);
    try {
      SharedPreferences.Editor editor = sharedPreferences.edit();
      if (paramString != null && !paramString.isEmpty()) {
        paramString = nag.a(nai.c(paramString));
      } else {
        paramString = null;
      } 
      editor.putString("l", paramString);
      editor.commit();
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return;
    } 
  }
  
  public String b() {
    return MinhaConta.b().getSharedPreferences("SovereignBrasilProfile", 0).getString("l", "");
  }
  
  public void c() {
    SharedPreferences.Editor editor = MinhaConta.b().getSharedPreferences("SovereignBrasilProfile", 0).edit();
    editor.putString("l", "");
    editor.commit();
  }
  
  public String[] d() {
    return new String[] { "android.permission.READ_PHONE_STATE" };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */