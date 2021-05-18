package com.santander.app.seguros.ui.widgets;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import flv;
import mar;

public class ArcChartView extends View {
  private RectF a;
  
  private Paint b;
  
  private Paint c;
  
  private float d = 24.0F;
  
  private int e;
  
  private int f;
  
  private final int g = -65536;
  
  private int h;
  
  private final int i = -7829368;
  
  private float j;
  
  private final int k = 30;
  
  public ArcChartView(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public ArcChartView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.ArcChartView, 0, 0);
    this.f = typedArray.getColor(0, -65536);
    this.h = typedArray.getColor(1, -7829368);
    this.j = a(typedArray.getDimension(2, 30.0F));
    setProgress(typedArray.getInt(3, 50));
    typedArray.recycle();
    a();
  }
  
  private void a() {
    this.c = new Paint(1);
    this.c.setColor(this.h);
    this.c.setStyle(Paint.Style.STROKE);
    this.c.setStrokeWidth(this.j);
    this.c.setStrokeCap(Paint.Cap.ROUND);
    this.b = new Paint(1);
    this.b.setColor(this.f);
    this.b.setStyle(Paint.Style.STROKE);
    this.b.setStrokeWidth(this.j - this.j / 20.0F);
    this.b.setStrokeCap(Paint.Cap.ROUND);
  }
  
  private void a(Canvas paramCanvas) {
    paramCanvas.scale(-1.0F, 1.0F, (getWidth() / 2), (getHeight() / 2));
    paramCanvas.drawArc(this.a, 0.0F, 180.0F, false, this.c);
    paramCanvas.drawArc(this.a, 0.0F, this.e, false, this.b);
  }
  
  public float a(float paramFloat) {
    return ((getResources().getDisplayMetrics()).densityDpi > 480) ? (int)TypedValue.applyDimension(1, paramFloat / 2.0F, getResources().getDisplayMetrics()) : (int)TypedValue.applyDimension(1, paramFloat, getResources().getDisplayMetrics());
  }
  
  public void a(int paramInt) {
    int i = paramInt;
    if (paramInt == 0)
      i = 1; 
    ObjectAnimator objectAnimator = ObjectAnimator.ofInt(this, "progress", new int[] { 0, i });
    objectAnimator.setDuration(1000L);
    objectAnimator.setInterpolator((TimeInterpolator)new AccelerateDecelerateInterpolator());
    objectAnimator.addUpdateListener((ValueAnimator.AnimatorUpdateListener)new mar(this));
    objectAnimator.start();
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    a(paramCanvas);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    this.a = new RectF(this.d + 0.0F, this.d + 0.0F, getWidth() - this.d, getHeight() - this.d);
  }
  
  public void setProgress(int paramInt) {
    this.e = (int)(paramInt * 1.8D);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\ArcChartView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */