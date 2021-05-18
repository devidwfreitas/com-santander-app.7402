package com.santander.app.components.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import flv;

public class SantanderCheckedTextView extends CheckedTextView {
  public SantanderCheckedTextView(Context paramContext) {
    super(paramContext);
  }
  
  public SantanderCheckedTextView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public SantanderCheckedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.SantanderTextView);
    String str = typedArray.getString(0);
    if (str != null)
      setTypeface(Typeface.createFromAsset(getContext().getAssets(), "fonts/" + str)); 
    typedArray.recycle();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SantanderCheckedTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */