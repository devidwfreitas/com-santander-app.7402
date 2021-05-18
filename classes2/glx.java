import android.view.View;

class glx implements View.OnClickListener {
  glx(glu paramglu) {}
  
  public void onClick(View paramView) {
    paramView.setTag(Boolean.valueOf(glu.b(this.a)));
    glu.c(this.a).onClick(paramView);
    if (glu.b(this.a)) {
      glu.a(this.a, false);
    } else {
      glu.a(this.a, true);
    } 
    glu.b(this.a, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */