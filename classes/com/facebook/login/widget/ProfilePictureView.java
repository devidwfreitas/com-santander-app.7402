package com.facebook.login.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import bhp;
import bjb;
import bjs;
import bjt;
import bjz;
import bpc;
import bpi;
import bpk;
import bpl;
import bpm;
import bpu;
import bqq;
import btn;
import bto;

public class ProfilePictureView extends FrameLayout {
  public static final String a = ProfilePictureView.class.getSimpleName();
  
  public static final int b = -1;
  
  public static final int c = -2;
  
  public static final int d = -3;
  
  public static final int e = -4;
  
  private static final int f = 1;
  
  private static final boolean g = true;
  
  private static final String h = "ProfilePictureView_superState";
  
  private static final String i = "ProfilePictureView_profileId";
  
  private static final String j = "ProfilePictureView_presetSize";
  
  private static final String k = "ProfilePictureView_isCropped";
  
  private static final String l = "ProfilePictureView_bitmap";
  
  private static final String m = "ProfilePictureView_width";
  
  private static final String n = "ProfilePictureView_height";
  
  private static final String o = "ProfilePictureView_refresh";
  
  private String p;
  
  private int q = 0;
  
  private int r = 0;
  
  private boolean s = true;
  
  private Bitmap t;
  
  private ImageView u;
  
  private int v = -1;
  
  private bpi w;
  
  private bto x;
  
  private Bitmap y = null;
  
  public ProfilePictureView(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  public ProfilePictureView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    a(paramAttributeSet);
  }
  
  public ProfilePictureView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
    a(paramAttributeSet);
  }
  
  private void a(Context paramContext) {
    removeAllViews();
    this.u = new ImageView(paramContext);
    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.u.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    this.u.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    addView((View)this.u);
  }
  
  private void a(Bitmap paramBitmap) {
    if (this.u != null && paramBitmap != null) {
      this.t = paramBitmap;
      this.u.setImageBitmap(paramBitmap);
    } 
  }
  
  private void a(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, bjz.com_facebook_profile_picture_view);
    setPresetSize(typedArray.getInt(bjz.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
    this.s = typedArray.getBoolean(bjz.com_facebook_profile_picture_view_com_facebook_is_cropped, true);
    typedArray.recycle();
  }
  
  private void a(bpm parambpm) {
    bto bto1;
    Bitmap bitmap;
    if (parambpm.a() == this.w) {
      this.w = null;
      bitmap = parambpm.c();
      Exception exception = parambpm.b();
      if (exception != null) {
        bto1 = this.x;
        if (bto1 != null) {
          bto1.a(new bhp("Error in downloading profile picture for profileId: " + c(), exception));
          return;
        } 
        bpu.a(bjb.REQUESTS, 6, a, exception.toString());
        return;
      } 
    } else {
      return;
    } 
    if (bitmap != null) {
      a(bitmap);
      if (bto1.d()) {
        b(false);
        return;
      } 
    } 
  }
  
  private void a(boolean paramBoolean) {
    boolean bool = f();
    if (this.p == null || this.p.length() == 0 || (this.r == 0 && this.q == 0)) {
      e();
      return;
    } 
    if (bool || paramBoolean) {
      b(true);
      return;
    } 
  }
  
  private void b(boolean paramBoolean) {
    bpi bpi1 = (new bpk(getContext(), bpi.a(this.p, this.r, this.q))).a(paramBoolean).a(this).a((bpl)new btn(this)).a();
    if (this.w != null)
      bpc.b(this.w); 
    this.w = bpi1;
    bpc.a(bpi1);
  }
  
  private int c(boolean paramBoolean) {
    int i;
    switch (this.v) {
      default:
        return 0;
      case -2:
        i = bjs.com_facebook_profilepictureview_preset_size_small;
        return getResources().getDimensionPixelSize(i);
      case -3:
        i = bjs.com_facebook_profilepictureview_preset_size_normal;
        return getResources().getDimensionPixelSize(i);
      case -4:
        i = bjs.com_facebook_profilepictureview_preset_size_large;
        return getResources().getDimensionPixelSize(i);
      case -1:
        break;
    } 
    if (paramBoolean) {
      i = bjs.com_facebook_profilepictureview_preset_size_normal;
      return getResources().getDimensionPixelSize(i);
    } 
  }
  
  private void e() {
    if (this.w != null)
      bpc.b(this.w); 
    if (this.y == null) {
      int i;
      if (b()) {
        i = bjt.com_facebook_profile_picture_blank_square;
      } else {
        i = bjt.com_facebook_profile_picture_blank_portrait;
      } 
      a(BitmapFactory.decodeResource(getResources(), i));
      return;
    } 
    f();
    a(Bitmap.createScaledBitmap(this.y, this.r, this.q, false));
  }
  
  private boolean f() {
    boolean bool = false;
    int i = getHeight();
    int k = getWidth();
    if (k < 1 || i < 1)
      return false; 
    int j = c(false);
    if (j != 0) {
      i = j;
    } else {
      j = k;
    } 
    if (j <= i) {
      if (b()) {
        i = j;
      } else {
        i = 0;
      } 
    } else if (b()) {
      j = i;
    } else {
      j = 0;
    } 
    if (j != this.r || i != this.q)
      bool = true; 
    this.r = j;
    this.q = i;
    return bool;
  }
  
  public final int a() {
    return this.v;
  }
  
  public final boolean b() {
    return this.s;
  }
  
  public final String c() {
    return this.p;
  }
  
  public final bto d() {
    return this.x;
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    this.w = null;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a(false);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    boolean bool2 = true;
    ViewGroup.LayoutParams layoutParams = getLayoutParams();
    boolean bool3 = false;
    int m = View.MeasureSpec.getSize(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int j = m;
    boolean bool1 = bool3;
    int i = paramInt2;
    if (View.MeasureSpec.getMode(paramInt2) != 1073741824) {
      j = m;
      bool1 = bool3;
      i = paramInt2;
      if (layoutParams.height == -2) {
        j = c(true);
        i = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
        bool1 = true;
      } 
    } 
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824 && layoutParams.width == -2) {
      paramInt2 = c(true);
      paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
      bool1 = bool2;
    } else {
      paramInt2 = k;
    } 
    if (bool1) {
      setMeasuredDimension(paramInt2, j);
      measureChildren(paramInt1, i);
      return;
    } 
    super.onMeasure(paramInt1, i);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (paramParcelable.getClass() != Bundle.class) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    Bundle bundle = (Bundle)paramParcelable;
    super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
    this.p = bundle.getString("ProfilePictureView_profileId");
    this.v = bundle.getInt("ProfilePictureView_presetSize");
    this.s = bundle.getBoolean("ProfilePictureView_isCropped");
    this.r = bundle.getInt("ProfilePictureView_width");
    this.q = bundle.getInt("ProfilePictureView_height");
    a((Bitmap)bundle.getParcelable("ProfilePictureView_bitmap"));
    if (bundle.getBoolean("ProfilePictureView_refresh")) {
      a(true);
      return;
    } 
  }
  
  protected Parcelable onSaveInstanceState() {
    Parcelable parcelable = super.onSaveInstanceState();
    Bundle bundle = new Bundle();
    bundle.putParcelable("ProfilePictureView_superState", parcelable);
    bundle.putString("ProfilePictureView_profileId", this.p);
    bundle.putInt("ProfilePictureView_presetSize", this.v);
    bundle.putBoolean("ProfilePictureView_isCropped", this.s);
    bundle.putParcelable("ProfilePictureView_bitmap", (Parcelable)this.t);
    bundle.putInt("ProfilePictureView_width", this.r);
    bundle.putInt("ProfilePictureView_height", this.q);
    if (this.w != null) {
      boolean bool1 = true;
      bundle.putBoolean("ProfilePictureView_refresh", bool1);
      return (Parcelable)bundle;
    } 
    boolean bool = false;
    bundle.putBoolean("ProfilePictureView_refresh", bool);
    return (Parcelable)bundle;
  }
  
  public final void setCropped(boolean paramBoolean) {
    this.s = paramBoolean;
    a(false);
  }
  
  public final void setDefaultProfilePicture(Bitmap paramBitmap) {
    this.y = paramBitmap;
  }
  
  public final void setOnErrorListener(bto parambto) {
    this.x = parambto;
  }
  
  public final void setPresetSize(int paramInt) {
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("Must use a predefined preset size");
      case -4:
      case -3:
      case -2:
      case -1:
        break;
    } 
    this.v = paramInt;
    requestLayout();
  }
  
  public final void setProfileId(String paramString) {
    boolean bool = false;
    if (bqq.a(this.p) || !this.p.equalsIgnoreCase(paramString)) {
      e();
      bool = true;
    } 
    this.p = paramString;
    a(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\widget\ProfilePictureView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */