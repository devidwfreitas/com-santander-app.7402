package android.support.v7.widget;

import android.graphics.drawable.Drawable;
import android.view.View;

class CardView$1 implements CardViewDelegate {
  private Drawable mCardBackground;
  
  public Drawable getCardBackground() {
    return this.mCardBackground;
  }
  
  public View getCardView() {
    return (View)CardView.this;
  }
  
  public boolean getPreventCornerOverlap() {
    return CardView.this.getPreventCornerOverlap();
  }
  
  public boolean getUseCompatPadding() {
    return CardView.this.getUseCompatPadding();
  }
  
  public void setCardBackground(Drawable paramDrawable) {
    this.mCardBackground = paramDrawable;
    CardView.this.setBackgroundDrawable(paramDrawable);
  }
  
  public void setMinWidthHeightInternal(int paramInt1, int paramInt2) {
    if (paramInt1 > CardView.this.mUserSetMinWidth)
      CardView.access$101(CardView.this, paramInt1); 
    if (paramInt2 > CardView.this.mUserSetMinHeight)
      CardView.access$201(CardView.this, paramInt2); 
  }
  
  public void setShadowPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    CardView.this.mShadowBounds.set(paramInt1, paramInt2, paramInt3, paramInt4);
    CardView.access$001(CardView.this, CardView.this.mContentPadding.left + paramInt1, CardView.this.mContentPadding.top + paramInt2, CardView.this.mContentPadding.right + paramInt3, CardView.this.mContentPadding.bottom + paramInt4);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\CardView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */