package com.santander.app.components.view.floatingTimer;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.CountDownTimer;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import gtw;
import gtx;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class FloatingTimer extends View {
  private Paint a;
  
  private Paint b;
  
  private Paint c;
  
  private Paint d;
  
  private RectF e = new RectF();
  
  private RectF f = new RectF();
  
  private float g = 5.0F;
  
  private float h = 7.0F;
  
  private long i = 1L;
  
  private long j = 1L;
  
  private String k = "";
  
  private gtx l;
  
  private CountDownTimer m;
  
  private SimpleDateFormat n = new SimpleDateFormat("mm:ss");
  
  private Paint o = new Paint();
  
  public FloatingTimer(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  public FloatingTimer(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public FloatingTimer(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  public FloatingTimer(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext);
  }
  
  private int a(int paramInt) {
    int i = View.MeasureSpec.getMode(paramInt);
    paramInt = View.MeasureSpec.getSize(paramInt);
    return (i == 1073741824) ? paramInt : ((i == Integer.MIN_VALUE) ? Math.min(100, paramInt) : 100);
  }
  
  private String a(long paramLong) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTimeInMillis(paramLong);
    return this.n.format(calendar.getTime());
  }
  
  private void a(Context paramContext) {
    this.a = (Paint)new TextPaint();
    this.a.setAntiAlias(true);
    this.a.setColor(-65536);
    float f = (paramContext.getResources().getDisplayMetrics()).density;
    this.a.setTextSize(16.0F * f + 0.5F);
    this.o.setAntiAlias(true);
    a("00:00");
    this.c = new Paint();
    this.c.setColor(-65536);
    this.c.setStyle(Paint.Style.STROKE);
    this.c.setAntiAlias(true);
    this.c.setStrokeWidth(this.g);
    this.d = new Paint();
    this.d.setColor(-1);
    this.d.setStyle(Paint.Style.STROKE);
    this.d.setAntiAlias(true);
    this.d.setStrokeWidth(this.h);
    this.b = new Paint();
    this.b.setColor(-1);
    this.b.setAntiAlias(true);
  }
  
  private void a(String paramString) {
    this.k = paramString;
  }
  
  private void b(long paramLong) {
    this.i = paramLong;
    if (this.i > this.j)
      this.i %= this.j; 
    invalidate();
  }
  
  private float c() {
    return (float)(100L * this.i / this.j) * 360.0F / 100.0F;
  }
  
  public void a() {
    if (this.j > 0L) {
      if (this.m == null)
        this.m = (CountDownTimer)new gtw(this, this.j, 1000L); 
      this.m.start();
    } 
  }
  
  public void b() {
    if (this.m != null)
      this.m.cancel(); 
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    float f = Math.max(2, 0);
    this.e.set(f, f, getWidth() - f, getHeight() - f);
    this.f.set(f, f, getWidth() - f, getHeight() - f);
    f = (getWidth() - Math.min(this.g, this.h) + Math.abs(this.g - this.h)) / 2.0F;
    paramCanvas.drawCircle(getWidth() / 2.0F, getHeight() / 2.0F, f, this.b);
    paramCanvas.drawArc(this.e, 180.0F, c(), false, this.c);
    paramCanvas.drawArc(this.f, 180.0F + c(), 360.0F - c(), false, this.d);
    String str = this.k;
    if (!this.k.isEmpty()) {
      f = this.a.descent();
      float f1 = this.a.ascent();
      paramCanvas.drawText(str, (getWidth() - this.a.measureText(str)) / 2.0F, (getWidth() - f + f1) / 2.0F, this.a);
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    setMeasuredDimension(a(paramInt1), a(paramInt2));
  }
  
  public void setTempoMaximo(long paramLong) {
    if (paramLong > 0L) {
      this.j = paramLong;
      b(paramLong);
      a(a(paramLong));
      invalidate();
    } 
  }
  
  public void setTimerInterface(gtx paramgtx) {
    this.l = paramgtx;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\floatingTimer\FloatingTimer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */