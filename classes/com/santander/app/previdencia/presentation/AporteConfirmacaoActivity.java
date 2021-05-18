package com.santander.app.previdencia.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gpu;
import grs;
import hat;
import kdg;
import keh;
import kei;
import kej;
import kfl;
import kfm;
import mxn;
import nau;

public class AporteConfirmacaoActivity extends grs implements kej, nau {
  private int A = 1;
  
  private Dialog B;
  
  private Activity C;
  
  private RelativeLayout D;
  
  private LinearLayout E;
  
  private CheckBox F;
  
  private int G;
  
  private kfl a;
  
  private Button b;
  
  private Button c;
  
  private kdg d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private SantanderTextView z;
  
  private View.OnClickListener p() {
    return (View.OnClickListener)new keh(this);
  }
  
  private View.OnClickListener q() {
    return (View.OnClickListener)new kei(this);
  }
  
  public void a() {
    this.D = (RelativeLayout)findViewById(2131755260);
    this.E = (LinearLayout)findViewById(2131756678);
    this.D.setVisibility(0);
    this.E.setVisibility(8);
    this.e = (TextView)findViewById(2131755263);
    this.f = (TextView)findViewById(2131755265);
    this.w = (TextView)findViewById(2131755267);
    this.x = (TextView)findViewById(2131755269);
    this.y = (TextView)findViewById(2131755271);
    this.F = (CheckBox)findViewById(2131755273);
    this.z = (SantanderTextView)findViewById(2131755274);
    this.b = (Button)findViewById(2131755272);
    this.b.setOnClickListener(p());
    this.c = (Button)findViewById(2131755275);
    this.c.setOnClickListener(q());
    this.a.a(n());
    e();
  }
  
  public void a(int paramInt) {
    this.z.setText(paramInt);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.a.b();
  }
  
  public void a(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, true, "OK");
  }
  
  public Intent b() {
    return getIntent();
  }
  
  public void c() {
    Intent intent = new Intent((Context)this, CondicoesAporteActivity.class);
    intent.putExtra("code", n());
    startActivityForResult(intent, 9);
  }
  
  public kdg d() {
    return this.d;
  }
  
  public void e() {
    this.e.setText(this.d.f());
    this.f.setText(this.d.g());
    this.x.setText(this.d.b());
    this.y.setText(this.a.d());
  }
  
  public void f() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131756678) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(this.A);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131756678, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
    this.D.setVisibility(8);
    this.E.setVisibility(0);
  }
  
  public void g() {
    this.B = mxn.b((Activity)this);
  }
  
  public void h() {
    if (this.B != null && this.B.isShowing()) {
      this.B.dismiss();
      this.B.cancel();
      this.B = null;
    } 
  }
  
  public void i() {
    hat.d().a((Activity)this, null, true, true);
  }
  
  public Activity j() {
    return this.C;
  }
  
  public CheckBox k() {
    return this.F;
  }
  
  public String n() {
    return this.d.a();
  }
  
  public Button o() {
    return this.b;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.F.setChecked(true);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setElevation(0.0F);
    gpu.a((Activity)this, actionBar, getString(2131296461));
    setContentView(2130968608);
    this.d = (kdg)getIntent().getSerializableExtra("aporte_informacao");
    this.C = (Activity)this;
    this.a = (kfl)new kfm(this);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\previdencia\presentation\AporteConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */