package com.santander.app.components.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import flv;

public class FontFitTextView extends TextView {
  private Paint a;
  
  public FontFitTextView(Context paramContext) {
    super(paramContext);
    a((AttributeSet)null);
    a();
  }
  
  public FontFitTextView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
    a();
  }
  
  private void a() {
    this.a = new Paint();
    this.a.set((Paint)getPaint());
  }
  
  private void a(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.SantanderTextView);
    String str = typedArray.getString(0);
    if (str != null)
      setTypeface(Typeface.createFromAsset(getContext().getAssets(), "fonts/" + str)); 
    typedArray.recycle();
  }
  
  private void a(String paramString, int paramInt) {
    a((AttributeSet)null);
    if (paramInt > 0) {
      int i = getPaddingLeft();
      int j = getPaddingRight();
      float f1 = 100.0F;
      this.a.set((Paint)getPaint());
      float f2;
      for (f2 = 2.0F; f1 - f2 > 0.5F; f2 = f) {
        float f = (f1 + f2) / 2.0F;
        this.a.setTextSize(f);
        if (this.a.measureText(paramString) >= (paramInt - i - j)) {
          f1 = f;
          continue;
        } 
      } 
      if (getTextSize() > f2) {
        setTextSize(0, f2);
        return;
      } 
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    a((AttributeSet)null);
    super.onMeasure(paramInt1, paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = getMeasuredHeight();
    a(getText().toString(), paramInt1);
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (paramInt1 != paramInt3)
      a(getText().toString(), paramInt1); 
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    a(paramCharSequence.toString(), getWidth());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\FontFitTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */