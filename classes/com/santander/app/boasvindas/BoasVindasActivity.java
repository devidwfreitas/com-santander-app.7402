package com.santander.app.boasvindas;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import fwy;
import fwz;
import fxc;
import fxd;
import fxe;
import fxf;
import fxg;
import grs;

public class BoasVindasActivity extends grs implements fxe {
  public static final int a = 9920;
  
  private static final String b = "BoasVindasActivity";
  
  private RelativeLayout c;
  
  private LinearLayout d;
  
  private TextView e;
  
  private LottieAnimationView f;
  
  private int g;
  
  private View.OnClickListener w = (View.OnClickListener)new fxc(this);
  
  private View.OnClickListener x = (View.OnClickListener)new fxd(this);
  
  private void d() {
    this.d.removeAllViews();
    for (int i = 0; i < fxf.a(); i++) {
      DotView dotView = new DotView((Context)this);
      this.d.addView((View)dotView);
    } 
  }
  
  private void e() {
    for (int i = 0; i < this.d.getChildCount(); i++) {
      DotView dotView = (DotView)this.d.getChildAt(i);
      if (i == this.g) {
        dotView.a();
      } else {
        dotView.b();
      } 
    } 
  }
  
  private void f() {
    fwy.a();
    this.g = 0;
    g();
  }
  
  private void g() {
    fxg fxg = fxf.a(this.g);
    getSupportFragmentManager().beginTransaction().replace(2131755337, (Fragment)fxg).commit();
    e();
  }
  
  private void h() {
    a();
    c();
  }
  
  private void i() {
    fwy.b();
    setResult(-1);
    finish();
  }
  
  public void a() {
    this.f.h();
  }
  
  public void b() {
    fwz.a((View)this.c);
  }
  
  public void c() {
    this.e.setVisibility(4);
  }
  
  public void onBackPressed() {
    fwy.a(this.g + 1);
    setResult(0);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (fxf.b()) {
      finish();
      return;
    } 
    setContentView(2130968617);
    this.c = (RelativeLayout)findViewById(2131755338);
    this.d = (LinearLayout)findViewById(2131755340);
    this.e = (TextView)findViewById(2131755339);
    this.f = (LottieAnimationView)findViewById(2131755341);
    this.e.setOnClickListener(this.w);
    this.f.setOnClickListener(this.x);
    d();
    f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\boasvindas\BoasVindasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */