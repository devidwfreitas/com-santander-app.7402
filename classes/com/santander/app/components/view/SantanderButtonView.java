package com.santander.app.components.view;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.Button;

public class SantanderButtonView extends Button {
  public static final String a = "http://schemas.android.com/apk/res/android";
  
  public SantanderButtonView(Context paramContext) {
    super(paramContext);
    a(paramContext, (AttributeSet)null);
  }
  
  public SantanderButtonView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderButtonView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private Typeface a(Context paramContext, int paramInt) {
    switch (paramInt) {
      default:
        return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_regular.ttf");
      case 1:
        return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_bold.ttf");
      case 2:
        return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_italic.ttf");
      case 3:
        break;
    } 
    return Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_bolditalic.ttf");
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    setTypeface(a(paramContext, paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "textStyle", 0)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SantanderButtonView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */