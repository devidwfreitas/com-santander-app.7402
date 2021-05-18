package chat.santander.com.modulochatsantander.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import apn;

class GifView extends View {
  public Movie a;
  
  public long b;
  
  private int c;
  
  public GifView(Context paramContext) {
    super(paramContext);
    b();
  }
  
  public GifView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  public GifView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }
  
  private void b() {
    this.a = Movie.decodeStream(getContext().getResources().openRawResource(apn.chat_santander_loading_cinza));
  }
  
  public int a() {
    return this.c;
  }
  
  public void a(int paramInt) {
    this.c = paramInt;
    b();
  }
  
  protected void onDraw(Canvas paramCanvas) {
    paramCanvas.drawColor(0);
    super.onDraw(paramCanvas);
    long l = SystemClock.uptimeMillis();
    if (this.b == 0L)
      this.b = l; 
    if (this.a != null) {
      int i = (int)((l - this.b) % this.a.duration());
      this.a.setTime(i);
      this.a.draw(paramCanvas, (getWidth() - this.a.width()), (getHeight() - this.a.height()));
      invalidate();
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (this.a != null) {
      setMeasuredDimension(this.a.width(), this.a.height());
      return;
    } 
    setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chat\santander\com\modulochatsantander\view\GifView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */