package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.widget.Button;
import cnm;
import cno;
import cns;
import csp;

public final class zzak extends Button {
  public zzak(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public zzak(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet, 16842824);
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3) {
    switch (paramInt1) {
      default:
        throw new IllegalStateException((new StringBuilder(32)).append("Unknown button size: ").append(paramInt1).toString());
      case 2:
        paramInt3 = paramInt2;
        break;
      case 0:
      case 1:
        break;
    } 
    return paramInt3;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    switch (paramInt1) {
      default:
        throw new IllegalStateException((new StringBuilder(33)).append("Unknown color scheme: ").append(paramInt1).toString());
      case 1:
        paramInt2 = paramInt3;
      case 0:
        return paramInt2;
      case 2:
        break;
    } 
    return paramInt4;
  }
  
  private void a(Resources paramResources) {
    setTypeface(Typeface.DEFAULT_BOLD);
    setTextSize(14.0F);
    float f = (paramResources.getDisplayMetrics()).density;
    setMinHeight((int)(f * 48.0F + 0.5F));
    setMinWidth((int)(f * 48.0F + 0.5F));
  }
  
  private void b(Resources paramResources, int paramInt1, int paramInt2) {
    Drawable drawable = DrawableCompat.wrap(paramResources.getDrawable(a(paramInt1, a(paramInt2, cno.common_google_signin_btn_icon_dark, cno.common_google_signin_btn_icon_light, cno.common_google_signin_btn_icon_light), a(paramInt2, cno.common_google_signin_btn_text_dark, cno.common_google_signin_btn_text_light, cno.common_google_signin_btn_text_light))));
    DrawableCompat.setTintList(drawable, paramResources.getColorStateList(cnm.common_google_signin_btn_tint));
    DrawableCompat.setTintMode(drawable, PorterDuff.Mode.SRC_ATOP);
    setBackgroundDrawable(drawable);
  }
  
  private void c(Resources paramResources, int paramInt1, int paramInt2) {
    setTextColor((ColorStateList)csp.a(paramResources.getColorStateList(a(paramInt2, cnm.common_google_signin_btn_text_dark, cnm.common_google_signin_btn_text_light, cnm.common_google_signin_btn_text_light))));
    switch (paramInt1) {
      default:
        throw new IllegalStateException((new StringBuilder(32)).append("Unknown button size: ").append(paramInt1).toString());
      case 0:
        setText(paramResources.getString(cns.common_signin_button_text));
        setTransformationMethod(null);
        return;
      case 1:
        setText(paramResources.getString(cns.common_signin_button_text_long));
        setTransformationMethod(null);
        return;
      case 2:
        break;
    } 
    setText(null);
    setTransformationMethod(null);
  }
  
  public void a(Resources paramResources, int paramInt1, int paramInt2) {
    a(paramResources);
    b(paramResources, paramInt1, paramInt2);
    c(paramResources, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\internal\zzak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */