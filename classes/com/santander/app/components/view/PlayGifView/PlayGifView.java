package com.santander.app.components.view.PlayGifView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import grl;
import grm;
import grn;

public class PlayGifView extends View implements grl {
  private static final int a = 1000;
  
  private int b;
  
  private Movie c;
  
  private long d = 0L;
  
  private int e = 0;
  
  private Boolean f = Boolean.valueOf(true);
  
  @SuppressLint({"NewApi"})
  public PlayGifView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    if (Build.VERSION.SDK_INT >= 11)
      setLayerType(1, null); 
  }
  
  private void a(Canvas paramCanvas) {
    this.c.setTime(this.e);
    this.c.draw(paramCanvas, 0.0F, 0.0F);
    paramCanvas.restore();
  }
  
  private void b() {
    long l = SystemClock.uptimeMillis();
    if (this.d == 0L)
      this.d = l; 
    int j = this.c.duration();
    int i = j;
    if (j == 0)
      i = 1000; 
    this.e = (int)((l - this.d) % i);
  }
  
  public void a() {
    if (this.f.booleanValue()) {
      this.f = Boolean.valueOf(false);
      return;
    } 
    this.f = Boolean.valueOf(true);
    invalidate();
  }
  
  public void a(int paramInt) {
    this.f = Boolean.valueOf(true);
    invalidate();
    (new Handler()).postDelayed((Runnable)new grn(this), paramInt);
  }
  
  protected void onDraw(Canvas paramCanvas) {
    if (this.c != null) {
      b();
      a(paramCanvas);
      if (this.f.booleanValue())
        invalidate(); 
      return;
    } 
    a(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (this.c != null) {
      setMeasuredDimension(this.c.width(), this.c.height());
      return;
    } 
    setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
  }
  
  public void setGifResource(int paramInt) {
    this.b = paramInt;
    this.c = Movie.decodeStream(getResources().openRawResource(this.b));
    requestLayout();
  }
  
  public void setGifResourceWithDuration(int paramInt1, int paramInt2) {
    this.b = paramInt1;
    this.c = Movie.decodeStream(getResources().openRawResource(this.b));
    requestLayout();
    (new Handler()).postDelayed((Runnable)new grm(this), paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\PlayGifView\PlayGifView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */