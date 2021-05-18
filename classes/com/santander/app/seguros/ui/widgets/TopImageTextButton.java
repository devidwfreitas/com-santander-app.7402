package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.Button;
import flv;
import mhj;

public class TopImageTextButton extends Button {
  private final int a = 35;
  
  private final int b = 11;
  
  private final int c = 0;
  
  private final String d = "";
  
  private final float e = (getResources().getDisplayMetrics()).density * 40.0F;
  
  private final float f = (getResources().getDisplayMetrics()).density * 40.0F;
  
  private final String g = "fonts/OpenSans-Regular.ttf";
  
  private Rect h = new Rect();
  
  private TextPaint i;
  
  private TextPaint j;
  
  private String k;
  
  private Bitmap l;
  
  private float m;
  
  private int n;
  
  private boolean o;
  
  private String p = "fonts/OpenSans-Regular.ttf";
  
  private float q = 0.0F;
  
  private float r = 0.0F;
  
  private float s = 0.0F;
  
  public TopImageTextButton(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public TopImageTextButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.TopImageTextButton, 0, 0);
    this.k = typedArray.getString(0);
    if (this.k == null)
      this.k = ""; 
    this.m = typedArray.getDimension(1, 5.0F);
    this.r = typedArray.getDimension(6, this.f);
    this.q = typedArray.getDimension(5, this.e);
    Drawable drawable = typedArray.getDrawable(2);
    if (drawable != null) {
      Bitmap bitmap = ((BitmapDrawable)drawable).getBitmap();
      Matrix matrix = new Matrix();
      matrix.setRectToRect(new RectF(0.0F, 0.0F, bitmap.getWidth(), bitmap.getHeight()), new RectF(0.0F, 0.0F, mhj.c(getContext(), this.q), mhj.c(getContext(), this.r)), Matrix.ScaleToFit.CENTER);
      this.l = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    } 
    this.n = typedArray.getColor(3, getResources().getColor(2131624121));
    this.o = typedArray.getBoolean(7, false);
    this.p = typedArray.getString(8);
    this.s = typedArray.getDimension(4, 0.0F);
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
    if (this.k != null) {
      if (this.o)
        this.k = this.k.toUpperCase(); 
      if (TextUtils.isEmpty(this.p))
        this.p = "fonts/OpenSans-Regular.ttf"; 
      this.i = new TextPaint(1);
      this.i.setColor(this.n);
      this.i.setTextSize(this.m);
      this.i.getTextBounds(this.k, 0, this.k.length(), this.h);
      this.i.setTextAlign(Paint.Align.CENTER);
    } 
    this.j = new TextPaint(1);
  }
  
  public int b() {
    return this.h.width() + this.h.left;
  }
  
  public int b(String paramString, Paint paramPaint) {
    Rect rect = new Rect();
    paramPaint.getTextBounds(paramString, 0, paramString.length(), rect);
    int i = rect.bottom;
    return rect.height() + i;
  }
  
  public int c() {
    return this.h.bottom + this.h.height();
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    if (this.l != null && this.k != null) {
      float f1 = (getWidth() / 2 - this.l.getWidth() / 2);
      float f2 = (getHeight() / 2 - this.l.getHeight() / 2 - c() / 2);
      paramCanvas.drawBitmap(this.l, f1, f2, (Paint)this.j);
      String[] arrayOfString = this.k.split("\\s+");
      int j = (int)this.s;
      int i;
      for (i = 0; i < arrayOfString.length; i++) {
        String str = arrayOfString[i];
        if (a(mhj.m(str), (Paint)this.i) > getWidth() - 35) {
          char[] arrayOfChar = str.toCharArray();
          str = "";
          String str1 = "";
          int m = arrayOfChar.length;
          for (int k = 0; k < m; k++) {
            char c = arrayOfChar[k];
            if (a(mhj.m(str), (Paint)this.i) <= getWidth() - 35) {
              str = str + c;
            } else {
              str1 = str1 + c;
            } 
          } 
          j += b(mhj.m(str), (Paint)this.i) + 11;
          paramCanvas.drawText(str.trim(), (getWidth() / 2), (getHeight() / 2 + this.l.getHeight() / 2 + j), (Paint)this.i);
          if (!TextUtils.isEmpty(str1)) {
            arrayOfString[i] = str1;
            continue;
          } 
          i++;
          continue;
        } 
        while (true) {
          String str1;
          StringBuilder stringBuilder = (new StringBuilder()).append(str).append(" ");
          if (i < arrayOfString.length - 1) {
            str1 = arrayOfString[i + 1];
          } else {
            str1 = "";
          } 
          if (a(stringBuilder.append(str1).toString(), (Paint)this.i) < getWidth() - 35 && i < arrayOfString.length) {
            i++;
            StringBuilder stringBuilder1 = (new StringBuilder()).append(str).append(" ");
            if (i < arrayOfString.length) {
              str = arrayOfString[i];
            } else {
              str = "";
            } 
            str = stringBuilder1.append(str).toString();
            continue;
          } 
          break;
        } 
        j += b(mhj.m(str), (Paint)this.i) + 11;
        paramCanvas.drawText(str.trim(), (getWidth() / 2), (getHeight() / 2 + this.l.getHeight() / 2 + j), (Paint)this.i);
      } 
    } 
  }
  
  public void setImage(Bitmap paramBitmap) {
    if (paramBitmap != null) {
      Matrix matrix = new Matrix();
      matrix.setRectToRect(new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight()), new RectF(0.0F, 0.0F, mhj.c(getContext(), this.q), mhj.c(getContext(), this.r)), Matrix.ScaleToFit.CENTER);
      this.l = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), matrix, true);
      invalidate();
    } 
  }
  
  public void setText(String paramString) {
    this.k = paramString;
    invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\TopImageTextButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */