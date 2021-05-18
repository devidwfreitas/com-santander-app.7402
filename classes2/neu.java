import android.view.View;
import com.santander.app.widget.BottomExapandableView;

public class neu implements View.OnClickListener {
  public neu(BottomExapandableView paramBottomExapandableView) {}
  
  public void onClick(View paramView) {
    if (BottomExapandableView.a(this.a)) {
      BottomExapandableView.a(this.a, false);
      BottomExapandableView.b(this.a);
      BottomExapandableView.b(this.a, false);
      BottomExapandableView.c(this.a).setVisibility(8);
      BottomExapandableView.d(this.a).setBackgroundResource(2130837704);
      BottomExapandableView.e(this.a).setVisibility(0);
      BottomExapandableView.f(this.a).d();
      return;
    } 
    BottomExapandableView.a(this.a, true);
    BottomExapandableView.g(this.a);
    BottomExapandableView.b(this.a, true);
    BottomExapandableView.c(this.a).setVisibility(0);
    BottomExapandableView.d(this.a).setBackgroundResource(2130837703);
    BottomExapandableView.e(this.a).setVisibility(8);
    BottomExapandableView.f(this.a).c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\neu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */