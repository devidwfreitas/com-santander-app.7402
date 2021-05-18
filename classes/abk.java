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
import br.com.santander.investimentoV2.shared.commons.tooltip.TooltipView;

public final class abk {
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
  
  private Drawable o;
  
  private CharSequence p;
  
  private ColorStateList q;
  
  private Typeface r = Typeface.DEFAULT;
  
  private Context s;
  
  private View t;
  
  private abm u;
  
  private abo v;
  
  private abn w;
  
  public abk(@NonNull MenuItem paramMenuItem) {
    this(paramMenuItem, 0);
  }
  
  public abk(@NonNull MenuItem paramMenuItem, @StyleRes int paramInt) {
    View view = paramMenuItem.getActionView();
    if (view != null) {
      if (view instanceof TooltipView)
        ((TooltipView)view).setMenuItem(paramMenuItem); 
      a(view.getContext(), view, paramInt);
      return;
    } 
    throw new NullPointerException("anchor menuItem haven`t actionViewClass");
  }
  
  public abk(@NonNull View paramView) {
    this(paramView, 0);
  }
  
  public abk(@NonNull View paramView, @StyleRes int paramInt) {
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
    this.s = paramContext;
    this.t = paramView;
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramInt, li.TooltipHandler);
    this.b = typedArray.getBoolean(li.TooltipHandler_cancelable, false);
    this.a = typedArray.getBoolean(li.TooltipHandler_dismissOnClick, false);
    this.d = typedArray.getColor(li.TooltipHandler_backgroundColor, -7829368);
    this.g = typedArray.getDimension(li.TooltipHandler_cornerRadius, -1.0F);
    this.h = typedArray.getDimension(li.TooltipHandler_arrowHeight, -1.0F);
    this.i = typedArray.getDimension(li.TooltipHandler_arrowWidth, -1.0F);
    this.o = typedArray.getDrawable(li.TooltipHandler_arrowDrawable);
    this.j = typedArray.getDimension(li.TooltipHandler_margin, -1.0F);
    this.e = typedArray.getResourceId(li.TooltipHandler_textAppearance, -1);
    this.k = typedArray.getDimension(li.TooltipHandler_android_padding, -1.0F);
    this.c = typedArray.getInteger(li.TooltipHandler_android_gravity, 80);
    this.p = typedArray.getString(li.TooltipHandler_android_text);
    this.l = typedArray.getDimension(li.TooltipHandler_android_textSize, -1.0F);
    this.q = typedArray.getColorStateList(li.TooltipHandler_android_textColor);
    this.f = typedArray.getInteger(li.TooltipHandler_android_textStyle, -1);
    this.m = typedArray.getDimensionPixelSize(li.TooltipHandler_android_lineSpacingExtra, 0);
    this.n = typedArray.getFloat(li.TooltipHandler_android_lineSpacingMultiplier, this.n);
    this.r = a(typedArray.getString(li.TooltipHandler_android_fontFamily), typedArray.getInt(li.TooltipHandler_android_typeface, -1), this.f);
    typedArray.recycle();
  }
  
  public abb a() {
    if (!Gravity.isHorizontal(this.c) && !Gravity.isVertical(this.c))
      throw new IllegalArgumentException("Gravity must have be START, END, TOP or BOTTOM."); 
    if (this.h == -1.0F)
      this.h = this.s.getResources().getDimension(ky.default_tooltip_arrow_height); 
    if (this.i == -1.0F)
      this.i = this.s.getResources().getDimension(ky.default_tooltip_arrow_width); 
    if (this.o == null)
      this.o = (Drawable)new aba(this.d, this.c); 
    if (this.j == -1.0F)
      this.j = this.s.getResources().getDimension(ky.default_tooltip_margin); 
    if (this.k == -1.0F)
      this.k = this.s.getResources().getDimension(ky.default_tooltip_padding); 
    return new abb(this, null);
  }
  
  public abk a(float paramFloat) {
    this.g = paramFloat;
    return this;
  }
  
  public abk a(float paramFloat1, float paramFloat2) {
    this.m = paramFloat1;
    this.n = paramFloat2;
    return this;
  }
  
  public abk a(@ColorInt int paramInt) {
    this.d = paramInt;
    return this;
  }
  
  public abk a(@DimenRes int paramInt, float paramFloat) {
    this.m = this.s.getResources().getDimensionPixelSize(paramInt);
    this.n = paramFloat;
    return this;
  }
  
  public abk a(abm paramabm) {
    this.u = paramabm;
    return this;
  }
  
  public abk a(abn paramabn) {
    this.w = paramabn;
    return this;
  }
  
  public abk a(abo paramabo) {
    this.v = paramabo;
    return this;
  }
  
  public abk a(Typeface paramTypeface) {
    this.r = paramTypeface;
    return this;
  }
  
  public abk a(Drawable paramDrawable) {
    this.o = paramDrawable;
    return this;
  }
  
  public abk a(CharSequence paramCharSequence) {
    this.p = paramCharSequence;
    return this;
  }
  
  public abk a(boolean paramBoolean) {
    this.b = paramBoolean;
    return this;
  }
  
  public abb b() {
    abb abb = a();
    abb.b();
    return abb;
  }
  
  public abk b(float paramFloat) {
    this.h = paramFloat;
    return this;
  }
  
  public abk b(@DimenRes int paramInt) {
    return a(this.s.getResources().getDimension(paramInt));
  }
  
  public abk b(boolean paramBoolean) {
    this.a = paramBoolean;
    return this;
  }
  
  public abk c(float paramFloat) {
    this.i = paramFloat;
    return this;
  }
  
  public abk c(@DimenRes int paramInt) {
    return b(this.s.getResources().getDimension(paramInt));
  }
  
  public abk d(float paramFloat) {
    this.j = paramFloat;
    return this;
  }
  
  public abk d(@DimenRes int paramInt) {
    return c(this.s.getResources().getDimension(paramInt));
  }
  
  public abk e(float paramFloat) {
    this.k = paramFloat;
    return this;
  }
  
  public abk e(@DrawableRes int paramInt) {
    return a(ResourcesCompat.getDrawable(this.s.getResources(), paramInt, null));
  }
  
  public abk f(float paramFloat) {
    this.l = TypedValue.applyDimension(2, paramFloat, this.s.getResources().getDisplayMetrics());
    return this;
  }
  
  public abk f(@DimenRes int paramInt) {
    return d(this.s.getResources().getDimension(paramInt));
  }
  
  public abk g(@StyleRes int paramInt) {
    this.e = paramInt;
    return this;
  }
  
  public abk h(@DimenRes int paramInt) {
    return e(this.s.getResources().getDimension(paramInt));
  }
  
  public abk i(int paramInt) {
    this.c = paramInt;
    return this;
  }
  
  public abk j(@StringRes int paramInt) {
    return a(this.s.getString(paramInt));
  }
  
  public abk k(@DimenRes int paramInt) {
    this.l = this.s.getResources().getDimension(paramInt);
    return this;
  }
  
  public abk l(@ColorInt int paramInt) {
    this.q = ColorStateList.valueOf(paramInt);
    return this;
  }
  
  public abk m(int paramInt) {
    this.f = paramInt;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */