import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ConsultarAlterarHabilitacaoInternacionalActivity;

public class imr implements View.OnClickListener {
  public imr(ConsultarAlterarHabilitacaoInternacionalActivity paramConsultarAlterarHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (ConsultarAlterarHabilitacaoInternacionalActivity.d(this.a).getCurrentItem() > 0)
      ConsultarAlterarHabilitacaoInternacionalActivity.d(this.a).setCurrentItem(ConsultarAlterarHabilitacaoInternacionalActivity.d(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */