import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;

class ikm implements CompoundButton.OnCheckedChangeListener {
  ikm(ikl paramikl, CheckBox paramCheckBox, LinearLayout paramLinearLayout, EditText paramEditText) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (this.a.isChecked()) {
      this.b.setVisibility(0);
      this.c.setEnabled(true);
      return;
    } 
    this.b.setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */