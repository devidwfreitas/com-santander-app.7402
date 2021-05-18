package com.santander.app.components.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckBox;
import mzr;

public class SegmentCheckBox extends CheckBox {
  public SegmentCheckBox(Context paramContext) {
    super(paramContext);
  }
  
  public SegmentCheckBox(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SegmentCheckBox(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SegmentCheckBox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */