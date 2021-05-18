import android.support.v4.widget.NestedScrollView;
import com.santander.app.seguros.ui.contract.activities.TermsOfUseActivity;

public class ljq implements NestedScrollView.OnScrollChangeListener {
  public ljq(TermsOfUseActivity paramTermsOfUseActivity) {}
  
  public void onScrollChange(NestedScrollView paramNestedScrollView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (TermsOfUseActivity.e(this.a).getVisibility() == 0) {
      if (paramInt2 > 0) {
        paramInt1 = TermsOfUseActivity.b(this.a).getHeight();
        paramInt3 = TermsOfUseActivity.b(this.a).getChildAt(0).getHeight();
        float f = paramInt2 * 1.0F / (paramInt3 - paramInt1);
        TermsOfUseActivity.e(this.a).setAlpha(1.0F - f);
        return;
      } 
    } else {
      return;
    } 
    TermsOfUseActivity.e(this.a).setAlpha(1.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ljq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */