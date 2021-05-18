import android.content.SharedPreferences;
import android.util.Log;
import com.santander.app.MinhaConta;

public class mwz {
  public static String a() {
    String str = MinhaConta.b().getSharedPreferences("SovereignBrasilProfile", 0).getString("aat", "");
    return (str != null && !str.equals("")) ? nag.b(str) : "";
  }
  
  public static void a(String paramString) {
    if (paramString != null && !paramString.equals(""))
      try {
        SharedPreferences.Editor editor = MinhaConta.b().getSharedPreferences("SovereignBrasilProfile", 0).edit();
        editor.putString("aat", nag.a(paramString));
        editor.commit();
        return;
      } catch (Exception exception) {
        Log.e("Error", exception.toString());
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */