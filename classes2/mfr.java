import android.view.ViewTreeObserver;

class mfr implements ViewTreeObserver.OnGlobalLayoutListener {
  mfr(mfq parammfq) {}
  
  public void onGlobalLayout() {
    if (this.a.a.getVisibility() != 0) {
      this.a.d();
      return;
    } 
    mfq.a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */