import android.view.View;
import com.santander.app.habilitacaointernacional.activity.CadastrarHabilitacaoInternacionalActivity;

public class imb implements View.OnClickListener {
  public imb(CadastrarHabilitacaoInternacionalActivity paramCadastrarHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (CadastrarHabilitacaoInternacionalActivity.m(this.a).getCurrentItem() < CadastrarHabilitacaoInternacionalActivity.m(this.a).getAdapter().getCount() - 1)
      CadastrarHabilitacaoInternacionalActivity.m(this.a).setCurrentItem(CadastrarHabilitacaoInternacionalActivity.m(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */