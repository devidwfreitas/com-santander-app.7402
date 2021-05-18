import android.content.Context;
import android.content.SharedPreferences;

public class fsg {
  public void a(Context paramContext) {
    SharedPreferences.Editor editor = paramContext.getSharedPreferences("avaliacaoApp", 0).edit();
    editor.putBoolean("transacaoKey", true);
    editor.commit();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fsg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */