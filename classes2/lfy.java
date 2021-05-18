import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.widget.CompoundButton;

class lfy implements CompoundButton.OnCheckedChangeListener {
  lfy(lft paramlft) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      lft.c(this.a).setChecked(false);
      lft.e(this.a).setChecked(false);
      frq.d(lft.a(this.a), "PrefiroNaoOpinar");
      paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624409));
      return;
    } 
    paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624410));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lfy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */