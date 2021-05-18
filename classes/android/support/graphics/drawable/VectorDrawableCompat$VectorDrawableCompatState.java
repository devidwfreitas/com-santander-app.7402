package android.support.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

class VectorDrawableCompat$VectorDrawableCompatState extends Drawable.ConstantState {
  boolean mAutoMirrored;
  
  boolean mCacheDirty;
  
  boolean mCachedAutoMirrored;
  
  Bitmap mCachedBitmap;
  
  int mCachedRootAlpha;
  
  int[] mCachedThemeAttrs;
  
  ColorStateList mCachedTint;
  
  PorterDuff.Mode mCachedTintMode;
  
  int mChangingConfigurations;
  
  Paint mTempPaint;
  
  ColorStateList mTint = null;
  
  PorterDuff.Mode mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
  
  VectorDrawableCompat$VPathRenderer mVPathRenderer;
  
  public VectorDrawableCompat$VectorDrawableCompatState() {
    this.mVPathRenderer = new VectorDrawableCompat$VPathRenderer();
  }
  
  public VectorDrawableCompat$VectorDrawableCompatState(VectorDrawableCompat$VectorDrawableCompatState paramVectorDrawableCompat$VectorDrawableCompatState) {
    if (paramVectorDrawableCompat$VectorDrawableCompatState != null) {
      this.mChangingConfigurations = paramVectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations;
      this.mVPathRenderer = new VectorDrawableCompat$VPathRenderer(paramVectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer);
      if (VectorDrawableCompat$VPathRenderer.access$000(paramVectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer) != null)
        VectorDrawableCompat$VPathRenderer.access$002(this.mVPathRenderer, new Paint(VectorDrawableCompat$VPathRenderer.access$000(paramVectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer))); 
      if (VectorDrawableCompat$VPathRenderer.access$100(paramVectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer) != null)
        VectorDrawableCompat$VPathRenderer.access$102(this.mVPathRenderer, new Paint(VectorDrawableCompat$VPathRenderer.access$100(paramVectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer))); 
      this.mTint = paramVectorDrawableCompat$VectorDrawableCompatState.mTint;
      this.mTintMode = paramVectorDrawableCompat$VectorDrawableCompatState.mTintMode;
      this.mAutoMirrored = paramVectorDrawableCompat$VectorDrawableCompatState.mAutoMirrored;
    } 
  }
  
  public boolean canReuseBitmap(int paramInt1, int paramInt2) {
    return (paramInt1 == this.mCachedBitmap.getWidth() && paramInt2 == this.mCachedBitmap.getHeight());
  }
  
  public boolean canReuseCache() {
    return (!this.mCacheDirty && this.mCachedTint == this.mTint && this.mCachedTintMode == this.mTintMode && this.mCachedAutoMirrored == this.mAutoMirrored && this.mCachedRootAlpha == this.mVPathRenderer.getRootAlpha());
  }
  
  public void createCachedBitmapIfNeeded(int paramInt1, int paramInt2) {
    if (this.mCachedBitmap == null || !canReuseBitmap(paramInt1, paramInt2)) {
      this.mCachedBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      this.mCacheDirty = true;
    } 
  }
  
  public void drawCachedBitmapWithRootAlpha(Canvas paramCanvas, ColorFilter paramColorFilter, Rect paramRect) {
    Paint paint = getPaint(paramColorFilter);
    paramCanvas.drawBitmap(this.mCachedBitmap, null, paramRect, paint);
  }
  
  public int getChangingConfigurations() {
    return this.mChangingConfigurations;
  }
  
  public Paint getPaint(ColorFilter paramColorFilter) {
    if (!hasTranslucentRoot() && paramColorFilter == null)
      return null; 
    if (this.mTempPaint == null) {
      this.mTempPaint = new Paint();
      this.mTempPaint.setFilterBitmap(true);
    } 
    this.mTempPaint.setAlpha(this.mVPathRenderer.getRootAlpha());
    this.mTempPaint.setColorFilter(paramColorFilter);
    return this.mTempPaint;
  }
  
  public boolean hasTranslucentRoot() {
    return (this.mVPathRenderer.getRootAlpha() < 255);
  }
  
  public Drawable newDrawable() {
    return new VectorDrawableCompat(this);
  }
  
  public Drawable newDrawable(Resources paramResources) {
    return new VectorDrawableCompat(this);
  }
  
  public void updateCacheStates() {
    this.mCachedTint = this.mTint;
    this.mCachedTintMode = this.mTintMode;
    this.mCachedRootAlpha = this.mVPathRenderer.getRootAlpha();
    this.mCachedAutoMirrored = this.mAutoMirrored;
    this.mCacheDirty = false;
  }
  
  public void updateCachedBitmap(int paramInt1, int paramInt2) {
    this.mCachedBitmap.eraseColor(0);
    Canvas canvas = new Canvas(this.mCachedBitmap);
    this.mVPathRenderer.draw(canvas, paramInt1, paramInt2, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\VectorDrawableCompat$VectorDrawableCompatState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */