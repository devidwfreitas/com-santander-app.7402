import android.view.ViewTreeObserver;
import com.santander.app.WebViewActivity;

public class fnm implements ViewTreeObserver.OnGlobalLayoutListener {
  public fnm(WebViewActivity paramWebViewActivity) {}
  
  public void onGlobalLayout() {
    WebViewActivity.a(this.a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */