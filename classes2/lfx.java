import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.widget.CompoundButton;

class lfx implements CompoundButton.OnCheckedChangeListener {
  lfx(lft paramlft) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      lft.g(this.a).setChecked(false);
      lft.c(this.a).setChecked(false);
      frq.d(lft.a(this.a), "NaoGostoProduto");
      paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624409));
      return;
    } 
    paramCompoundButton.setButtonTintList(ContextCompat.getColorStateList((Context)this.a.getActivity(), 2131624410));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */