import android.view.View;
import com.santander.app.novidades.view.NovidadesActivity;

public class jsl implements View.OnClickListener {
  public jsl(NovidadesActivity paramNovidadesActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Marketing_TelaDeNovidades_Acao", "Fechar");
    this.a.setResult(2);
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */