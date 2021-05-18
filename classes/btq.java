import android.view.ViewTreeObserver;

class btq implements ViewTreeObserver.OnScrollChangedListener {
  btq(btp parambtp) {}
  
  public void onScrollChanged() {
    if (btp.a(this.a).get() != null && btp.b(this.a) != null && btp.b(this.a).isShowing()) {
      if (btp.b(this.a).isAboveAnchor()) {
        btp.c(this.a).b();
        return;
      } 
    } else {
      return;
    } 
    btp.c(this.a).a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */