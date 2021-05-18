import android.view.View;
import com.santander.app.habilitacaointernacional.activity.CadastrarHabilitacaoInternacionalActivity;

public class ima implements View.OnClickListener {
  public ima(CadastrarHabilitacaoInternacionalActivity paramCadastrarHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (CadastrarHabilitacaoInternacionalActivity.m(this.a).getCurrentItem() > 0)
      CadastrarHabilitacaoInternacionalActivity.m(this.a).setCurrentItem(CadastrarHabilitacaoInternacionalActivity.m(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ima.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */