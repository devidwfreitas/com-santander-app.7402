package com.santander.app.components.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import mzr;

public class SegmentTabHost extends LinearLayout {
  public SegmentTabHost(Context paramContext) {
    super(paramContext);
  }
  
  public SegmentTabHost(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    switch (mzr.d()) {
      default:
        return;
      case 3:
        setBackgroundResource(2130839125);
        return;
      case 4:
      case 5:
        break;
    } 
    setBackgroundResource(2130839126);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SegmentTabHost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */