import android.view.View;
import com.santander.app.RendaFixaResgateActivity;

public class fmo implements View.OnClickListener {
  public fmo(RendaFixaResgateActivity paramRendaFixaResgateActivity) {}
  
  public void onClick(View paramView) {
    if (RendaFixaResgateActivity.c(this.a).getCurrentItem() < RendaFixaResgateActivity.c(this.a).getAdapter().getCount() - 1)
      RendaFixaResgateActivity.c(this.a).setCurrentItem(RendaFixaResgateActivity.c(this.a).getCurrentItem() + 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */