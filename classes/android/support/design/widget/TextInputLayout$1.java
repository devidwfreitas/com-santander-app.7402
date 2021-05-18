package android.support.design.widget;

import android.text.Editable;
import android.text.TextWatcher;

class TextInputLayout$1 implements TextWatcher {
  public void afterTextChanged(Editable paramEditable) {
    boolean bool;
    TextInputLayout textInputLayout = TextInputLayout.this;
    if (!TextInputLayout.access$000(TextInputLayout.this)) {
      bool = true;
    } else {
      bool = false;
    } 
    textInputLayout.updateLabelState(bool);
    if (TextInputLayout.this.mCounterEnabled)
      TextInputLayout.this.updateCounter(paramEditable.length()); 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TextInputLayout$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */