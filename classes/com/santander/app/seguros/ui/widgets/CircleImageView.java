package com.santander.app.seguros.ui.widgets;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;

public class CircleImageView extends AppCompatImageView {
  private static final int a = 400;
  
  private boolean b = false;
  
  public CircleImageView(Context paramContext) {
    super(paramContext);
  }
  
  public CircleImageView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public static Bitmap a(Bitmap paramBitmap) {
    int i = Math.min(paramBitmap.getWidth(), paramBitmap.getHeight());
    Bitmap bitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
    Canvas canvas = new Canvas(bitmap);
    BitmapShader bitmapShader = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    Paint paint = new Paint();
    paint.setAntiAlias(true);
    paint.setShader((Shader)bitmapShader);
    RectF rectF = new RectF(0.0F, 0.0F, i, i);
    i /= 2;
    canvas.drawRoundRect(rectF, i, i, paint);
    return bitmap;
  }
  
  public void setImageBitmap(Bitmap paramBitmap) {
    super.setImageBitmap(paramBitmap);
    if (paramBitmap == null)
      return; 
    setImageDrawable((Drawable)new BitmapDrawable(getResources(), a(paramBitmap)));
    if (this.b)
      ObjectAnimator.ofFloat(this, "alpha", new float[] { 0.0F, 1.0F }).setDuration(400L).start(); 
    paramBitmap.recycle();
  }
  
  public void setImageResource(int paramInt) {
    super.setImageResource(paramInt);
    setImageBitmap(BitmapFactory.decodeResource(getResources(), paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\CircleImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */