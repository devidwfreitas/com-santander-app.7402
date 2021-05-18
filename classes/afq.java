import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import br.com.santander.modulo.ddav1.view.DDAErrorActivity;
import java.util.ArrayList;
import org.json.JSONObject;

final class afq implements aej {
  afq(afh paramafh, Dialog paramDialog, JSONObject paramJSONObject) {}
  
  private static boolean b(is paramis) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramis != null) {
      bool1 = bool2;
      try {
        if (paramis.a().equals(Integer.valueOf(420))) {
          boolean bool = (new JSONObject(paramis.b())).getJSONObject("altairMessage").getJSONObject("altairError").getString("errorCode").equals("TYE0091");
          bool1 = bool2;
          if (bool)
            bool1 = true; 
        } 
        return bool1;
      } catch (Exception exception) {
        Log.e(adh.class.getName(), Log.getStackTraceString(exception));
        return false;
      } 
    } 
    return bool1;
  }
  
  public final void a(is paramis) {
    this.b.dismiss();
    if (this.c.length() == 0)
      try {
        if (b(paramis)) {
          Intent intent = new Intent((Context)afh.a(this.a), DDAErrorActivity.class);
          intent.addFlags(67108864);
          intent.addFlags(268435456);
          intent.putExtra("titleError", afh.a(this.a).getString(adw.msg_sem_dda_1));
          intent.putExtra("subtitleError", afh.a(this.a).getString(adw.msg_sem_dda_2));
          afh.a(this.a).startActivity(intent);
          afh.a(this.a).finish();
          return;
        } 
        adh.a().a(afh.a(this.a), afh.a(this.a).getString(adw.erro_retorno_service));
        return;
      } catch (Exception exception) {
        Log.e(adh.class.getName(), Log.getStackTraceString(exception));
        return;
      }  
    adh.a().a(afh.a(this.a), afh.a(this.a).getString(adw.erro_retorno_service));
  }
  
  public final void a(String paramString, ArrayList<aeb> paramArrayList) {
    Intent intent;
    boolean bool;
    this.b.dismiss();
    if (paramArrayList == null || paramArrayList.isEmpty()) {
      intent = new Intent((Context)afh.a(this.a), DDAErrorActivity.class);
      intent.putExtra("titleError", afh.a(this.a).getString(adw.msg_sem_boleto));
      intent.addFlags(67108864);
      intent.addFlags(268435456);
      afh.a(this.a).startActivity(intent);
      afh.a(this.a).finish();
      return;
    } 
    afh.b(this.a).setVisibility(0);
    if (this.c.length() == 0) {
      afh.a(this.a, paramArrayList);
      afh.c(this.a);
    } else if (!((aeb)paramArrayList.get(0)).b().equals("")) {
      afh.d(this.a).addAll(paramArrayList);
      afh.e(this.a).post(new afr(this));
    } 
    aer aer = afh.f(this.a);
    if (paramArrayList != null && !paramArrayList.isEmpty() && !((aeb)paramArrayList.get(0)).b().equals("") && intent.equals("TYA0001")) {
      bool = true;
    } else {
      bool = false;
    } 
    aer.a(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\afq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */