package com.santander.app.components.view.cardLayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.text.Spanned;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.SantanderTextView;
import gsx;
import gsy;
import gsz;
import gta;
import java.util.ArrayList;

public class CardLayout extends LinearLayout {
  private ArrayList<gta> A = new ArrayList<gta>();
  
  private LinearLayout B;
  
  private LinearLayout C;
  
  private SantanderTextView D;
  
  private LinearLayout.LayoutParams E = new LinearLayout.LayoutParams(-1, -2);
  
  private gsz F = null;
  
  private AnimatorListenerAdapter G = (AnimatorListenerAdapter)new gsx(this);
  
  private AnimatorListenerAdapter H = (AnimatorListenerAdapter)new gsy(this);
  
  private final int a = a(100);
  
  private final int b = a(60);
  
  private final int c = a(50);
  
  private final int d = a(45);
  
  private final int e = a(25);
  
  private final int f = a(20);
  
  private final int g = a(15);
  
  private final int h = a(10);
  
  private final int i = a(5);
  
  private Context j;
  
  private int k;
  
  private int l;
  
  private int m;
  
  private int n;
  
  private int o = 0;
  
  private int p;
  
  private int q = 0;
  
  private int r = 0;
  
  private int s = 0;
  
  private int t = 0;
  
  private int u = -1;
  
  private float v;
  
  private float w;
  
  private float x;
  
  private float y;
  
  private gta z;
  
  public CardLayout(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  public CardLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public CardLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  @TargetApi(21)
  public CardLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext);
  }
  
  private int a(int paramInt) {
    DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
    float f = paramInt;
    return Math.round(displayMetrics.xdpi / 160.0F * f);
  }
  
  private LinearLayout a(gta paramgta, int paramInt, boolean paramBoolean) {
    Spanned spanned;
    String str;
    LinearLayout linearLayout2 = new LinearLayout(this.j);
    ImageView imageView = new ImageView(this.j);
    if (paramgta.h() != null) {
      imageView.setImageBitmap(paramgta.h());
    } else {
      imageView.setImageResource(paramgta.g());
    } 
    LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-2, this.c);
    layoutParams1.setMargins(this.h, this.h, this.h, this.h);
    imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
    SantanderTextView santanderTextView = new SantanderTextView(this.j);
    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
    santanderTextView.setPadding(this.i, this.i, this.g, this.i);
    santanderTextView.setMaxLines(3);
    santanderTextView.setLayoutParams((ViewGroup.LayoutParams)layoutParams2);
    santanderTextView.setGravity(16);
    if (paramgta.m() != null) {
      spanned = paramgta.m();
    } else {
      str = spanned.c();
    } 
    santanderTextView.setText(str);
    LinearLayout linearLayout1 = new LinearLayout(this.j);
    linearLayout1.setBackgroundResource(2130837687);
    linearLayout1.setOrientation(0);
    linearLayout1.setGravity(16);
    linearLayout1.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, this.b));
    float f = 1.0F - paramInt / 50.0F;
    linearLayout1.setScaleX(f);
    linearLayout1.setScaleX(f);
    layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
    if (paramBoolean) {
      layoutParams2.setMargins(this.h, (this.h + this.i) * paramInt, this.h, 0);
      linearLayout2.setLayoutParams((ViewGroup.LayoutParams)layoutParams2);
      linearLayout1.addView((View)imageView);
      linearLayout1.addView((View)santanderTextView);
      linearLayout2.addView((View)linearLayout1);
      linearLayout2.setId(this.t);
      this.t--;
      return linearLayout2;
    } 
    layoutParams2.setMargins(this.h, -this.b - this.h, this.h, 0);
    linearLayout2.setLayoutParams((ViewGroup.LayoutParams)layoutParams2);
    linearLayout1.addView((View)imageView);
    linearLayout1.addView((View)santanderTextView);
    linearLayout2.addView((View)linearLayout1);
    linearLayout2.setId(this.t);
    this.t--;
    return linearLayout2;
  }
  
  private void a(Context paramContext) {
    int i;
    int j;
    int k;
    if (getVisibility() == 8)
      setVisibility(0); 
    Display display = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    Point point = new Point();
    display.getSize(point);
    this.p = point.x;
    this.j = paramContext;
    removeAllViews();
    this.t = this.s - 1;
    setGravity(16);
    setOrientation(0);
    setLayoutParams((ViewGroup.LayoutParams)this.E);
    if (this.s <= 0) {
      setVisibility(8);
      return;
    } 
    this.r = this.s - 1;
    LinearLayout linearLayout = new LinearLayout(getContext());
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    linearLayout.setOrientation(1);
    if (this.u < 0 || this.u > this.s) {
      k = this.s;
    } else {
      k = this.u;
    } 
    if (this.s > k) {
      j = this.s;
      i = 0;
      j -= k;
    } else {
      i = 0;
      j = 0;
    } 
    while (j < this.s) {
      boolean bool;
      gta gta1 = this.A.get(j);
      if (!i) {
        bool = true;
      } else {
        bool = false;
      } 
      linearLayout.addView((View)a(gta1, k - 1 - i, bool));
      j++;
      i++;
    } 
    addView((View)linearLayout);
    c();
    this.B = linearLayout;
    this.x = linearLayout.getChildAt(linearLayout.getChildCount() - 1).getX();
    this.y = this.D.getX();
  }
  
  private void b() {
    Log.v("CardLayout", "nextCardData");
    if (this.s > 0) {
      int i;
      this.C = null;
      View view = this.B.findViewById(this.t);
      int k = this.B.getChildCount();
      int j = this.r - this.u;
      if (j < 0 && this.u > this.s) {
        i = this.r;
      } else {
        i = j;
        if (j < 0)
          i = j + this.s; 
      } 
      if (view != null) {
        this.B.removeView(view);
        LinearLayout linearLayout = a(this.A.get(i), k, false);
        linearLayout.setAlpha(0.0F);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)linearLayout.getLayoutParams();
        layoutParams.setMargins(this.h, (k - 1) * this.h, this.h, 0);
        this.B.addView((View)linearLayout, 0, (ViewGroup.LayoutParams)layoutParams);
        this.r--;
        if (this.r < 0)
          this.r = this.s - 1; 
        if (this.u >= this.s) {
          i = this.s;
        } else {
          i = this.u;
        } 
      } else {
        j = i + 1;
        i = j;
        if (j >= this.s)
          i = this.s - 1; 
        if (k < this.u && this.u <= this.s) {
          LinearLayout linearLayout = a(this.A.get(i), this.s - 1, false);
          linearLayout.setAlpha(0.0F);
          LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)linearLayout.getLayoutParams();
          layoutParams.setMargins(this.h, (this.s - 1) * this.h, this.h, 0);
          this.B.addView((View)linearLayout, 0, (ViewGroup.LayoutParams)layoutParams);
          i = this.u;
        } else {
          i = this.s;
        } 
      } 
      for (j = 0; j < i; j++) {
        LinearLayout linearLayout1 = (LinearLayout)this.B.getChildAt(j);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)linearLayout1.getLayoutParams();
        if (j == 0) {
          layoutParams.setMargins(this.h, (i - 1) * (this.h + this.i), this.h, 0);
        } else {
          layoutParams.setMargins(this.h, -this.b - this.h, this.h, 0);
        } 
        linearLayout1.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        LinearLayout linearLayout2 = (LinearLayout)linearLayout1.getChildAt(0);
        float f = 1.0F - (i - 1 - j) / 50.0F;
        if (j == 0)
          linearLayout1.animate().alpha(1.0F); 
        linearLayout2.animate().scaleX(f).scaleY(f);
      } 
      this.z = this.A.get(this.r);
      if (this.F != null)
        this.F.d(this.z); 
      c();
    } 
  }
  
  private void c() {
    if (this.D != null) {
      LinearLayout linearLayout1 = (LinearLayout)getChildAt(1);
      LinearLayout linearLayout2 = (LinearLayout)getChildAt(2);
      removeView((View)linearLayout1);
      removeView((View)linearLayout2);
      removeView((View)this.D);
    } 
    if (this.s > 0) {
      int i;
      gta gta1 = this.A.get(this.r);
      ImageView imageView = new ImageView(this.j);
      imageView.setImageResource(gta1.j());
      imageView.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(this.c, this.c));
      TextView textView2 = new TextView(this.j);
      textView2.setMaxLines(1);
      textView2.setText("");
      textView2.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
      LinearLayout linearLayout1 = new LinearLayout(this.j);
      linearLayout1.setGravity(17);
      LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(this.c, -2);
      layoutParams3.setMargins(-this.c - this.p, this.h, 0, this.h);
      linearLayout1.setLayoutParams((ViewGroup.LayoutParams)layoutParams3);
      linearLayout1.addView((View)imageView);
      linearLayout1.addView((View)textView2);
      imageView = new ImageView(this.j);
      LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.c, this.c);
      layoutParams2.setMargins(0, this.h, 0, this.h);
      imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams2);
      imageView.setImageResource(gta1.k());
      TextView textView1 = new TextView(this.j);
      textView1.setMaxLines(1);
      textView1.setText("");
      textView1.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
      LinearLayout linearLayout2 = new LinearLayout(this.j);
      linearLayout2.setGravity(17);
      layoutParams3 = new LinearLayout.LayoutParams(this.c, -2);
      layoutParams3.setMargins(this.p + this.e, this.h, 0, this.h);
      linearLayout2.setLayoutParams((ViewGroup.LayoutParams)layoutParams3);
      linearLayout2.addView((View)imageView);
      linearLayout2.addView((View)textView1);
      if (this.s >= 3) {
        i = -this.f - this.i * 3;
      } else {
        i = -this.f - this.i * this.s;
      } 
      SantanderTextView santanderTextView = new SantanderTextView(this.j);
      LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(this.f, this.f);
      santanderTextView.setAlpha(0.0F);
      santanderTextView.setBackgroundResource(2130837632);
      santanderTextView.setTextSize(14.0F);
      santanderTextView.setText(String.valueOf(this.s));
      santanderTextView.setGravity(17);
      layoutParams1.setMargins(-this.a, i, 0, 0);
      santanderTextView.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
      santanderTextView.setTextColor(-1);
      santanderTextView.animate().alpha(1.0F);
      addView((View)linearLayout1);
      addView((View)linearLayout2);
      addView((View)santanderTextView);
      this.D = santanderTextView;
      this.v = linearLayout1.getX();
      this.w = linearLayout2.getX();
    } 
  }
  
  public void a() {
    removeAllViews();
    this.A.clear();
  }
  
  public boolean a(gta paramgta) {
    boolean bool = this.A.add(paramgta);
    if (bool) {
      this.s = this.A.size();
      a(getContext());
      this.z = this.A.get(this.s - 1);
    } 
    return bool;
  }
  
  public boolean a(ArrayList<gta> paramArrayList) {
    boolean bool = this.A.addAll(paramArrayList);
    if (bool) {
      this.s = this.A.size();
      a(getContext());
      this.z = this.A.get(this.s - 1);
      if (this.F != null)
        this.F.d(this.z); 
    } 
    return bool;
  }
  
  public boolean b(gta paramgta) {
    boolean bool = this.A.remove(paramgta);
    if (bool) {
      this.s = this.A.size();
      this.r--;
      if (this.r < 0)
        this.r = this.s - 1; 
      c();
      if (this.B == null) {
        a(getContext());
        return bool;
      } 
    } else {
      return bool;
    } 
    if (this.s > 0) {
      this.B.removeView((View)this.C);
      b();
      return bool;
    } 
    setVisibility(8);
    this.B = null;
    return bool;
  }
  
  public boolean b(ArrayList<gta> paramArrayList) {
    this.A.clear();
    return a(paramArrayList);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    int j;
    int k;
    int m;
    int n;
    Log.v("CardLayout", "onTouchEvent");
    Log.v("CardLayout", "onTouchEvent - MIN_DISTANCE : " + this.o);
    int i = (int)paramMotionEvent.getRawX();
    this.o = this.p / 2;
    this.C = (LinearLayout)this.B.getChildAt(this.B.getChildCount() - 1);
    this.t = this.C.getId();
    LinearLayout linearLayout1 = (LinearLayout)getChildAt(1);
    LinearLayout linearLayout2 = (LinearLayout)getChildAt(2);
    switch (paramMotionEvent.getAction() & 0xFF) {
      default:
        return true;
      case 0:
        this.k = i - (int)this.C.getX();
        this.l = i - (int)this.D.getX();
        this.m = i - (int)linearLayout1.getX();
        this.n = i - (int)linearLayout2.getX();
        return true;
      case 2:
        this.q = i - this.k;
        j = this.l;
        k = this.m;
        m = this.c;
        n = this.n;
        linearLayout1.setX((i - k - m));
        linearLayout2.setX((i - n));
        this.C.setX(this.q);
        this.D.setX((i - j));
        return true;
      case 1:
        break;
    } 
    if (this.q > 0 && this.q > this.o) {
      this.C.animate().translationX(this.p).setInterpolator((TimeInterpolator)new LinearInterpolator()).setListener((Animator.AnimatorListener)this.G);
      linearLayout1.animate().translationX(this.p);
      linearLayout2.animate().translationX(this.p);
      this.D.animate().translationX(this.p);
      this.q = 0;
      return true;
    } 
    if (-this.q > this.o) {
      this.C.animate().translationX(-this.p).setInterpolator((TimeInterpolator)new LinearInterpolator()).setListener((Animator.AnimatorListener)this.H);
      linearLayout1.animate().translationX(-this.p);
      linearLayout2.animate().translationX(-this.p);
      this.D.animate().translationX(-this.p);
      this.q = 0;
      return true;
    } 
    this.C.animate().translationX(this.x);
    linearLayout1.animate().translationX(this.v);
    linearLayout2.animate().translationX(this.w);
    this.D.animate().translationX(this.y);
    if (paramMotionEvent.getEventTime() - paramMotionEvent.getDownTime() <= 150L && this.F != null)
      this.F.c(this.z); 
    this.q = 0;
    return true;
  }
  
  public void setContractor(gsz paramgsz) {
    this.F = paramgsz;
  }
  
  public void setNumberOfDisplayedCards(int paramInt) {
    this.u = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\cardLayout\CardLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */