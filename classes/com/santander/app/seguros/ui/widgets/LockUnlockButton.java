package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.AppCompatSeekBar;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;
import mca;
import mcb;
import mgb;
import mhj;

public class LockUnlockButton extends AppCompatSeekBar {
  private Drawable a;
  
  private mcb b;
  
  private int c = getProgress();
  
  private final int d = 0;
  
  private final int e = 100;
  
  public LockUnlockButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(Boolean paramBoolean) {
    if (this.b != null)
      this.b.a(paramBoolean); 
  }
  
  private void a(mca parammca) {
    if (this.b != null)
      this.b.a(parammca); 
  }
  
  public static Bitmap b(Drawable paramDrawable) {
    int j = 1;
    if (paramDrawable instanceof BitmapDrawable)
      return ((BitmapDrawable)paramDrawable).getBitmap(); 
    int i = paramDrawable.getIntrinsicWidth();
    if (i <= 0)
      i = 1; 
    int k = paramDrawable.getIntrinsicHeight();
    if (k > 0)
      j = k; 
    Bitmap bitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas canvas = new Canvas(bitmap);
    paramDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
    paramDrawable.draw(canvas);
    return bitmap;
  }
  
  public Drawable a(Drawable paramDrawable) {
    int i = (int)mhj.c(getContext(), 50.0F);
    Bitmap bitmap = Bitmap.createScaledBitmap(b(paramDrawable), i, i, true);
    return (Drawable)new BitmapDrawable(getContext().getResources(), bitmap);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    boolean bool2 = false;
    boolean bool1 = false;
    if (!isEnabled() || !isClickable())
      return true; 
    if (paramMotionEvent.getAction() == 0) {
      if (this.a.getBounds().contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
        super.onTouchEvent(paramMotionEvent);
        if (getProgress() >= 100)
          bool1 = true; 
        a(Boolean.valueOf(bool1));
        return true;
      } 
      return false;
    } 
    if (paramMotionEvent.getAction() == 1 || paramMotionEvent.getAction() == 3) {
      if (getProgress() >= 100) {
        a(mca.RIGHT);
        setProgressWithAnimation(100);
        return true;
      } 
      if (getProgress() <= 0) {
        a(mca.LEFT);
        setProgressWithAnimation(0);
        return true;
      } 
      setProgressWithAnimation(this.c);
      return true;
    } 
    super.onTouchEvent(paramMotionEvent);
    bool1 = bool2;
    if (getProgress() >= 100)
      bool1 = true; 
    a(Boolean.valueOf(bool1));
    return true;
  }
  
  public void setProgressWithAnimation(int paramInt) {
    mgb.a((SeekBar)this, paramInt, 100L);
  }
  
  public void setSlideButtonListener(mcb parammcb) {
    this.b = parammcb;
  }
  
  public void setThumb(Drawable paramDrawable) {
    paramDrawable = a(paramDrawable);
    super.setThumb(paramDrawable);
    this.a = paramDrawable;
    setPadding((int)mhj.c(getContext(), 25.0F), 0, (int)mhj.c(getContext(), 25.0F), 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\LockUnlockButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */