import android.view.ViewTreeObserver;
import com.santander.app.seguros.ui.contract.activities.TermsOfUseActivity;

public class ljo implements ViewTreeObserver.OnGlobalLayoutListener {
  public ljo(TermsOfUseActivity paramTermsOfUseActivity) {}
  
  public void onGlobalLayout() {
    int i = TermsOfUseActivity.a(this.a);
    int j = TermsOfUseActivity.b(this.a).getChildAt(0).getHeight();
    TermsOfUseActivity.c(this.a);
    if (j > i) {
      TermsOfUseActivity.d(this.a);
      TermsOfUseActivity.b(this.a).getViewTreeObserver().removeOnGlobalLayoutListener(this);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ljo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */