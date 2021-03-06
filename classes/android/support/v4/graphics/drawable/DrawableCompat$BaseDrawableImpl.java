package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

class DrawableCompat$BaseDrawableImpl implements DrawableCompat$DrawableImpl {
  public void applyTheme(Drawable paramDrawable, Resources.Theme paramTheme) {}
  
  public boolean canApplyTheme(Drawable paramDrawable) {
    return false;
  }
  
  public void clearColorFilter(Drawable paramDrawable) {
    paramDrawable.clearColorFilter();
  }
  
  public int getAlpha(Drawable paramDrawable) {
    return 0;
  }
  
  public ColorFilter getColorFilter(Drawable paramDrawable) {
    return null;
  }
  
  public int getLayoutDirection(Drawable paramDrawable) {
    return 0;
  }
  
  public void inflate(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme) {
    DrawableCompatBase.inflate(paramDrawable, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
  }
  
  public boolean isAutoMirrored(Drawable paramDrawable) {
    return false;
  }
  
  public void jumpToCurrentState(Drawable paramDrawable) {}
  
  public void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean) {}
  
  public void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2) {}
  
  public void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public boolean setLayoutDirection(Drawable paramDrawable, int paramInt) {
    return false;
  }
  
  public void setTint(Drawable paramDrawable, int paramInt) {
    DrawableCompatBase.setTint(paramDrawable, paramInt);
  }
  
  public void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList) {
    DrawableCompatBase.setTintList(paramDrawable, paramColorStateList);
  }
  
  public void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode) {
    DrawableCompatBase.setTintMode(paramDrawable, paramMode);
  }
  
  public Drawable wrap(Drawable paramDrawable) {
    return DrawableCompatBase.wrapForTinting(paramDrawable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat$BaseDrawableImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */