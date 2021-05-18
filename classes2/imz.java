import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ExcluirHabilitacaoInternacionalActivity;

public class imz implements View.OnClickListener {
  public imz(ExcluirHabilitacaoInternacionalActivity paramExcluirHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (ExcluirHabilitacaoInternacionalActivity.b(this.a).getCurrentItem() < ExcluirHabilitacaoInternacionalActivity.b(this.a).getAdapter().getCount() - 1)
      ExcluirHabilitacaoInternacionalActivity.b(this.a).setCurrentItem(ExcluirHabilitacaoInternacionalActivity.b(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */