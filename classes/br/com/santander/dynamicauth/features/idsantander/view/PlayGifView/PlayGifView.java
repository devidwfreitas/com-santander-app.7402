package br.com.santander.dynamicauth.features.idsantander.view.PlayGifView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;

public class PlayGifView extends View {
  private int a;
  
  private Movie b;
  
  private long c = 0L;
  
  private int d = 0;
  
  private Boolean e = Boolean.valueOf(true);
  
  @SuppressLint({"NewApi"})
  public PlayGifView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    if (Build.VERSION.SDK_INT >= 11)
      setLayerType(1, null); 
  }
  
  private void a() {
    long l = SystemClock.uptimeMillis();
    if (this.c == 0L)
      this.c = l; 
    int j = this.b.duration();
    int i = j;
    if (j == 0)
      i = 1000; 
    this.d = (int)((l - this.c) % i);
  }
  
  private void a(Canvas paramCanvas) {
    this.b.setTime(this.d);
    this.b.draw(paramCanvas, 0.0F, 0.0F);
    paramCanvas.restore();
  }
  
  protected void onDraw(Canvas paramCanvas) {
    if (this.b != null) {
      a();
      a(paramCanvas);
      if (this.e.booleanValue())
        invalidate(); 
      return;
    } 
    a(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (this.b != null) {
      setMeasuredDimension(this.b.width(), this.b.height());
      return;
    } 
    setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
  }
  
  public void setGifResource(int paramInt) {
    this.a = paramInt;
    this.b = Movie.decodeStream(getResources().openRawResource(this.a));
    requestLayout();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\idsantander\view\PlayGifView\PlayGifView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */