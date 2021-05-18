package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import cnu;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzak;
import cst;
import cxr;

public final class SignInButton extends FrameLayout implements View.OnClickListener {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  public static final int d = 0;
  
  public static final int e = 1;
  
  public static final int f = 2;
  
  private int g;
  
  private int h;
  
  private View i;
  
  private View.OnClickListener j = null;
  
  public SignInButton(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SignInButton(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SignInButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
    setStyle(this.g, this.h);
  }
  
  private static Button a(Context paramContext, int paramInt1, int paramInt2) {
    zzak zzak = new zzak(paramContext);
    zzak.a(paramContext.getResources(), paramInt1, paramInt2);
    return (Button)zzak;
  }
  
  private void a(Context paramContext) {
    if (this.i != null)
      removeView(this.i); 
    try {
      this.i = cst.a(paramContext, this.g, this.h);
    } catch (cxr cxr) {
      Log.w("SignInButton", "Sign in button not found, using placeholder instead");
      this.i = (View)a(paramContext, this.g, this.h);
    } 
    addView(this.i);
    this.i.setEnabled(isEnabled());
    this.i.setOnClickListener(this);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, cnu.SignInButton, 0, 0);
    try {
      this.g = typedArray.getInt(cnu.SignInButton_buttonSize, 0);
      this.h = typedArray.getInt(cnu.SignInButton_colorScheme, 2);
      return;
    } finally {
      typedArray.recycle();
    } 
  }
  
  public void onClick(View paramView) {
    if (this.j != null && paramView == this.i)
      this.j.onClick((View)this); 
  }
  
  public void setColorScheme(int paramInt) {
    setStyle(this.g, paramInt);
  }
  
  public void setEnabled(boolean paramBoolean) {
    super.setEnabled(paramBoolean);
    this.i.setEnabled(paramBoolean);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener) {
    this.j = paramOnClickListener;
    if (this.i != null)
      this.i.setOnClickListener(this); 
  }
  
  @Deprecated
  public void setScopes(Scope[] paramArrayOfScope) {
    setStyle(this.g, this.h);
  }
  
  public void setSize(int paramInt) {
    setStyle(paramInt, this.h);
  }
  
  public void setStyle(int paramInt1, int paramInt2) {
    this.g = paramInt1;
    this.h = paramInt2;
    a(getContext());
  }
  
  @Deprecated
  public void setStyle(int paramInt1, int paramInt2, Scope[] paramArrayOfScope) {
    setStyle(paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\SignInButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */