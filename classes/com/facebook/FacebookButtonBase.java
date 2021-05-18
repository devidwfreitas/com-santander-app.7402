package com.facebook;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import bhk;
import bhp;
import bjy;
import bla;
import bpa;

public abstract class FacebookButtonBase extends Button {
  private String a;
  
  private String b;
  
  private View.OnClickListener c;
  
  private View.OnClickListener d;
  
  private boolean e;
  
  private int f;
  
  private int g;
  
  private bpa h;
  
  public FacebookButtonBase(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, String paramString1, String paramString2) {
    super(paramContext, paramAttributeSet, 0);
    if (paramInt2 == 0)
      paramInt2 = f(); 
    int i = paramInt2;
    if (paramInt2 == 0)
      i = bjy.com_facebook_button; 
    a(paramContext, paramAttributeSet, paramInt1, i);
    this.a = paramString1;
    this.b = paramString2;
    setClickable(true);
    setFocusable(true);
  }
  
  private void a(Context paramContext) {
    bla.c(paramContext).a(this.a, null, null);
  }
  
  private void b(Context paramContext) {
    bla.c(paramContext).a(this.b, null, null);
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    if (isInEditMode())
      return; 
    TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, new int[] { 16842964 }, paramInt1, paramInt2);
  }
  
  @SuppressLint({"ResourceType"})
  private void c(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, new int[] { 16843119, 16843117, 16843120, 16843118, 16843121 }, paramInt1, paramInt2);
    try {
      setCompoundDrawablesWithIntrinsicBounds(typedArray.getResourceId(0, 0), typedArray.getResourceId(1, 0), typedArray.getResourceId(2, 0), typedArray.getResourceId(3, 0));
      setCompoundDrawablePadding(typedArray.getDimensionPixelSize(4, 0));
      return;
    } finally {
      typedArray.recycle();
    } 
  }
  
  private void d(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, new int[] { 16842966, 16842967, 16842968, 16842969 }, paramInt1, paramInt2);
    try {
      setPadding(typedArray.getDimensionPixelSize(0, 0), typedArray.getDimensionPixelSize(1, 0), typedArray.getDimensionPixelSize(2, 0), typedArray.getDimensionPixelSize(3, 0));
      return;
    } finally {
      typedArray.recycle();
    } 
  }
  
  private void e(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, new int[] { 16842904 }, paramInt1, paramInt2);
    try {
      setTextColor(typedArray.getColorStateList(0));
      typedArray.recycle();
      typedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, new int[] { 16842927 }, paramInt1, paramInt2);
    } finally {
      typedArray.recycle();
    } 
  }
  
  private void g() {
    super.setOnClickListener((View.OnClickListener)new bhk(this));
  }
  
  public abstract int a();
  
  public int a(String paramString) {
    return (int)Math.ceil(getPaint().measureText(paramString));
  }
  
  public void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    b(paramContext, paramAttributeSet, paramInt1, paramInt2);
    c(paramContext, paramAttributeSet, paramInt1, paramInt2);
    d(paramContext, paramAttributeSet, paramInt1, paramInt2);
    e(paramContext, paramAttributeSet, paramInt1, paramInt2);
    g();
  }
  
  public void a(View.OnClickListener paramOnClickListener) {
    this.d = paramOnClickListener;
  }
  
  public void a(View paramView) {
    if (this.c != null)
      this.c.onClick(paramView); 
  }
  
  public Fragment b() {
    return (this.h != null) ? this.h.b() : null;
  }
  
  public Fragment c() {
    return (this.h != null) ? this.h.a() : null;
  }
  
  public int d() {
    return a();
  }
  
  public Activity e() {
    Context context;
    for (context = getContext(); !(context instanceof Activity) && context instanceof ContextWrapper; context = ((ContextWrapper)context).getBaseContext());
    if (context instanceof Activity)
      return (Activity)context; 
    throw new bhp("Unable to get Activity.");
  }
  
  public int f() {
    return 0;
  }
  
  public int getCompoundPaddingLeft() {
    return this.e ? this.f : super.getCompoundPaddingLeft();
  }
  
  public int getCompoundPaddingRight() {
    return this.e ? this.g : super.getCompoundPaddingRight();
  }
  
  public void onAttachedToWindow() {
    super.onAttachedToWindow();
    if (!isInEditMode())
      a(getContext()); 
  }
  
  public void onDraw(Canvas paramCanvas) {
    int i;
    if ((getGravity() & 0x1) != 0) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i) {
      i = getCompoundPaddingLeft();
      int j = getCompoundPaddingRight();
      int k = getCompoundDrawablePadding();
      k = Math.min((getWidth() - k + i - j - a(getText().toString())) / 2, (i - getPaddingLeft()) / 2);
      this.f = i - k;
      this.g = j + k;
      this.e = true;
    } 
    super.onDraw(paramCanvas);
    this.e = false;
  }
  
  public void setFragment(Fragment paramFragment) {
    this.h = new bpa(paramFragment);
  }
  
  public void setFragment(Fragment paramFragment) {
    this.h = new bpa(paramFragment);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener) {
    this.c = paramOnClickListener;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\FacebookButtonBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */