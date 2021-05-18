package com.santander.app.seguros.ui.widgets;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import flv;
import mbe;

public class CircleChartView extends View {
  private RectF a;
  
  private Paint b;
  
  private Paint c;
  
  private Paint d;
  
  private float e = 24.0F;
  
  private float f;
  
  private int g;
  
  private final int h = -16711936;
  
  private int i;
  
  private final int j = -7829368;
  
  private int k = 0;
  
  private float l;
  
  private final int m = 30;
  
  public CircleChartView(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public CircleChartView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.CircleChartView, 0, 0);
    this.g = typedArray.getColor(0, -16711936);
    this.i = typedArray.getColor(1, -7829368);
    this.k = typedArray.getColor(1, -7829368);
    this.l = a(typedArray.getDimension(2, 30.0F));
    setProgress(typedArray.getInt(3, 0));
    typedArray.recycle();
    a();
  }
  
  private void a() {
    this.c = new Paint(1);
    this.c.setColor(this.i);
    this.c.setStyle(Paint.Style.STROKE);
    this.c.setStrokeWidth(this.l);
    this.b = new Paint(1);
    this.b.setColor(this.g);
    this.b.setStyle(Paint.Style.STROKE);
    this.b.setStrokeJoin(Paint.Join.ROUND);
    this.b.setStrokeWidth(this.l - this.l / 20.0F);
    this.b.setStrokeCap(Paint.Cap.ROUND);
    this.d = new Paint(1);
    this.d.setColor(this.k);
    this.d.setStyle(Paint.Style.STROKE);
    this.d.setStrokeWidth(this.l - this.l / 20.0F);
  }
  
  private void a(Canvas paramCanvas) {
    paramCanvas.drawArc(this.a, 0.0F, 360.0F, false, this.c);
    paramCanvas.drawArc(this.a, 0.0F, this.f, false, this.b);
    if (this.f > 0.0F)
      paramCanvas.drawArc(this.a, -8.9F, 6.0F, false, this.d); 
  }
  
  public float a(float paramFloat) {
    return ((getResources().getDisplayMetrics()).densityDpi > 480) ? (int)TypedValue.applyDimension(1, paramFloat / 2.0F, getResources().getDisplayMetrics()) : (int)TypedValue.applyDimension(1, paramFloat, getResources().getDisplayMetrics());
  }
  
  public void a(int paramInt) {
    if (paramInt <= 0) {
      this.f = 0.0F;
      invalidate();
      return;
    } 
    if (paramInt == 1) {
      this.f = 0.5F;
      invalidate();
      return;
    } 
    int i = paramInt;
    if (paramInt < 100)
      i = paramInt * 347 / 100 * 100 / 360; 
    ObjectAnimator objectAnimator = ObjectAnimator.ofInt(this, "progress", new int[] { 0, i });
    objectAnimator.setDuration(800L);
    objectAnimator.setInterpolator((TimeInterpolator)new AccelerateDecelerateInterpolator());
    objectAnimator.addUpdateListener((ValueAnimator.AnimatorUpdateListener)new mbe(this));
    objectAnimator.start();
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    a(paramCanvas);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    this.a = new RectF(this.e + 0.0F, this.e + 0.0F, getWidth() - this.e, getHeight() - this.e);
  }
  
  public void setProgress(int paramInt) {
    if (paramInt > 0 && paramInt < 100) {
      this.f = (int)(paramInt * 3.6D);
      return;
    } 
  }
  
  public void setProgressColor(int paramInt) {
    this.g = paramInt;
    this.k = paramInt;
    if (this.b == null || this.d == null) {
      a();
    } else {
      this.b.setColor(paramInt);
      this.d.setColor(paramInt);
    } 
    invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\CircleChartView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */