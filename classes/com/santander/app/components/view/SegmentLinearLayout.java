package com.santander.app.components.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import mzr;

public class SegmentLinearLayout extends LinearLayout {
  public SegmentLinearLayout(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public SegmentLinearLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public SegmentLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  public SegmentLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a();
  }
  
  private void a() {
    switch (mzr.d()) {
      default:
        return;
      case 3:
        setBackgroundColor(getResources().getColor(2131623998));
        return;
      case 4:
      case 5:
        break;
    } 
    setBackgroundColor(getResources().getColor(2131624369));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SegmentLinearLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */