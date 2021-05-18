package com.santander.app.seguros.utils;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;

public class CustomTypefaceSpan extends TypefaceSpan {
  private final Typeface a;
  
  public CustomTypefaceSpan(String paramString, Typeface paramTypeface) {
    super(paramString);
    this.a = paramTypeface;
  }
  
  private void a(Paint paramPaint, Typeface paramTypeface) {
    int i;
    Typeface typeface = paramPaint.getTypeface();
    if (typeface == null) {
      i = 0;
    } else {
      i = typeface.getStyle();
    } 
    i &= paramTypeface.getStyle() ^ 0xFFFFFFFF;
    if ((i & 0x1) != 0)
      paramPaint.setFakeBoldText(true); 
    if ((i & 0x2) != 0)
      paramPaint.setTextSkewX(-0.25F); 
    paramPaint.setTypeface(paramTypeface);
  }
  
  public void updateDrawState(TextPaint paramTextPaint) {
    a((Paint)paramTextPaint, this.a);
  }
  
  public void updateMeasureState(TextPaint paramTextPaint) {
    a((Paint)paramTextPaint, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\utils\CustomTypefaceSpan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */