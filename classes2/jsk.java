import android.view.View;
import com.santander.app.novidades.view.NovidadesActivity;

public class jsk implements View.OnClickListener {
  public jsk(NovidadesActivity paramNovidadesActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Marketing_TelaDeNovidades_Acao", "Pular");
    this.a.setResult(2);
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */