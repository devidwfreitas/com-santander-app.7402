package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.view.View;
import bgz;
import bhd;
import bhl;
import bhv;
import bjr;
import bjt;
import bjx;
import bjy;
import bjz;
import bnl;
import boj;
import bqq;
import brn;
import bse;
import bsp;
import bsx;
import btf;
import bth;
import bti;
import btj;
import btk;
import btm;
import btp;
import btu;
import com.facebook.AccessToken;
import com.facebook.FacebookButtonBase;
import java.util.Arrays;
import java.util.List;

public class LoginButton extends FacebookButtonBase {
  private static final String a = LoginButton.class.getName();
  
  private boolean b;
  
  private String c;
  
  private String d;
  
  private btj e = new btj();
  
  private String f = "fb_login_view_usage";
  
  private boolean g;
  
  private btu h = btu.BLUE;
  
  private btm i;
  
  private long j = 6000L;
  
  private btp k;
  
  private bgz l;
  
  private bsp m;
  
  public LoginButton(Context paramContext) {
    super(paramContext, null, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
  }
  
  public LoginButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
  }
  
  public LoginButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt, 0, "fb_login_button_create", "fb_login_button_did_tap");
  }
  
  private void a(boj paramboj) {
    if (paramboj != null && paramboj.c() && getVisibility() == 0)
      b(paramboj.b()); 
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    this.i = btm.DEFAULT;
    TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, bjz.com_facebook_login_view, paramInt1, paramInt2);
    try {
      this.b = typedArray.getBoolean(bjz.com_facebook_login_view_com_facebook_confirm_logout, true);
      this.c = typedArray.getString(bjz.com_facebook_login_view_com_facebook_login_text);
      this.d = typedArray.getString(bjz.com_facebook_login_view_com_facebook_logout_text);
      this.i = btm.fromInt(typedArray.getInt(bjz.com_facebook_login_view_com_facebook_tooltip_mode, btm.DEFAULT.getValue()));
      return;
    } finally {
      typedArray.recycle();
    } 
  }
  
  private void b(String paramString) {
    this.k = new btp(paramString, (View)this);
    this.k.a(this.h);
    this.k.a(this.j);
    this.k.a();
  }
  
  private int c(String paramString) {
    return a(paramString) + getCompoundPaddingLeft() + getCompoundDrawablePadding() + getCompoundPaddingRight();
  }
  
  private void g() {
    String str;
    switch (bti.a[this.i.ordinal()]) {
      default:
        return;
      case 1:
        str = bqq.a(getContext());
        bhv.f().execute((Runnable)new btf(this, str));
        return;
      case 2:
        break;
    } 
    b(getResources().getString(bjx.com_facebook_tooltip_default));
  }
  
  private void q() {
    Resources resources = getResources();
    if (!isInEditMode() && AccessToken.a() != null) {
      String str;
      if (this.d != null) {
        str = this.d;
      } else {
        str = resources.getString(bjx.com_facebook_loginview_log_out_button);
      } 
      setText(str);
      return;
    } 
    if (this.c != null) {
      setText(this.c);
      return;
    } 
    String str2 = resources.getString(bjx.com_facebook_loginview_log_in_button_continue);
    int i = getWidth();
    String str1 = str2;
    if (i != 0) {
      str1 = str2;
      if (c(str2) > i)
        str1 = resources.getString(bjx.com_facebook_loginview_log_in_button); 
    } 
    setText(str1);
  }
  
  protected int a() {
    return bnl.Login.toRequestCode();
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super.a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a((View.OnClickListener)h());
    b(paramContext, paramAttributeSet, paramInt1, paramInt2);
    if (isInEditMode()) {
      setBackgroundColor(getResources().getColor(bjr.com_facebook_blue));
      this.c = "Continue with Facebook";
    } else {
      this.l = (bgz)new bth(this);
    } 
    q();
    setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), bjt.com_facebook_button_login_logo), null, null, null);
  }
  
  public void a(bhd parambhd, bhl<bsx> parambhl) {
    p().a(parambhd, parambhl);
  }
  
  void a(bsp parambsp) {
    this.m = parambsp;
  }
  
  void a(btj parambtj) {
    this.e = parambtj;
  }
  
  protected int f() {
    return bjy.com_facebook_loginview_default_style;
  }
  
  protected btk h() {
    return new btk(this);
  }
  
  public brn i() {
    return this.e.a();
  }
  
  public void j() {
    this.e.c();
  }
  
  public bse k() {
    return this.e.d();
  }
  
  public btm l() {
    return this.i;
  }
  
  public long m() {
    return this.j;
  }
  
  public void n() {
    if (this.k != null) {
      this.k.b();
      this.k = null;
    } 
  }
  
  List<String> o() {
    return this.e.b();
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    if (this.l != null && !this.l.c()) {
      this.l.a();
      q();
    } 
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.l != null)
      this.l.b(); 
    n();
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    if (!this.g && !isInEditMode()) {
      this.g = true;
      g();
    } 
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    q();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
    paramInt2 = getCompoundPaddingTop();
    float f = Math.abs(fontMetrics.top);
    int i = (int)Math.ceil((Math.abs(fontMetrics.bottom) + f));
    int j = getCompoundPaddingBottom();
    Resources resources = getResources();
    String str2 = this.c;
    String str1 = str2;
    if (str2 == null) {
      str1 = resources.getString(bjx.com_facebook_loginview_log_in_button_continue);
      int m = c(str1);
      if (resolveSize(m, paramInt1) < m)
        str1 = resources.getString(bjx.com_facebook_loginview_log_in_button); 
    } 
    int k = c(str1);
    str2 = this.d;
    str1 = str2;
    if (str2 == null)
      str1 = resources.getString(bjx.com_facebook_loginview_log_out_button); 
    setMeasuredDimension(resolveSize(Math.max(k, c(str1)), paramInt1), j + i + paramInt2);
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt) {
    super.onVisibilityChanged(paramView, paramInt);
    if (paramInt != 0)
      n(); 
  }
  
  bsp p() {
    if (this.m == null)
      this.m = bsp.c(); 
    return this.m;
  }
  
  public void setDefaultAudience(brn parambrn) {
    this.e.a(parambrn);
  }
  
  public void setLoginBehavior(bse parambse) {
    this.e.a(parambse);
  }
  
  public void setPublishPermissions(List<String> paramList) {
    this.e.b(paramList);
  }
  
  public void setPublishPermissions(String... paramVarArgs) {
    this.e.b(Arrays.asList(paramVarArgs));
  }
  
  public void setReadPermissions(List<String> paramList) {
    this.e.a(paramList);
  }
  
  public void setReadPermissions(String... paramVarArgs) {
    this.e.a(Arrays.asList(paramVarArgs));
  }
  
  public void setToolTipDisplayTime(long paramLong) {
    this.j = paramLong;
  }
  
  public void setToolTipMode(btm parambtm) {
    this.i = parambtm;
  }
  
  public void setToolTipStyle(btu parambtu) {
    this.h = parambtu;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\widget\LoginButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */