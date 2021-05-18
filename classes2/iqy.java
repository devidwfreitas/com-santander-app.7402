import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class iqy implements View.OnClickListener {
  public iqy(HomeLogadaActivity paramHomeLogadaActivity, ipp paramipp) {}
  
  public void onClick(View paramView) {
    if (((Boolean)paramView.getTag()).booleanValue()) {
      switch (iqt.a[this.a.ordinal()]) {
        default:
          return;
        case 1:
          HomeLogadaActivity.c(this.b).t();
          return;
        case 2:
        case 3:
          break;
      } 
      HomeLogadaActivity.c(this.b).b(this.a);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iqy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */