import android.app.Activity;
import android.content.SharedPreferences;
import android.util.Log;

public class gyl implements gyj {
  private Activity a;
  
  private SharedPreferences b;
  
  private gyk c;
  
  public gyl(gyk paramgyk, Activity paramActivity) {
    this.a = paramActivity;
    this.c = paramgyk;
  }
  
  public gyi a() {
    String str1;
    this.b = this.a.getSharedPreferences("porquinhoJanelaPreferences", 0);
    gyi gyi = new gyi();
    try {
      str1 = this.b.getString("porquinho_cpf", "");
      String str = str1;
      try {
        if (!"".equals(str1))
          str = nag.b(this.b.getString("porquinho_cpf", "")); 
        gyi.b(str);
        gyi.a(this.b.getString("porquinho_data", ""));
        gyi.a(this.b.getBoolean("state_porquinho", true));
        return gyi;
      } catch (Exception null) {}
    } catch (Exception exception) {
      str1 = "";
    } 
    Log.e("Error", exception.getMessage());
    String str2 = str1;
    gyi.b(str2);
    gyi.a(this.b.getString("porquinho_data", ""));
    gyi.a(this.b.getBoolean("state_porquinho", true));
    return gyi;
  }
  
  public void a(gxa paramgxa) {
    (new gxv(new gym(this, paramgxa), this.a)).a(paramgxa.f(), "S", paramgxa.i(), paramgxa.j());
  }
  
  public void a(String paramString, boolean paramBoolean) {
    String str = "";
    try {
      String str1 = nag.a(miq.C().f().k());
      str = str1;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    SharedPreferences.Editor editor = this.b.edit();
    editor.putString("porquinho_data", paramString);
    editor.putBoolean("state_porquinho", paramBoolean);
    editor.putString("porquinho_cpf", str);
    editor.commit();
  }
  
  public void b(gxa paramgxa) {
    (new gxv(new gyn(this), this.a)).a(paramgxa.i(), paramgxa.j());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gyl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */