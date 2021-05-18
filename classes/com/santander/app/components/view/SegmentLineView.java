package com.santander.app.components.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import mzr;

public class SegmentLineView extends View {
  public SegmentLineView(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public SegmentLineView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public SegmentLineView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a() {
    switch (mzr.d()) {
      default:
        return;
      case 3:
        setBackgroundColor(-12041923);
        return;
      case 4:
      case 5:
        break;
    } 
    setBackgroundColor(-4837585);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SegmentLineView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */