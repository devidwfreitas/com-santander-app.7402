import android.view.View;
import android.widget.ImageButton;

class liv implements View.OnClickListener {
  liv(lis paramlis, int paramInt1, int paramInt2, ImageButton paramImageButton1, ImageButton paramImageButton2) {}
  
  public void onClick(View paramView) {
    lis.c(this.e).setText(this.a);
    lis.d(this.e).setText(this.b);
    if (!this.c.isActivated()) {
      lis.a(this.e, this.c);
      lis.b(this.e, this.d);
    } 
    lis.e(this.e).setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\liv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */