import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.Button;
import br.com.santander.modulo.ddav1.view.TitlesActivity;

public class aff {
  private Activity a;
  
  private Button b;
  
  public aff(Activity paramActivity) {
    this.a = paramActivity;
    a();
    b();
  }
  
  private void a() {
    this.b = (Button)this.a.findViewById(adr.button_continuar_dda);
  }
  
  private void b() {
    this.b.setOnClickListener(new afk(this));
  }
  
  private void c() {
    adh.a().a("Pagamentos_DDA_Cadastrar_Sucesso_Acao", "Continuar");
    Intent intent = new Intent((Context)this.a, TitlesActivity.class);
    intent.addFlags(67108864);
    intent.addFlags(268435456);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */