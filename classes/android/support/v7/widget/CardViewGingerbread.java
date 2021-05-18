package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

@TargetApi(9)
@RequiresApi(9)
class CardViewGingerbread implements CardViewImpl {
  final RectF sCornerRect = new RectF();
  
  private RoundRectDrawableWithShadow createBackground(Context paramContext, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3) {
    return new RoundRectDrawableWithShadow(paramContext.getResources(), paramColorStateList, paramFloat1, paramFloat2, paramFloat3);
  }
  
  private RoundRectDrawableWithShadow getShadowBackground(CardViewDelegate paramCardViewDelegate) {
    return (RoundRectDrawableWithShadow)paramCardViewDelegate.getCardBackground();
  }
  
  public ColorStateList getBackgroundColor(CardViewDelegate paramCardViewDelegate) {
    return getShadowBackground(paramCardViewDelegate).getColor();
  }
  
  public float getElevation(CardViewDelegate paramCardViewDelegate) {
    return getShadowBackground(paramCardViewDelegate).getShadowSize();
  }
  
  public float getMaxElevation(CardViewDelegate paramCardViewDelegate) {
    return getShadowBackground(paramCardViewDelegate).getMaxShadowSize();
  }
  
  public float getMinHeight(CardViewDelegate paramCardViewDelegate) {
    return getShadowBackground(paramCardViewDelegate).getMinHeight();
  }
  
  public float getMinWidth(CardViewDelegate paramCardViewDelegate) {
    return getShadowBackground(paramCardViewDelegate).getMinWidth();
  }
  
  public float getRadius(CardViewDelegate paramCardViewDelegate) {
    return getShadowBackground(paramCardViewDelegate).getCornerRadius();
  }
  
  public void initStatic() {
    RoundRectDrawableWithShadow.sRoundRectHelper = new CardViewGingerbread$1(this);
  }
  
  public void initialize(CardViewDelegate paramCardViewDelegate, Context paramContext, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3) {
    RoundRectDrawableWithShadow roundRectDrawableWithShadow = createBackground(paramContext, paramColorStateList, paramFloat1, paramFloat2, paramFloat3);
    roundRectDrawableWithShadow.setAddPaddingForCorners(paramCardViewDelegate.getPreventCornerOverlap());
    paramCardViewDelegate.setCardBackground(roundRectDrawableWithShadow);
    updatePadding(paramCardViewDelegate);
  }
  
  public void onCompatPaddingChanged(CardViewDelegate paramCardViewDelegate) {}
  
  public void onPreventCornerOverlapChanged(CardViewDelegate paramCardViewDelegate) {
    getShadowBackground(paramCardViewDelegate).setAddPaddingForCorners(paramCardViewDelegate.getPreventCornerOverlap());
    updatePadding(paramCardViewDelegate);
  }
  
  public void setBackgroundColor(CardViewDelegate paramCardViewDelegate, @Nullable ColorStateList paramColorStateList) {
    getShadowBackground(paramCardViewDelegate).setColor(paramColorStateList);
  }
  
  public void setElevation(CardViewDelegate paramCardViewDelegate, float paramFloat) {
    getShadowBackground(paramCardViewDelegate).setShadowSize(paramFloat);
  }
  
  public void setMaxElevation(CardViewDelegate paramCardViewDelegate, float paramFloat) {
    getShadowBackground(paramCardViewDelegate).setMaxShadowSize(paramFloat);
    updatePadding(paramCardViewDelegate);
  }
  
  public void setRadius(CardViewDelegate paramCardViewDelegate, float paramFloat) {
    getShadowBackground(paramCardViewDelegate).setCornerRadius(paramFloat);
    updatePadding(paramCardViewDelegate);
  }
  
  public void updatePadding(CardViewDelegate paramCardViewDelegate) {
    Rect rect = new Rect();
    getShadowBackground(paramCardViewDelegate).getMaxShadowAndCornerPadding(rect);
    paramCardViewDelegate.setMinWidthHeightInternal((int)Math.ceil(getMinWidth(paramCardViewDelegate)), (int)Math.ceil(getMinHeight(paramCardViewDelegate)));
    paramCardViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\CardViewGingerbread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */