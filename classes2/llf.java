import android.support.v4.content.ContextCompat;
import android.widget.CompoundButton;

class llf implements CompoundButton.OnCheckedChangeListener {
  llf(lld paramlld, krt paramkrt, llj paramllj) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList(lld.c(this.c), 2131624409));
      this.a.c("S");
      if (!this.a.c().equals(this.a.e())) {
        lld.a(this.c, this.b);
      } else {
        lld.b(this.c, this.b);
      } 
      if (lld.a(this.c) != null)
        lld.a(this.c).a(lld.b(this.c)); 
      llj.c(this.b).setChecked(false);
      return;
    } 
    paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList(lld.c(this.c), 2131624410));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */