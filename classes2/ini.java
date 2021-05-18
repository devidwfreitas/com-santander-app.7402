import android.view.View;
import com.santander.app.habilitacaointernacional.activity.HabilitacaoInternacionalActivity;

public class ini implements View.OnClickListener {
  public ini(HabilitacaoInternacionalActivity paramHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    if (HabilitacaoInternacionalActivity.g(this.a).getCurrentItem() > 0)
      HabilitacaoInternacionalActivity.g(this.a).setCurrentItem(HabilitacaoInternacionalActivity.g(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ini.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */