import android.content.Context;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import com.santander.app.novidades.view.NovidadesActivity;

public class jrr {
  private static final String c = "Seguimento Corrente";
  
  private static final CharSequence[] d = new CharSequence[] { "Seguimento Corrente", "PF", "UN", "JP", "VD", "SE", "VG", "PR" };
  
  private Context a;
  
  private jsf b;
  
  public jrr(Context paramContext) {
    this.a = paramContext;
    this.b = new jsh();
  }
  
  private void a(String paramString) {
    Intent intent;
    if (paramString == null) {
      intent = new Intent(this.a, NovidadesActivity.class);
      this.a.startActivity(intent);
      return;
    } 
    this.b.a((String)intent, new jrt(this, (String)intent));
  }
  
  private void c() {
    (new AlertDialog.Builder(this.a)).setTitle("Atenção").setMessage("O seguimento selecionado não possui novidades.").setNegativeButton("Ok", null).show();
  }
  
  public void a() {
    (new AlertDialog.Builder(this.a)).setTitle("Selecione o seguimento?").setItems(d, new jrs(this)).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */