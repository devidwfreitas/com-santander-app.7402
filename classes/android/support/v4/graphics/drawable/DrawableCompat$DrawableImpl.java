package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

interface DrawableCompat$DrawableImpl {
  void applyTheme(Drawable paramDrawable, Resources.Theme paramTheme);
  
  boolean canApplyTheme(Drawable paramDrawable);
  
  void clearColorFilter(Drawable paramDrawable);
  
  int getAlpha(Drawable paramDrawable);
  
  ColorFilter getColorFilter(Drawable paramDrawable);
  
  int getLayoutDirection(Drawable paramDrawable);
  
  void inflate(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme);
  
  boolean isAutoMirrored(Drawable paramDrawable);
  
  void jumpToCurrentState(Drawable paramDrawable);
  
  void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean);
  
  void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2);
  
  void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  boolean setLayoutDirection(Drawable paramDrawable, int paramInt);
  
  void setTint(Drawable paramDrawable, int paramInt);
  
  void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList);
  
  void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode);
  
  Drawable wrap(Drawable paramDrawable);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat$DrawableImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */