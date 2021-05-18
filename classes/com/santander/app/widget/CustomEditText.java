package com.santander.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;

public class CustomEditText extends EditText {
  public CustomEditText(Context paramContext) {
    super(paramContext);
  }
  
  public CustomEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent) {
    return (paramInt == 4 && paramKeyEvent.getAction() == 1) ? true : super.onKeyPreIme(paramInt, paramKeyEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\widget\CustomEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */