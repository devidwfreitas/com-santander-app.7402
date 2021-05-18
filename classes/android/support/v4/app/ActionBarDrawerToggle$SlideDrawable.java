package android.support.v4.app;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.support.v4.view.ViewCompat;

class ActionBarDrawerToggle$SlideDrawable extends InsetDrawable implements Drawable.Callback {
  private final boolean mHasMirroring;
  
  private float mOffset;
  
  private float mPosition;
  
  private final Rect mTmpRect;
  
  ActionBarDrawerToggle$SlideDrawable(Drawable paramDrawable) {
    super(paramDrawable, 0);
    if (Build.VERSION.SDK_INT > 18)
      bool = true; 
    this.mHasMirroring = bool;
    this.mTmpRect = new Rect();
  }
  
  public void draw(Canvas paramCanvas) {
    boolean bool;
    byte b = 1;
    copyBounds(this.mTmpRect);
    paramCanvas.save();
    if (ViewCompat.getLayoutDirection(ActionBarDrawerToggle.this.mActivity.getWindow().getDecorView()) == 1) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool)
      b = -1; 
    int i = this.mTmpRect.width();
    float f1 = -this.mOffset;
    float f2 = i;
    float f3 = this.mPosition;
    paramCanvas.translate(b * f1 * f2 * f3, 0.0F);
    if (bool && !this.mHasMirroring) {
      paramCanvas.translate(i, 0.0F);
      paramCanvas.scale(-1.0F, 1.0F);
    } 
    super.draw(paramCanvas);
    paramCanvas.restore();
  }
  
  public float getPosition() {
    return this.mPosition;
  }
  
  public void setOffset(float paramFloat) {
    this.mOffset = paramFloat;
    invalidateSelf();
  }
  
  public void setPosition(float paramFloat) {
    this.mPosition = paramFloat;
    invalidateSelf();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActionBarDrawerToggle$SlideDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */