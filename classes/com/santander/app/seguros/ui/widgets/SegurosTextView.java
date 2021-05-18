package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import flv;

public class SegurosTextView extends TextView {
  private final int a = 1;
  
  private final int b = 2;
  
  private final int c = 3;
  
  private final int d = 4;
  
  public SegurosTextView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SegurosTextView(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SegurosTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, 2131427538);
    a(paramAttributeSet);
  }
  
  private Typeface a(int paramInt) {
    switch (paramInt) {
      default:
        return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_light.ttf");
      case 1:
        return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_bold.ttf");
      case 2:
        return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_italic.ttf");
      case 4:
        return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_semibold.ttf");
      case 3:
        break;
    } 
    return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_regular.ttf");
  }
  
  private void a(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.SegurosTextView);
    try {
      setTypeface(a(typedArray.getInt(0, 0)));
      return;
    } finally {
      typedArray.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\SegurosTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */