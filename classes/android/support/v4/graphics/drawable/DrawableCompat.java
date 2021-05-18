package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

public final class DrawableCompat {
  static final DrawableCompat$DrawableImpl IMPL = new DrawableCompat$BaseDrawableImpl();
  
  public static void applyTheme(@NonNull Drawable paramDrawable, @NonNull Resources.Theme paramTheme) {
    IMPL.applyTheme(paramDrawable, paramTheme);
  }
  
  public static boolean canApplyTheme(@NonNull Drawable paramDrawable) {
    return IMPL.canApplyTheme(paramDrawable);
  }
  
  public static void clearColorFilter(@NonNull Drawable paramDrawable) {
    IMPL.clearColorFilter(paramDrawable);
  }
  
  public static int getAlpha(@NonNull Drawable paramDrawable) {
    return IMPL.getAlpha(paramDrawable);
  }
  
  public static ColorFilter getColorFilter(@NonNull Drawable paramDrawable) {
    return IMPL.getColorFilter(paramDrawable);
  }
  
  public static int getLayoutDirection(@NonNull Drawable paramDrawable) {
    return IMPL.getLayoutDirection(paramDrawable);
  }
  
  public static void inflate(@NonNull Drawable paramDrawable, @NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme) {
    IMPL.inflate(paramDrawable, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
  }
  
  public static boolean isAutoMirrored(@NonNull Drawable paramDrawable) {
    return IMPL.isAutoMirrored(paramDrawable);
  }
  
  public static void jumpToCurrentState(@NonNull Drawable paramDrawable) {
    IMPL.jumpToCurrentState(paramDrawable);
  }
  
  public static void setAutoMirrored(@NonNull Drawable paramDrawable, boolean paramBoolean) {
    IMPL.setAutoMirrored(paramDrawable, paramBoolean);
  }
  
  public static void setHotspot(@NonNull Drawable paramDrawable, float paramFloat1, float paramFloat2) {
    IMPL.setHotspot(paramDrawable, paramFloat1, paramFloat2);
  }
  
  public static void setHotspotBounds(@NonNull Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    IMPL.setHotspotBounds(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static boolean setLayoutDirection(@NonNull Drawable paramDrawable, int paramInt) {
    return IMPL.setLayoutDirection(paramDrawable, paramInt);
  }
  
  public static void setTint(@NonNull Drawable paramDrawable, @ColorInt int paramInt) {
    IMPL.setTint(paramDrawable, paramInt);
  }
  
  public static void setTintList(@NonNull Drawable paramDrawable, @Nullable ColorStateList paramColorStateList) {
    IMPL.setTintList(paramDrawable, paramColorStateList);
  }
  
  public static void setTintMode(@NonNull Drawable paramDrawable, @Nullable PorterDuff.Mode paramMode) {
    IMPL.setTintMode(paramDrawable, paramMode);
  }
  
  public static <T extends Drawable> T unwrap(@NonNull Drawable paramDrawable) {
    Drawable drawable = paramDrawable;
    if (paramDrawable instanceof DrawableWrapper)
      drawable = ((DrawableWrapper)paramDrawable).getWrappedDrawable(); 
    return (T)drawable;
  }
  
  public static Drawable wrap(@NonNull Drawable paramDrawable) {
    return IMPL.wrap(paramDrawable);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23) {
      IMPL = new DrawableCompat$MDrawableImpl();
      return;
    } 
    if (i >= 21) {
      IMPL = new DrawableCompat$LollipopDrawableImpl();
      return;
    } 
    if (i >= 19) {
      IMPL = new DrawableCompat$KitKatDrawableImpl();
      return;
    } 
    if (i >= 17) {
      IMPL = new DrawableCompat$JellybeanMr1DrawableImpl();
      return;
    } 
    if (i >= 11) {
      IMPL = new DrawableCompat$HoneycombDrawableImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\graphics\drawable\DrawableCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */