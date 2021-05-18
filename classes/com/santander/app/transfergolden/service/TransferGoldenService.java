package com.santander.app.transfergolden.service;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Service;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import mwe;
import mwf;
import mwg;
import mwi;
import mwj;
import mwk;
import mwl;
import mxb;

public class TransferGoldenService extends Service implements ClipboardManager.OnPrimaryClipChangedListener {
  public static final boolean a = false;
  
  private static final String b = "TransferGoldenService";
  
  private mxb c;
  
  private String d;
  
  private WindowManager e;
  
  private WindowManager.LayoutParams f;
  
  private ImageView g;
  
  private Handler h;
  
  private Runnable i;
  
  private ObjectAnimator a(float paramFloat) {
    ObjectAnimator objectAnimator = ObjectAnimator.ofPropertyValuesHolder(this.g, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.X, new float[] { paramFloat }), PropertyValuesHolder.ofFloat(View.SCALE_X, new float[] { 0.9F }), PropertyValuesHolder.ofFloat(View.SCALE_Y, new float[] { 0.9F }) });
    objectAnimator.setDuration(150L);
    return objectAnimator;
  }
  
  private boolean a() {
    boolean bool = mwe.a((Context)this);
    mwf mwf = new mwf(this.d);
    return (bool && mwf.a());
  }
  
  private void b() {
    this.h.removeCallbacks(this.i);
    Handler handler = this.h;
    mwg mwg = new mwg(this);
    this.i = (Runnable)mwg;
    handler.postDelayed((Runnable)mwg, 5000L);
  }
  
  private void c() {
    this.h.removeCallbacks(this.i);
    if (this.g != null)
      this.e.removeViewImmediate((View)this.g); 
    this.e = (WindowManager)getSystemService("window");
    this.g = new ImageView((Context)this);
    this.g.setImageResource(2130838662);
    h();
    f();
    b();
    this.e.addView((View)this.g, (ViewGroup.LayoutParams)d());
  }
  
  private WindowManager.LayoutParams d() {
    if (this.f == null) {
      this.f = new WindowManager.LayoutParams(-2, -2, 2002, 8, -3);
      this.f.gravity = 8388629;
    } 
    return this.f;
  }
  
  private void e() {
    if (this.g != null)
      this.e.removeViewImmediate((View)this.g); 
    this.h.removeCallbacks(this.i);
    this.i = null;
    this.g = null;
  }
  
  private void f() {
    this.g.addOnLayoutChangeListener((View.OnLayoutChangeListener)new mwi(this));
  }
  
  private void g() {
    this.h.removeCallbacks(this.i);
    ObjectAnimator objectAnimator = j();
    objectAnimator.addListener((Animator.AnimatorListener)new mwj(this));
    objectAnimator.start();
  }
  
  private void h() {
    this.g.setOnTouchListener((View.OnTouchListener)new mwk(this));
  }
  
  private ObjectAnimator i() {
    float f1 = this.g.getX();
    float f2 = TypedValue.applyDimension(1, 15.0F, getResources().getDisplayMetrics());
    this.g.setX(this.g.getWidth());
    this.g.setScaleX(0.0F);
    this.g.setScaleY(0.0F);
    return a(f1 + f2);
  }
  
  private ObjectAnimator j() {
    ObjectAnimator objectAnimator = ObjectAnimator.ofPropertyValuesHolder(this.g, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.X, new float[] { this.g.getWidth() }) });
    objectAnimator.setDuration(100L);
    return objectAnimator;
  }
  
  private void k() {
    this.g.setScaleX(0.9F);
    this.g.setScaleY(0.9F);
    ObjectAnimator objectAnimator = ObjectAnimator.ofPropertyValuesHolder(this.g, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.SCALE_X, new float[] { 1.0F }), PropertyValuesHolder.ofFloat(View.SCALE_Y, new float[] { 1.0F }) });
    objectAnimator.setDuration(150L);
    objectAnimator.setStartDelay(2000L);
    objectAnimator.setRepeatCount(1);
    objectAnimator.setRepeatMode(2);
    objectAnimator.addListener((Animator.AnimatorListener)new mwl(this));
    objectAnimator.start();
  }
  
  public IBinder onBind(Intent paramIntent) {
    return null;
  }
  
  public void onCreate() {
    Log.d("TransferGoldenService", "onCreate");
    mwe.b((Context)this);
    this.c = new mxb((Context)this);
    this.c.a(this);
    this.h = new Handler();
  }
  
  public void onDestroy() {
    super.onDestroy();
    e();
  }
  
  public void onPrimaryClipChanged() {
    mwe.b((Context)this);
    Log.d("TransferGoldenService", "onPrimaryClipChanged");
    CharSequence charSequence = this.c.a();
    if (charSequence != null) {
      this.d = charSequence.toString();
      Log.d("TransferGoldenService", "Text copy: " + this.d);
      if (a())
        c(); 
    } 
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    Log.d("TransferGoldenService", "onStartCommand");
    return 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transfergolden\service\TransferGoldenService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */