package com.santander.app.components.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.CheckBox;
import flv;
import mzr;

public class SantanderCheckBox extends CheckBox {
  public SantanderCheckBox(Context paramContext) {
    super(paramContext);
  }
  
  public SantanderCheckBox(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public SantanderCheckBox(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.SantanderTextView);
    String str = typedArray.getString(0);
    if (str != null)
      setTypeface(Typeface.createFromAsset(getContext().getAssets(), "fonts/" + str)); 
    typedArray.recycle();
    switch (mzr.d()) {
      default:
        setButtonDrawable(getResources().getDrawable(2130838166));
        return;
      case 3:
        setButtonDrawable(getResources().getDrawable(2130838167));
        return;
      case 4:
      case 5:
        break;
    } 
    setButtonDrawable(getResources().getDrawable(2130838168));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SantanderCheckBox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */