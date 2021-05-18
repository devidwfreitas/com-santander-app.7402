package com.santander.app.components.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import flv;
import grp;
import grr;

public class RoundedImageView extends ImageView {
  public static final String a = "RoundedImageView";
  
  public static final float b = 0.0F;
  
  public static final float c = 0.0F;
  
  public static final Shader.TileMode d;
  
  private static final int f = -2;
  
  private static final int g = 0;
  
  private static final int h = 1;
  
  private static final int i = 2;
  
  private static final ImageView.ScaleType[] j;
  
  private final float[] k = new float[] { 0.0F, 0.0F, 0.0F, 0.0F };
  
  private Drawable l;
  
  private ColorStateList m = ColorStateList.valueOf(-16777216);
  
  private float n = 0.0F;
  
  private ColorFilter o = null;
  
  private boolean p = false;
  
  private Drawable q;
  
  private boolean r = false;
  
  private boolean s = false;
  
  private boolean t = false;
  
  private int u;
  
  private ImageView.ScaleType v = ImageView.ScaleType.FIT_CENTER;
  
  private Shader.TileMode w = d;
  
  private Shader.TileMode x = d;
  
  static {
    boolean bool;
    if (!RoundedImageView.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    e = bool;
    d = Shader.TileMode.CLAMP;
    j = new ImageView.ScaleType[] { ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE };
  }
  
  public RoundedImageView(Context paramContext) {
    super(paramContext);
  }
  
  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.RoundedImageView, paramInt, 0);
    paramInt = typedArray.getInt(0, -1);
    if (paramInt >= 0) {
      setScaleType(j[paramInt]);
    } else {
      setScaleType(ImageView.ScaleType.FIT_CENTER);
    } 
    float f = typedArray.getDimensionPixelSize(1, -1);
    this.k[0] = typedArray.getDimensionPixelSize(2, -1);
    this.k[1] = typedArray.getDimensionPixelSize(3, -1);
    this.k[2] = typedArray.getDimensionPixelSize(5, -1);
    this.k[3] = typedArray.getDimensionPixelSize(4, -1);
    int j = this.k.length;
    paramInt = 0;
    int i = 0;
    while (paramInt < j) {
      if (this.k[paramInt] < 0.0F) {
        this.k[paramInt] = 0.0F;
      } else {
        i = 1;
      } 
      paramInt++;
    } 
    if (!i) {
      if (f < 0.0F)
        f = 0.0F; 
      i = this.k.length;
      for (paramInt = 0; paramInt < i; paramInt++)
        this.k[paramInt] = f; 
    } 
    this.n = typedArray.getDimensionPixelSize(6, -1);
    if (this.n < 0.0F)
      this.n = 0.0F; 
    this.m = typedArray.getColorStateList(7);
    if (this.m == null)
      this.m = ColorStateList.valueOf(-16777216); 
    this.t = typedArray.getBoolean(8, false);
    this.s = typedArray.getBoolean(9, false);
    paramInt = typedArray.getInt(10, -2);
    if (paramInt != -2) {
      setTileModeX(b(paramInt));
      setTileModeY(b(paramInt));
    } 
    paramInt = typedArray.getInt(11, -2);
    if (paramInt != -2)
      setTileModeX(b(paramInt)); 
    paramInt = typedArray.getInt(12, -2);
    if (paramInt != -2)
      setTileModeY(b(paramInt)); 
    k();
    b(true);
    typedArray.recycle();
  }
  
  private void a(Drawable paramDrawable) {
    if (paramDrawable != null) {
      if (paramDrawable instanceof grp) {
        ((grp)paramDrawable).a(this.v).b(this.n).a(this.m).a(this.s).a(this.w).b(this.x);
        if (this.k != null)
          ((grp)paramDrawable).a(this.k[0], this.k[1], this.k[2], this.k[3]); 
        l();
        return;
      } 
      if (paramDrawable instanceof LayerDrawable) {
        LayerDrawable layerDrawable = (LayerDrawable)paramDrawable;
        int j = layerDrawable.getNumberOfLayers();
        int i = 0;
        while (true) {
          if (i < j) {
            a(layerDrawable.getDrawable(i));
            i++;
            continue;
          } 
          return;
        } 
      } 
    } 
  }
  
  private static Shader.TileMode b(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 0:
        return Shader.TileMode.CLAMP;
      case 1:
        return Shader.TileMode.REPEAT;
      case 2:
        break;
    } 
    return Shader.TileMode.MIRROR;
  }
  
  private void b(boolean paramBoolean) {
    if (this.t) {
      if (paramBoolean)
        this.l = grp.a(this.l); 
      a(this.l);
    } 
  }
  
  private Drawable j() {
    Drawable drawable2 = null;
    Resources resources = getResources();
    if (resources == null)
      return null; 
    Drawable drawable1 = drawable2;
    if (this.u != 0)
      try {
        drawable1 = resources.getDrawable(this.u);
      } catch (Exception exception) {
        Log.w("RoundedImageView", "Unable to find resource: " + this.u, exception);
        this.u = 0;
        drawable1 = drawable2;
      }  
    return grp.a(drawable1);
  }
  
  private void k() {
    a(this.q);
  }
  
  private void l() {
    if (this.q != null && this.p) {
      this.q = this.q.mutate();
      if (this.r)
        this.q.setColorFilter(this.o); 
    } 
  }
  
  public float a() {
    return b();
  }
  
  public float a(int paramInt) {
    return this.k[paramInt];
  }
  
  public void a(boolean paramBoolean) {
    if (this.t == paramBoolean)
      return; 
    this.t = paramBoolean;
    b(true);
    invalidate();
  }
  
  public float b() {
    float f = 0.0F;
    float[] arrayOfFloat = this.k;
    int j = arrayOfFloat.length;
    for (int i = 0; i < j; i++)
      f = Math.max(arrayOfFloat[i], f); 
    return f;
  }
  
  public float c() {
    return this.n;
  }
  
  public int d() {
    return this.m.getDefaultColor();
  }
  
  protected void drawableStateChanged() {
    super.drawableStateChanged();
    invalidate();
  }
  
  public ColorStateList e() {
    return this.m;
  }
  
  public boolean f() {
    return this.s;
  }
  
  public Shader.TileMode g() {
    return this.w;
  }
  
  public ImageView.ScaleType getScaleType() {
    return this.v;
  }
  
  public Shader.TileMode h() {
    return this.x;
  }
  
  public boolean i() {
    return this.t;
  }
  
  public void setBackground(Drawable paramDrawable) {
    setBackgroundDrawable(paramDrawable);
  }
  
  @Deprecated
  public void setBackgroundDrawable(Drawable paramDrawable) {
    this.l = paramDrawable;
    b(true);
    super.setBackgroundDrawable(this.l);
  }
  
  public void setBorderColor(int paramInt) {
    setBorderColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setBorderColor(ColorStateList paramColorStateList) {
    if (!this.m.equals(paramColorStateList)) {
      if (paramColorStateList == null)
        paramColorStateList = ColorStateList.valueOf(-16777216); 
      this.m = paramColorStateList;
      k();
      b(false);
      if (this.n > 0.0F) {
        invalidate();
        return;
      } 
    } 
  }
  
  public void setBorderWidth(float paramFloat) {
    if (this.n == paramFloat)
      return; 
    this.n = paramFloat;
    k();
    b(false);
    invalidate();
  }
  
  public void setBorderWidth(int paramInt) {
    setBorderWidth(getResources().getDimension(paramInt));
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    if (this.o != paramColorFilter) {
      this.o = paramColorFilter;
      this.r = true;
      this.p = true;
      l();
      invalidate();
    } 
  }
  
  public void setCornerRadius(float paramFloat) {
    setCornerRadius(paramFloat, paramFloat, paramFloat, paramFloat);
  }
  
  public void setCornerRadius(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    if (this.k[0] == paramFloat1 && this.k[1] == paramFloat2 && this.k[2] == paramFloat4 && this.k[3] == paramFloat3)
      return; 
    this.k[0] = paramFloat1;
    this.k[1] = paramFloat2;
    this.k[3] = paramFloat3;
    this.k[2] = paramFloat4;
    k();
    b(false);
    invalidate();
  }
  
  public void setCornerRadius(int paramInt, float paramFloat) {
    if (this.k[paramInt] == paramFloat)
      return; 
    this.k[paramInt] = paramFloat;
    k();
    b(false);
    invalidate();
  }
  
  public void setCornerRadiusDimen(int paramInt) {
    float f = getResources().getDimension(paramInt);
    setCornerRadius(f, f, f, f);
  }
  
  public void setCornerRadiusDimen(int paramInt1, int paramInt2) {
    setCornerRadius(paramInt1, getResources().getDimensionPixelSize(paramInt2));
  }
  
  public void setImageBitmap(Bitmap paramBitmap) {
    this.u = 0;
    this.q = (Drawable)grp.a(paramBitmap);
    k();
    super.setImageDrawable(this.q);
  }
  
  public void setImageDrawable(Drawable paramDrawable) {
    this.u = 0;
    this.q = grp.a(paramDrawable);
    k();
    super.setImageDrawable(this.q);
  }
  
  public void setImageResource(int paramInt) {
    if (this.u != paramInt) {
      this.u = paramInt;
      this.q = j();
      k();
      super.setImageDrawable(this.q);
    } 
  }
  
  public void setImageURI(Uri paramUri) {
    super.setImageURI(paramUri);
    setImageDrawable(getDrawable());
  }
  
  public void setOval(boolean paramBoolean) {
    this.s = paramBoolean;
    k();
    b(false);
    invalidate();
  }
  
  public void setScaleType(ImageView.ScaleType paramScaleType) {
    if (!e && paramScaleType == null)
      throw new AssertionError(); 
    if (this.v != paramScaleType) {
      this.v = paramScaleType;
      switch (grr.a[paramScaleType.ordinal()]) {
        default:
          super.setScaleType(paramScaleType);
          k();
          b(false);
          invalidate();
          return;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
          break;
      } 
    } else {
      return;
    } 
    super.setScaleType(ImageView.ScaleType.FIT_XY);
    k();
    b(false);
    invalidate();
  }
  
  public void setTileModeX(Shader.TileMode paramTileMode) {
    if (this.w == paramTileMode)
      return; 
    this.w = paramTileMode;
    k();
    b(false);
    invalidate();
  }
  
  public void setTileModeY(Shader.TileMode paramTileMode) {
    if (this.x == paramTileMode)
      return; 
    this.x = paramTileMode;
    k();
    b(false);
    invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\RoundedImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */