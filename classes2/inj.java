import android.view.View;
import com.santander.app.habilitacaointernacional.activity.HabilitacaoInternacionalActivity;

public class inj implements View.OnClickListener {
  public inj(HabilitacaoInternacionalActivity paramHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (HabilitacaoInternacionalActivity.g(this.a).getCurrentItem() < HabilitacaoInternacionalActivity.g(this.a).getAdapter().getCount() - 1)
      HabilitacaoInternacionalActivity.g(this.a).setCurrentItem(HabilitacaoInternacionalActivity.g(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */