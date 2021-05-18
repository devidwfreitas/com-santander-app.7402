import android.view.View;
import android.widget.LinearLayout;

class hda implements View.OnClickListener {
  hda(hcz paramhcz, LinearLayout paramLinearLayout, int paramInt) {}
  
  public void onClick(View paramView) {
    if (this.a.getVisibility() == 8) {
      this.a.setVisibility(0);
      ((heq)hcz.a(this.c).get(this.b)).a(Boolean.valueOf(true));
    } else {
      this.a.setVisibility(8);
      ((heq)hcz.a(this.c).get(this.b)).a(Boolean.valueOf(false));
    } 
    this.c.notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hda.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */