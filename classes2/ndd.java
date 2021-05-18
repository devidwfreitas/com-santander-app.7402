import android.os.Handler;
import android.text.Html;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;

public class ndd implements Runnable {
  public ndd(ValidacionOperacionFragment paramValidacionOperacionFragment, Handler paramHandler, Boolean paramBoolean) {}
  
  public void run() {
    ValidacionOperacionFragment.c(this.c);
    switch (ValidacionOperacionFragment.d(this.c)) {
      default:
        return;
      case 1:
        this.a.postDelayed(this, 1000L);
        return;
      case 2:
        ValidacionOperacionFragment.e(this.c).setText((CharSequence)Html.fromHtml(this.c.getResources().getString(2131299022)));
        this.a.postDelayed(this, 1000L);
        return;
      case 3:
        break;
    } 
    ValidacionOperacionFragment.e(this.c).setText((CharSequence)Html.fromHtml(this.c.getResources().getString(2131299056)));
    this.a.removeCallbacks(this);
    ValidacionOperacionFragment.a(this.c, 0);
    if (this.b.booleanValue()) {
      ValidacionOperacionFragment.b(this.c).j();
      return;
    } 
    ValidacionOperacionFragment.b(this.c).g();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */