import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ConsultarAlterarHabilitacaoInternacionalActivity;

public class ims implements View.OnClickListener {
  public ims(ConsultarAlterarHabilitacaoInternacionalActivity paramConsultarAlterarHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (ConsultarAlterarHabilitacaoInternacionalActivity.d(this.a).getCurrentItem() < ConsultarAlterarHabilitacaoInternacionalActivity.d(this.a).getAdapter().getCount() - 1)
      ConsultarAlterarHabilitacaoInternacionalActivity.d(this.a).setCurrentItem(ConsultarAlterarHabilitacaoInternacionalActivity.d(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ims.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */