import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;

final class gsc implements ViewPropertyAnimatorListener {
  gsc(gsf paramgsf) {}
  
  public void onAnimationCancel(View paramView) {}
  
  public void onAnimationEnd(View paramView) {
    if (!this.a.b(paramView))
      paramView.setDrawingCacheEnabled(false); 
  }
  
  public void onAnimationStart(View paramView) {
    if (!this.a.a(paramView))
      paramView.setDrawingCacheEnabled(true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */