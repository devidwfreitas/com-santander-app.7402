import android.view.View;

class iay implements View.OnClickListener {
  iay(iaw paramiaw, int paramInt) {}
  
  public void onClick(View paramView) {
    if (iaw.a(this.b) != null && !iaw.a(this.b).isEmpty()) {
      double d;
      if (iaw.b(this.b) >= ((hzb)iaw.a(this.b).get(this.a)).c()) {
        d = iaw.b(this.b) - ((hzb)iaw.a(this.b).get(this.a)).c();
      } else {
        d = ((hzb)iaw.a(this.b).get(this.a)).c() - iaw.b(this.b);
      } 
      iaw.c(this.b).l().removeViewAt(this.a);
      iaw.a(this.b, d);
      iaw.a(this.b).remove(this.a);
      iaw.c(this.b).h_().setText("Anexos (" + this.b.e() + ")");
    } 
    if (iaw.a(this.b) == null || iaw.a(this.b).isEmpty())
      iaw.c(this.b).h_().setVisibility(8); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */