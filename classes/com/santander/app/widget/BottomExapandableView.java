package com.santander.app.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.ExpandableLayoutV2;
import flv;
import neu;
import nev;

public class BottomExapandableView extends FrameLayout {
  private FrameLayout a;
  
  private ImageView b;
  
  private LinearLayout c;
  
  private ImageView d;
  
  private TextView e;
  
  private ExpandableLayoutV2 f;
  
  private View g;
  
  private boolean h = false;
  
  public BottomExapandableView(@NonNull Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public BottomExapandableView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public BottomExapandableView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, @AttrRes int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a() {
    this.a.setOnClickListener(b());
    this.c.setOnClickListener(b());
    this.g.setOnClickListener(b());
  }
  
  private void a(AttributeSet paramAttributeSet) {
    a(inflate(getContext(), 2130969273, (ViewGroup)this));
    a();
    b(paramAttributeSet);
  }
  
  private void a(View paramView) {
    this.g = paramView.findViewById(2131758650);
    this.a = (FrameLayout)paramView.findViewById(2131758651);
    this.b = (ImageView)paramView.findViewById(2131758652);
    this.c = (LinearLayout)paramView.findViewById(2131758653);
    this.d = (ImageView)paramView.findViewById(2131756950);
    this.e = (TextView)paramView.findViewById(2131755789);
    this.f = (ExpandableLayoutV2)paramView.findViewById(2131756437);
  }
  
  private void a(boolean paramBoolean) {
    float[] arrayOfFloat = new float[2];
    if (paramBoolean) {
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = 1.0F;
    } else {
      arrayOfFloat[0] = 1.0F;
      arrayOfFloat[1] = 0.0F;
    } 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.g, View.ALPHA, arrayOfFloat);
    objectAnimator.setDuration(300L);
    objectAnimator.addListener((Animator.AnimatorListener)new nev(this, paramBoolean));
    objectAnimator.start();
  }
  
  private View.OnClickListener b() {
    return (View.OnClickListener)new neu(this);
  }
  
  private void b(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.BottomExapandableView);
    try {
      Drawable drawable = typedArray.getDrawable(0);
      if (drawable != null) {
        this.d.setImageDrawable(drawable);
      } else {
        this.d.setVisibility(8);
      } 
      String str = typedArray.getString(1);
      this.e.setText(str);
      return;
    } finally {
      typedArray.recycle();
    } 
  }
  
  private void c() {
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.b, View.ROTATION, new float[] { 180.0F });
    objectAnimator.setDuration(400L);
    objectAnimator.start();
  }
  
  private void d() {
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.b, View.ROTATION, new float[] { 0.0F });
    objectAnimator.setDuration(400L);
    objectAnimator.start();
  }
  
  public void setContentFragment(Fragment paramFragment) {
    ((AppCompatActivity)getContext()).getSupportFragmentManager().beginTransaction().replace(2131755109, paramFragment).commit();
  }
  
  public void setTitleText(String paramString) {
    this.e.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\widget\BottomExapandableView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */