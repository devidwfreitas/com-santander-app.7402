package com.santander.app.seguros.ui.widgets.liquidindicator;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import mfl;
import mfm;
import mfn;

public class LiquidIndicatorItem extends FrameLayout {
  private View a;
  
  private View b;
  
  private ImageView c;
  
  private TextView d;
  
  public LiquidIndicatorItem(@NonNull Context paramContext) {
    super(paramContext);
    d();
  }
  
  public LiquidIndicatorItem(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  private void d() {
    LayoutInflater.from(getContext()).inflate(2130969314, (ViewGroup)this);
    g();
    this.c.setImageDrawable(getResources().getDrawable(mfn.DEFAULT_GRAY.getRes()));
  }
  
  private void e() {
    if (this.c.getScaleX() < 1.4F && this.c.getScaleY() < 1.4F) {
      ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(this.c, View.SCALE_X, new float[] { 1.0F, 1.4F });
      ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(this.c, View.SCALE_Y, new float[] { 1.0F, 1.4F });
      AnimatorSet animatorSet = (new AnimatorSet()).setDuration(400L);
      animatorSet.playTogether(new Animator[] { (Animator)objectAnimator1, (Animator)objectAnimator2 });
      animatorSet.addListener((Animator.AnimatorListener)new mfl(this));
      animatorSet.setInterpolator((TimeInterpolator)new LinearInterpolator());
      animatorSet.start();
    } 
  }
  
  private void f() {
    if (this.c.getScaleY() > 1.0F && this.c.getScaleX() > 1.0F) {
      ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(this.c, View.SCALE_X, new float[] { 1.4F, 1.0F });
      ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(this.c, View.SCALE_Y, new float[] { 1.4F, 1.0F });
      AnimatorSet animatorSet = (new AnimatorSet()).setDuration(400L);
      animatorSet.playTogether(new Animator[] { (Animator)objectAnimator1, (Animator)objectAnimator2 });
      animatorSet.addListener((Animator.AnimatorListener)new mfm(this));
      animatorSet.setInterpolator((TimeInterpolator)new LinearInterpolator());
      animatorSet.start();
    } 
  }
  
  private void g() {
    this.c = (ImageView)findViewById(2131756042);
    this.d = (TextView)findViewById(2131755914);
    this.a = findViewById(2131758916);
    this.b = findViewById(2131758917);
  }
  
  public void a() {
    this.c.setImageResource(mfn.CHECK_GREEN.getRes());
    f();
  }
  
  public void a(mfn parammfn) {
    if (parammfn != null) {
      this.c.setImageResource(mfn.access$000(parammfn));
      if (parammfn == mfn.DEFAULT_GRAY || parammfn == mfn.CHECK_GREEN) {
        f();
        return;
      } 
    } else {
      return;
    } 
    e();
  }
  
  public void b() {
    this.a.setVisibility(0);
  }
  
  public void b(mfn parammfn) {
    if (parammfn != null) {
      this.c.setImageResource(mfn.access$000(parammfn));
      if (parammfn == mfn.DEFAULT_GRAY || parammfn == mfn.CHECK_GREEN) {
        f();
        return;
      } 
    } else {
      return;
    } 
    e();
  }
  
  public void c() {
    this.b.setVisibility(0);
  }
  
  public void setText(String paramString) {
    this.d.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\liquidindicator\LiquidIndicatorItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */