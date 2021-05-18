import android.support.v4.content.ContextCompat;
import android.widget.CompoundButton;

class llg implements CompoundButton.OnCheckedChangeListener {
  llg(lld paramlld, llj paramllj, krt paramkrt) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList(lld.c(this.c), 2131624409));
      llj.b(this.a).setChecked(false);
      this.b.c("N");
      if (!this.b.c().equals(this.b.e())) {
        lld.a(this.c, this.a);
      } else {
        lld.b(this.c, this.a);
      } 
      if (lld.a(this.c) != null)
        lld.a(this.c).a(lld.b(this.c)); 
      return;
    } 
    paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList(lld.c(this.c), 2131624410));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */