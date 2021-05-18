package br.com.santander.msgsdk.notifications.view;

import android.text.Editable;
import android.text.TextWatcher;

class NotificationsActivity$1 implements TextWatcher {
  public void afterTextChanged(Editable paramEditable) {
    NotificationsActivity.this.filter(paramEditable.toString());
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    NotificationsActivity.this.filter(paramCharSequence.toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationsActivity$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */