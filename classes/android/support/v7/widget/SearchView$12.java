package android.support.v7.widget;

import android.text.Editable;
import android.text.TextWatcher;

class SearchView$12 implements TextWatcher {
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    SearchView.this.onTextChanged(paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$12.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */