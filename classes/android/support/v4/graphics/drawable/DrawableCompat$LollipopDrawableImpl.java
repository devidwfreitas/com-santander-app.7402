package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

class DrawableCompat$LollipopDrawableImpl extends DrawableCompat$KitKatDrawableImpl {
  public void applyTheme(Drawable paramDrawable, Resources.Theme paramTheme) {
    DrawableCompatLollipop.applyTheme(paramDrawable, paramTheme);
  }
  
  public boolean canApplyTheme(Drawable paramDrawable) {
    return DrawableCompatLollipop.canApplyTheme(paramDrawable);
  }
  
  public void clearColorFilter(Drawable paramDrawable) {
    DrawableCompatLollipop.clearColorFilter(paramDrawable);
  }
  
  public ColorFilter getColorFilter(Drawable paramDrawable) {
    return DrawableCompatLollipop.getColorFilter(paramDrawable);
  }
  
  public void inflate(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme) {
    DrawableCompatLollipop.inflate(paramDrawable, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
  }
  
  public void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2) {
    DrawableCompatLollipop.setHotspot(paramDrawable, paramFloat1, paramFloat2);
  }
  
  public void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    DrawableCompatLollipop.setHotspotBounds(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setTint(Drawable paramDrawable, int paramInt) {
    DrawableCompatLollipop.setTint(paramDrawable, paramInt);
  }
  
  public void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList) {
    DrawableCompatLollipop.setTintList(paramDrawable, paramColorStateList);
  }
  
  public void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode) {
    DrawableCompatLollipop.setTintMode(paramDrawable, paramMode);
  }
  
  public Drawable wrap(Drawable paramDrawable) {
    return DrawableCompatLollipop.wrapForTinting(paramDrawable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat$LollipopDrawableImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */