import android.content.SharedPreferences;
import android.text.TextUtils;
import com.santander.app.MinhaConta;
import java.util.ArrayList;
import java.util.List;

public class ipn implements ipi {
  private static final String a = "SemaforoCache_Prefs";
  
  private static final String b = "SemaforoCache_Prefs_SemaforoList";
  
  @eks(a = "semaforo_list")
  private List<ipm> c = new ArrayList<ipm>();
  
  public ipn(List<ipm> paramList) {
    if (paramList != null)
      this.c.addAll(paramList); 
    d();
  }
  
  public static ipi a() {
    String str = c().getString("SemaforoCache_Prefs_SemaforoList", "");
    return TextUtils.isEmpty(str) ? new ipn(null) : (ipi)(new ejm()).a(str, ipn.class);
  }
  
  private List<ipm> b() {
    return (this.c != null) ? this.c : new ArrayList<ipm>();
  }
  
  private static SharedPreferences c() {
    return MinhaConta.b().getSharedPreferences("SemaforoCache_Prefs", 0);
  }
  
  private void d() {
    SharedPreferences.Editor editor = c().edit();
    editor.putString("SemaforoCache_Prefs_SemaforoList", (new ejm()).b(this));
    editor.apply();
  }
  
  public ipm a(@ipo String paramString) {
    for (ipm ipm : b()) {
      if (ipm != null && ipm.a().equals(paramString))
        return ipm; 
    } 
    return null;
  }
  
  public boolean b(@ipo String paramString) {
    ipm ipm = a(paramString);
    return (ipm != null && ipm.b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ipn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */