package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.Button;
import flv;

public class ImageTextButton extends Button {
  Rect a = new Rect();
  
  private final int b = 0;
  
  private final String c = "";
  
  private final float d = (getResources().getDisplayMetrics()).density * 30.0F;
  
  private final float e = (getResources().getDisplayMetrics()).density * 30.0F;
  
  private final String f = "fonts/OpenSans-Light.ttf";
  
  private TextPaint g;
  
  private String h;
  
  private Bitmap i;
  
  private TextPaint j;
  
  private float k;
  
  private float l;
  
  private float m;
  
  private float n;
  
  private int o;
  
  private int p = 0;
  
  private boolean q;
  
  private String r = "fonts/OpenSans-Light.ttf";
  
  private float s = 0.0F;
  
  private float t = 0.0F;
  
  public ImageTextButton(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public ImageTextButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.ImageTextButton, 0, 0);
    this.h = typedArray.getString(0);
    if (this.h == null)
      this.h = ""; 
    this.n = typedArray.getDimension(1, getResources().getDimensionPixelSize(2131362080));
    this.t = typedArray.getDimension(9, this.e);
    this.s = typedArray.getDimension(8, this.d);
    this.p = typedArray.getColor(10, 0);
    Drawable drawable = typedArray.getDrawable(2);
    if (drawable != null)
      this.i = Bitmap.createScaledBitmap(((BitmapDrawable)drawable).getBitmap(), (int)this.s, (int)this.t, false); 
    this.o = typedArray.getColor(3, getResources().getColor(2131624121));
    this.l = typedArray.getDimension(4, 0.0F);
    this.k = typedArray.getDimension(7, 0.0F);
    this.q = typedArray.getBoolean(5, false);
    this.r = typedArray.getString(6);
    typedArray.recycle();
    a();
  }
  
  public int a(String paramString, Paint paramPaint) {
    Rect rect = new Rect();
    paramPaint.getTextBounds(paramString, 0, paramString.length(), rect);
    int i = rect.left;
    return rect.width() + i;
  }
  
  public void a() {
    this.j = new TextPaint(1);
    this.g = new TextPaint(1);
    if (this.h != null) {
      if (TextUtils.isEmpty(this.r))
        this.r = "fonts/OpenSans-Light.ttf"; 
      if (this.q)
        this.h = this.h.toUpperCase(); 
      this.g.setColor(this.o);
      this.g.setTextSize(this.n);
      this.m = this.k + this.l;
      this.g.getTextBounds(this.h, 0, this.h.length(), this.a);
      try {
        Typeface typeface = Typeface.createFromAsset(getContext().getAssets(), this.r);
        this.g.setTypeface(typeface);
      } catch (Exception exception) {
        exception.printStackTrace();
      } 
    } 
    if (this.i != null) {
      this.m = this.k + this.i.getWidth() + this.l;
      if (this.p != 0)
        this.j.setColorFilter((ColorFilter)new PorterDuffColorFilter(this.p, PorterDuff.Mode.SRC_IN)); 
    } 
  }
  
  public int b(String paramString, Paint paramPaint) {
    Rect rect = new Rect();
    paramPaint.getTextBounds(paramString, 0, paramString.length(), rect);
    int i = rect.bottom;
    return rect.height() + i;
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    this.g.getTextBounds(this.h, 0, this.h.length(), this.a);
    int i = this.a.width();
    float f1 = this.g.ascent();
    float f2 = this.g.descent();
    if (this.i != null && this.h != null) {
      float f = (getWidth() / 2) - ((i + this.i.getWidth()) + this.k) / 2.0F;
      paramCanvas.drawBitmap(this.i, f, (getHeight() / 2 - this.i.getHeight() / 2), (Paint)this.j);
      paramCanvas.drawText(this.h, f + this.i.getWidth() + this.l, (getHeight() / 2) - (f1 + f2) / 2.0F, (Paint)this.g);
    } 
  }
  
  public void setImageColor(int paramInt) {
    this.p = paramInt;
    if (this.j != null)
      this.j = new TextPaint(1); 
    this.j.setColorFilter((ColorFilter)new PorterDuffColorFilter(this.p, PorterDuff.Mode.SRC_IN));
    invalidate();
  }
  
  public void setTextButton(String paramString) {
    this.h = paramString;
    invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\ImageTextButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */