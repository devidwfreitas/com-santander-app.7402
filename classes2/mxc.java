import android.content.Context;
import android.content.SharedPreferences;

public class mxc {
  private static final String a = "clipboard_codigo_barras_prefs";
  
  private static final String b = "clipboard_codigo_barras_prefs_codigo_barras";
  
  private mxb c;
  
  private SharedPreferences d;
  
  public mxc(Context paramContext) {
    this.c = new mxb(paramContext);
    this.d = paramContext.getSharedPreferences("clipboard_codigo_barras_prefs", 0);
  }
  
  public boolean a() {
    String str1 = this.d.getString("clipboard_codigo_barras_prefs_codigo_barras", "");
    String str2 = b();
    return ((str2.length() == 44 || str2.length() == 47 || str2.length() == 48) && !str2.equals(str1));
  }
  
  public String b() {
    CharSequence charSequence = this.c.a();
    return (charSequence != null) ? charSequence.toString().replaceAll("\\D+", "").trim() : "";
  }
  
  public void c() {
    if (!a())
      return; 
    this.d.edit().putString("clipboard_codigo_barras_prefs_codigo_barras", b()).apply();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */