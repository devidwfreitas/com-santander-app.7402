package br.com.santander.uisdk;

import alx;
import aly;
import alz;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;

public class SantanderSwitch extends LinearLayout {
  private TextView a;
  
  private LottieAnimationView b;
  
  private boolean c;
  
  private alz d;
  
  private View.OnClickListener e = (View.OnClickListener)new aly(this);
  
  public SantanderSwitch(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SantanderSwitch(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SantanderSwitch(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    b();
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, alx.SantanderSwitch, paramInt, 0);
    if (typedArray != null) {
      setText(typedArray.getString(alx.SantanderSwitch_android_text));
      if (typedArray.hasValue(alx.SantanderSwitch_android_textSize))
        setTextSize(typedArray.getFloat(alx.SantanderSwitch_android_textSize, this.a.getTextSize())); 
      if (typedArray.hasValue(alx.SantanderSwitch_android_textColor))
        setTextColor(typedArray.getColor(alx.SantanderSwitch_android_textColor, ContextCompat.getColor(getContext(), 17170444))); 
      typedArray.recycle();
    } 
  }
  
  private float a(float paramFloat) {
    return TypedValue.applyDimension(1, paramFloat, getResources().getDisplayMetrics());
  }
  
  private void b() {
    setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-2, -2));
    setOrientation(0);
    setGravity(17);
    this.a = new TextView(getContext());
    this.a.setLayoutParams((ViewGroup.LayoutParams)c());
    addView((View)this.a);
    if (isInEditMode()) {
      addView((View)new Switch(getContext()));
      return;
    } 
    this.b = new LottieAnimationView(getContext());
    this.b.setBackgroundColor(ContextCompat.getColor(getContext(), 17170445));
    this.b.setAnimation("lottie_switch_on.json");
    this.b.d(false);
    this.b.setOnClickListener(this.e);
    addView((View)this.b);
  }
  
  private LinearLayout.LayoutParams c() {
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
    layoutParams.setMargins(0, 0, (int)a(10.0F), 0);
    return layoutParams;
  }
  
  private void d() {
    this.b.setAnimation("lottie_switch_on.json");
    this.b.setSpeed(2.0F);
    this.b.h();
    this.c = true;
  }
  
  private void e() {
    this.b.setAnimation("lottie_switch_off.json");
    this.b.setSpeed(2.0F);
    this.b.h();
    this.c = false;
  }
  
  public boolean a() {
    return this.c;
  }
  
  public void setChecked(boolean paramBoolean) {
    setChecked(paramBoolean, true);
  }
  
  public void setChecked(boolean paramBoolean1, boolean paramBoolean2) {
    if (this.c != paramBoolean1) {
      if (paramBoolean1) {
        d();
      } else {
        e();
      } 
      if (paramBoolean2 && this.d != null) {
        this.d.onCheckedChanged(this, this.c);
        return;
      } 
    } 
  }
  
  public void setOnCheckedChangeListener(alz paramalz) {
    this.d = paramalz;
  }
  
  public void setOnClickListener(@Nullable View.OnClickListener paramOnClickListener) {}
  
  public void setText(String paramString) {
    boolean bool;
    TextView textView = this.a;
    if (paramString == null || paramString.isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    textView.setVisibility(bool);
    this.a.setText(paramString);
  }
  
  public void setTextColor(@ColorInt int paramInt) {
    this.a.setTextColor(paramInt);
  }
  
  public void setTextSize(float paramFloat) {
    this.a.setTextSize(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\SantanderSwitch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */