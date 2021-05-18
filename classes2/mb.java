import android.view.ViewTreeObserver;

class mb implements ViewTreeObserver.OnGlobalLayoutListener {
  mb(ma paramma, mj parammj) {}
  
  public void onGlobalLayout() {
    if (this.a.f.getLayout() != null) {
      if (this.a.f.getLayout().getText().toString().equalsIgnoreCase(ma.a(this.b))) {
        this.a.g.setVisibility(8);
        return;
      } 
    } else {
      return;
    } 
    this.a.g.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */