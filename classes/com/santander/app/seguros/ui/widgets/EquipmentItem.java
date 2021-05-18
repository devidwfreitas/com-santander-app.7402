package com.santander.app.seguros.ui.widgets;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import flv;
import mbq;
import mbr;

public class EquipmentItem extends FrameLayout {
  private Button a;
  
  private ImageView b;
  
  private boolean c;
  
  private mbr d;
  
  private String e;
  
  public EquipmentItem(Context paramContext) {
    super(paramContext);
    f();
  }
  
  public EquipmentItem(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet) {
    f();
    TypedArray typedArray = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, flv.EquipmentItem, 0, 0);
    this.a.setText(typedArray.getString(0));
    Drawable drawable = typedArray.getDrawable(1);
    this.b.setImageDrawable(drawable);
    typedArray.recycle();
  }
  
  private void f() {
    LayoutInflater.from(getContext()).inflate(2130969024, (ViewGroup)this);
    g();
  }
  
  private void g() {
    this.a = (Button)findViewById(2131757211);
    this.b = (ImageView)findViewById(2131757212);
    this.a.setOnClickListener((View.OnClickListener)new mbq(this));
  }
  
  public String a() {
    return this.e;
  }
  
  public boolean b() {
    return this.c;
  }
  
  public void c() {
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.b, "alpha", new float[] { 0.0F, 1.0F });
    objectAnimator.setDuration(200L);
    objectAnimator.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
    objectAnimator.start();
    this.c = true;
  }
  
  public void d() {
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.b, "alpha", new float[] { 1.0F, 0.0F });
    objectAnimator.setDuration(200L);
    objectAnimator.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
    objectAnimator.start();
    this.c = false;
  }
  
  public void e() {
    this.b.setVisibility(8);
  }
  
  public void setListener(mbr parammbr) {
    this.d = parammbr;
  }
  
  public void setName(String paramString) {
    this.e = paramString;
  }
  
  public void setTextEquipment(String paramString) {
    this.a.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\EquipmentItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */