package com.santander.app.components.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.Spinner;
import flv;

public class SantanderSpinner extends Spinner {
  public SantanderSpinner(Context paramContext) {
    super(paramContext);
    a(null);
  }
  
  public SantanderSpinner(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public SantanderSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.SantanderTextView);
    String str = typedArray.getString(0);
    if (str != null)
      Typeface.createFromAsset(getContext().getAssets(), "fonts/" + str); 
    typedArray.recycle();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SantanderSpinner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */