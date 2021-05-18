import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v4.content.res.ResourcesCompat;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import br.com.santander.uisdk.tooltip.TooltipView;

public final class aoj {
  private aol A;
  
  private boolean a;
  
  private boolean b;
  
  private int c;
  
  private int d;
  
  private int e;
  
  private int f;
  
  private float g;
  
  private float h;
  
  private float i;
  
  private float j;
  
  private float k;
  
  private float l;
  
  private float m;
  
  private float n = 1.0F;
  
  private float o;
  
  private boolean p;
  
  private int q;
  
  private Drawable r;
  
  private CharSequence s;
  
  private ColorStateList t;
  
  private Typeface u = Typeface.DEFAULT;
  
  private Context v;
  
  private View w;
  
  private aok x;
  
  private aon y;
  
  private aom z;
  
  public aoj(@NonNull MenuItem paramMenuItem) {
    this(paramMenuItem, 0);
  }
  
  public aoj(@NonNull MenuItem paramMenuItem, @StyleRes int paramInt) {
    View view = paramMenuItem.getActionView();
    if (view != null) {
      if (view instanceof TooltipView)
        ((TooltipView)view).a(paramMenuItem); 
      a(view.getContext(), view, paramInt);
      return;
    } 
    throw new NullPointerException("anchor menuItem haven`t actionViewClass");
  }
  
  public aoj(@NonNull View paramView) {
    this(paramView, 0);
  }
  
  public aoj(@NonNull View paramView, @StyleRes int paramInt) {
    a(paramView.getContext(), paramView, paramInt);
  }
  
  private Typeface a(String paramString, int paramInt1, int paramInt2) {
    Typeface typeface = null;
    if (paramString != null) {
      Typeface typeface1 = Typeface.create(paramString, paramInt2);
      typeface = typeface1;
      if (typeface1 != null)
        return typeface1; 
    } 
    switch (paramInt1) {
      default:
        return typeface;
      case 1:
        return Typeface.SANS_SERIF;
      case 2:
        return Typeface.SERIF;
      case 3:
        break;
    } 
    return Typeface.MONOSPACE;
  }
  
  private void a(@NonNull Context paramContext, @NonNull View paramView, @StyleRes int paramInt) {
    this.v = paramContext;
    this.w = paramView;
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramInt, alx.SantanderTooltip);
    this.b = typedArray.getBoolean(alx.SantanderTooltip_cancelable, false);
    this.a = typedArray.getBoolean(alx.SantanderTooltip_dismissOnClick, false);
    this.d = typedArray.getColor(alx.SantanderTooltip_backgroundColor, -7829368);
    this.g = typedArray.getDimension(alx.SantanderTooltip_cornerRadius, -1.0F);
    this.h = typedArray.getDimension(alx.SantanderTooltip_arrowHeight, -1.0F);
    this.i = typedArray.getDimension(alx.SantanderTooltip_arrowWidth, -1.0F);
    this.r = typedArray.getDrawable(alx.SantanderTooltip_arrowDrawable);
    this.j = typedArray.getDimension(alx.SantanderTooltip_margin, -1.0F);
    this.e = typedArray.getResourceId(alx.SantanderTooltip_textAppearance, -1);
    this.k = typedArray.getDimension(alx.SantanderTooltip_android_padding, -1.0F);
    this.c = typedArray.getInteger(alx.SantanderTooltip_android_gravity, 80);
    this.s = typedArray.getString(alx.SantanderTooltip_android_text);
    this.l = typedArray.getDimension(alx.SantanderTooltip_android_textSize, -1.0F);
    this.t = typedArray.getColorStateList(alx.SantanderTooltip_android_textColor);
    this.f = typedArray.getInteger(alx.SantanderTooltip_android_textStyle, -1);
    this.m = typedArray.getDimensionPixelSize(alx.SantanderTooltip_android_lineSpacingExtra, 0);
    this.n = typedArray.getFloat(alx.SantanderTooltip_android_lineSpacingMultiplier, this.n);
    this.o = typedArray.getDimension(alx.SantanderTooltip_android_maxWidth, 250.0F);
    this.p = typedArray.getBoolean(alx.SantanderTooltip_enableCloseButton, false);
    this.q = typedArray.getInteger(alx.SantanderTooltip_closeButtonGravity, 8388613);
    this.u = a(typedArray.getString(alx.SantanderTooltip_android_fontFamily), typedArray.getInt(alx.SantanderTooltip_android_typeface, -1), this.f);
    typedArray.recycle();
  }
  
  public aoa a() {
    if (!Gravity.isHorizontal(this.c) && !Gravity.isVertical(this.c))
      throw new IllegalArgumentException("Gravity must have be START, END, TOP or BOTTOM."); 
    if (this.h == -1.0F)
      this.h = this.v.getResources().getDimension(alq.default_tooltip_arrow_height); 
    if (this.i == -1.0F)
      this.i = this.v.getResources().getDimension(alq.default_tooltip_arrow_width); 
    if (this.r == null)
      this.r = (Drawable)new anz(this.d, this.c); 
    if (this.j == -1.0F)
      this.j = this.v.getResources().getDimension(alq.default_tooltip_margin); 
    if (this.k == -1.0F)
      this.k = this.v.getResources().getDimension(alq.default_tooltip_padding); 
    return new aoa(this, null);
  }
  
  public aoj a(float paramFloat) {
    this.g = paramFloat;
    return this;
  }
  
  public aoj a(float paramFloat1, float paramFloat2) {
    this.m = paramFloat1;
    this.n = paramFloat2;
    return this;
  }
  
  public aoj a(@ColorInt int paramInt) {
    this.d = paramInt;
    return this;
  }
  
  public aoj a(@DimenRes int paramInt, float paramFloat) {
    this.m = this.v.getResources().getDimensionPixelSize(paramInt);
    this.n = paramFloat;
    return this;
  }
  
  public aoj a(Typeface paramTypeface) {
    this.u = paramTypeface;
    return this;
  }
  
  public aoj a(Drawable paramDrawable) {
    this.r = paramDrawable;
    return this;
  }
  
  public aoj a(aok paramaok) {
    this.x = paramaok;
    return this;
  }
  
  public aoj a(aol paramaol) {
    this.A = paramaol;
    return this;
  }
  
  public aoj a(aom paramaom) {
    this.z = paramaom;
    return this;
  }
  
  public aoj a(aon paramaon) {
    this.y = paramaon;
    return this;
  }
  
  public aoj a(CharSequence paramCharSequence) {
    this.s = paramCharSequence;
    return this;
  }
  
  public aoj a(boolean paramBoolean) {
    this.b = paramBoolean;
    return this;
  }
  
  public aoa b() {
    aoa aoa = a();
    aoa.b();
    return aoa;
  }
  
  public aoj b(float paramFloat) {
    this.h = paramFloat;
    return this;
  }
  
  public aoj b(@DimenRes int paramInt) {
    return a(this.v.getResources().getDimension(paramInt));
  }
  
  public aoj b(boolean paramBoolean) {
    this.a = paramBoolean;
    return this;
  }
  
  public aoj c(float paramFloat) {
    this.i = paramFloat;
    return this;
  }
  
  public aoj c(@DimenRes int paramInt) {
    return b(this.v.getResources().getDimension(paramInt));
  }
  
  public aoj c(boolean paramBoolean) {
    this.p = paramBoolean;
    return this;
  }
  
  public aoj d(float paramFloat) {
    this.j = paramFloat;
    return this;
  }
  
  public aoj d(@DimenRes int paramInt) {
    return c(this.v.getResources().getDimension(paramInt));
  }
  
  public aoj e(float paramFloat) {
    this.k = paramFloat;
    return this;
  }
  
  public aoj e(@DrawableRes int paramInt) {
    return a(ResourcesCompat.getDrawable(this.v.getResources(), paramInt, null));
  }
  
  public aoj f(float paramFloat) {
    this.l = TypedValue.applyDimension(2, paramFloat, this.v.getResources().getDisplayMetrics());
    return this;
  }
  
  public aoj f(@DimenRes int paramInt) {
    return d(this.v.getResources().getDimension(paramInt));
  }
  
  public aoj g(float paramFloat) {
    this.o = paramFloat;
    return this;
  }
  
  public aoj g(@StyleRes int paramInt) {
    this.e = paramInt;
    return this;
  }
  
  public aoj h(@DimenRes int paramInt) {
    return e(this.v.getResources().getDimension(paramInt));
  }
  
  public aoj i(int paramInt) {
    this.c = paramInt;
    return this;
  }
  
  public aoj j(@StringRes int paramInt) {
    return a(this.v.getString(paramInt));
  }
  
  public aoj k(@DimenRes int paramInt) {
    this.l = this.v.getResources().getDimension(paramInt);
    return this;
  }
  
  public aoj l(@ColorInt int paramInt) {
    this.t = ColorStateList.valueOf(paramInt);
    return this;
  }
  
  public aoj m(int paramInt) {
    this.f = paramInt;
    return this;
  }
  
  public aoj n(int paramInt) {
    this.q = paramInt;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aoj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */