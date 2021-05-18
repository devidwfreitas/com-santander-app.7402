package android.support.design.widget;

import android.graphics.drawable.Drawable;

class FloatingActionButton$ShadowDelegateImpl implements ShadowViewDelegate {
  public float getRadius() {
    return FloatingActionButton.this.getSizeDimension() / 2.0F;
  }
  
  public boolean isCompatPaddingEnabled() {
    return FloatingActionButton.this.mCompatPadding;
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable) {
    FloatingActionButton.access$001(FloatingActionButton.this, paramDrawable);
  }
  
  public void setShadowPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    FloatingActionButton.this.mShadowPadding.set(paramInt1, paramInt2, paramInt3, paramInt4);
    FloatingActionButton.this.setPadding(FloatingActionButton.this.mImagePadding + paramInt1, FloatingActionButton.this.mImagePadding + paramInt2, FloatingActionButton.this.mImagePadding + paramInt3, FloatingActionButton.this.mImagePadding + paramInt4);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButton$ShadowDelegateImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */