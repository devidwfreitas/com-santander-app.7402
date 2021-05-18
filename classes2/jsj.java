import android.view.View;
import com.santander.app.novidades.view.NovidadesActivity;

public class jsj implements View.OnClickListener {
  public jsj(NovidadesActivity paramNovidadesActivity) {}
  
  public void onClick(View paramView) {
    NovidadesActivity.a(this.a, true);
    frq.d("Marketing_TelaDeNovidades_Acao", "Continuar");
    NovidadesActivity.d(this.a).setCurrentItem(NovidadesActivity.d(this.a).getCurrentItem() + 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */