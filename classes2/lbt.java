import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;

class lbt implements View.OnClickListener {
  lbt(lbq paramlbq, View paramView, RelativeLayout paramRelativeLayout, int paramInt, ImageButton paramImageButton) {}
  
  public void onClick(View paramView) {
    if (this.a.getVisibility() == 0) {
      (this.b.getLayoutParams()).height = this.c;
      lbq.a(this.e, (View)this.d, 0);
      this.a.setVisibility(8);
      lbq.a(this.e, this.a, 1, 0);
      return;
    } 
    lbq.a(this.e, (View)this.d, 180);
    this.a.setVisibility(0);
    lbq.a(this.e, this.a, 0, 1);
    (this.b.getLayoutParams()).height = -2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */