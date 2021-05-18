package com.santander.app.components.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
import flv;

public class SantanderEditText extends EditText {
  private boolean a = false;
  
  public SantanderEditText(Context paramContext) {
    super(paramContext);
    a((AttributeSet)null);
  }
  
  public SantanderEditText(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public SantanderEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet) {
    if (paramAttributeSet != null) {
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.SantanderTextView);
      String str = typedArray.getString(0);
      if (str != null)
        setTypeface(Typeface.createFromAsset(getContext().getAssets(), "fonts/" + str)); 
      typedArray.recycle();
    } 
  }
  
  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent) {
    switch (paramKeyEvent.getKeyCode()) {
      default:
        return super.onKeyPreIme(paramInt, paramKeyEvent);
      case 4:
        break;
    } 
    clearFocus();
    if (this.a)
      return false; 
  }
  
  public void setOnKeyPreIme(boolean paramBoolean) {
    this.a = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SantanderEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */