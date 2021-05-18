import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;

class mfs implements View.OnAttachStateChangeListener {
  mfs(mfq parammfq, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener) {}
  
  public void onViewAttachedToWindow(View paramView) {
    this.b.a.setOnSeekBarChangeListener(mfq.b(this.b));
    this.b.a.getViewTreeObserver().addOnGlobalLayoutListener(this.a);
    if (mfq.c(this.b) != null)
      mfq.c(this.b).a(); 
  }
  
  public void onViewDetachedFromWindow(View paramView) {
    if (Build.VERSION.SDK_INT < 16) {
      this.b.a.getViewTreeObserver().removeGlobalOnLayoutListener(this.a);
    } else {
      this.b.a.getViewTreeObserver().removeOnGlobalLayoutListener(this.a);
    } 
    this.b.d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */