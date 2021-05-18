import android.view.View;
import com.santander.app.PoupancaResgateActivity;

public class fkq implements View.OnClickListener {
  public fkq(PoupancaResgateActivity paramPoupancaResgateActivity) {}
  
  public void onClick(View paramView) {
    if (PoupancaResgateActivity.i(this.a).getCurrentItem() > 0)
      PoupancaResgateActivity.i(this.a).setCurrentItem(PoupancaResgateActivity.i(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */