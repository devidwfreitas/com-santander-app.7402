package com.santander.app.components.view;

import android.content.Context;
import android.support.v7.widget.AppCompatSpinner;
import android.util.AttributeSet;
import mzr;

public class SegmentSpinner extends AppCompatSpinner {
  public SegmentSpinner(Context paramContext) {
    super(paramContext);
  }
  
  public SegmentSpinner(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SegmentSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    switch (mzr.d()) {
      default:
        return;
      case 3:
        setBackgroundResource(2130839096);
        return;
      case 4:
      case 5:
        break;
    } 
    setBackgroundResource(2130839097);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SegmentSpinner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */