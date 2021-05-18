package com.santander.app.seguros.ui.widgets.cancellation;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.LockUnlockButton;
import flv;
import mcb;
import mfe;
import mff;

public class CancelSeekBar extends FrameLayout {
  private View a;
  
  private TextView b;
  
  private TextView c;
  
  private LockUnlockButton d;
  
  private Drawable e;
  
  private Drawable f;
  
  private Drawable g;
  
  private mff h;
  
  public CancelSeekBar(@NonNull Context paramContext) {
    super(paramContext);
    a();
  }
  
  public CancelSeekBar(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  private void a() {
    LayoutInflater.from(getContext()).inflate(2130969276, (ViewGroup)this);
    d();
  }
  
  private void a(AttributeSet paramAttributeSet) {
    a();
    TypedArray typedArray = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, flv.CancelSeekBar, 0, 0);
    this.b.setText(typedArray.getString(0));
    this.c.setText(typedArray.getString(1));
    this.e = typedArray.getDrawable(4);
    this.f = typedArray.getDrawable(2);
    this.g = typedArray.getDrawable(3);
    typedArray.recycle();
    b();
  }
  
  private void b() {
    c();
  }
  
  private void b(boolean paramBoolean) {
    this.a.setBackground(this.e);
    this.b.setVisibility(0);
    this.c.setVisibility(0);
    if (paramBoolean) {
      ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.a, "alpha", new float[] { 0.0F, 0.75F, 1.0F });
      objectAnimator.setDuration(400L);
      objectAnimator.start();
    } 
  }
  
  private void c() {
    this.d.setThumb(ContextCompat.getDrawable(getContext(), 2130838525));
    this.d.setSlideButtonListener((mcb)new mfe(this));
    this.d.setEnabled(true);
    this.d.setClickable(true);
    this.d.setProgressWithAnimation(50);
    b(false);
  }
  
  private void c(boolean paramBoolean) {
    this.a.setBackground(this.g);
    if (paramBoolean) {
      ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.a, "alpha", new float[] { 0.0F, 0.75F, 1.0F });
      objectAnimator.setDuration(400L);
      objectAnimator.start();
    } 
    this.b.setVisibility(4);
    this.c.setVisibility(4);
    if (this.h != null)
      this.h.b(); 
  }
  
  private void d() {
    this.a = findViewById(2131758660);
    this.b = (TextView)findViewById(2131758662);
    this.c = (TextView)findViewById(2131758663);
    this.d = (LockUnlockButton)findViewById(2131758664);
  }
  
  private void d(boolean paramBoolean) {
    this.a.setBackground(this.f);
    if (paramBoolean) {
      ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.a, "alpha", new float[] { 0.0F, 0.75F, 1.0F });
      objectAnimator.setDuration(400L);
      objectAnimator.start();
    } 
    this.b.setVisibility(4);
    this.c.setVisibility(4);
    if (this.h != null)
      this.h.a(); 
  }
  
  public void a(boolean paramBoolean) {
    this.d.setProgressWithAnimation(50);
    b(paramBoolean);
  }
  
  public void setListener(mff parammff) {
    this.h = parammff;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\cancellation\CancelSeekBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */