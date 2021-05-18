import android.view.ViewTreeObserver;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class iuh implements ViewTreeObserver.OnScrollChangedListener {
  public iuh(HomeActivity paramHomeActivity, int paramInt) {}
  
  public void onScrollChanged() {
    if (HomeActivity.c(this.b) == this.a) {
      frq.d("Login_Acao", "GirarCarrosselHomeNaoLogada");
      HomeActivity.a(this.b, 0);
      return;
    } 
    HomeActivity.d(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iuh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */