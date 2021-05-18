package com.santander.app.components.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import mzr;

public class SegmentTextView extends TextView {
  public static final String a = "http://schemas.android.com/apk/res/android";
  
  public SegmentTextView(Context paramContext) {
    super(paramContext);
    a(paramContext, (AttributeSet)null);
    a();
  }
  
  public SegmentTextView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
    a();
  }
  
  public SegmentTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
    a();
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
  
  @SuppressLint({"ResourceAsColor"})
  private void a() {
    switch (mzr.d()) {
      default:
        return;
      case 3:
        setTextColor(-12041923);
        return;
      case 4:
      case 5:
        break;
    } 
    setTextColor(getResources().getColor(2131623937));
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    byte b = 0;
    int i = b;
    if (paramAttributeSet != null)
      try {
        i = paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "textStyle", 0);
      } catch (Exception exception) {
        Log.e("Error", exception.toString());
        i = b;
      }  
    setTypeface(a(paramContext, i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SegmentTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */