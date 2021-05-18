package com.santander.app.emprestimo.creditounificado.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.transition.TransitionManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import bfj;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderTextView;
import grs;
import hue;
import huf;
import huk;
import hvx;
import hvy;
import hvz;
import hwa;
import hwm;
import hwn;
import hxn;
import hys;
import java.util.List;
import mxn;

public class CPUSimulacaoActivity extends grs implements AdapterView.OnItemSelectedListener, hwa {
  private LinearLayout A;
  
  private ImageView B;
  
  private SantanderButtonView C;
  
  private LinearLayout D;
  
  private hwm E;
  
  private Dialog F;
  
  private TextView G;
  
  private NestedScrollView a;
  
  private SantanderTextView b;
  
  private SantanderTextView c;
  
  private SantanderTextView d;
  
  private FrameLayout e;
  
  private RecyclerView f;
  
  private FrameLayout g;
  
  private Spinner w;
  
  private SantanderTextView x;
  
  private SantanderTextView y;
  
  private Spinner z;
  
  private void b(hxn paramhxn) {
    bfj bfj = new bfj();
    bfj.a("Sua dívida total em ");
    bfj.a(paramhxn.j(), new StyleSpan(1));
    bfj.a(" é:");
    bfj.a("\n");
    bfj.a("\n");
    this.c.setText((CharSequence)bfj);
  }
  
  private void c(hxn paramhxn) {
    bfj bfj = new bfj();
    bfj.a(paramhxn.z(), new Object[] { new ForegroundColorSpan(ContextCompat.getColor((Context)this, 2131624207)), new AbsoluteSizeSpan(20, true) });
    bfj.a(" a.m.", new Object[] { new ForegroundColorSpan(ContextCompat.getColor((Context)this, 2131623937)), new AbsoluteSizeSpan(18, true) });
    this.y.setText((CharSequence)bfj);
  }
  
  private void g() {
    this.a = (NestedScrollView)findViewById(2131755570);
    this.b = (SantanderTextView)findViewById(2131755597);
    this.c = (SantanderTextView)findViewById(2131755594);
    this.d = (SantanderTextView)findViewById(2131755595);
    this.e = (FrameLayout)findViewById(2131755598);
    this.f = (RecyclerView)findViewById(2131755596);
    this.g = (FrameLayout)findViewById(2131755601);
    this.w = (Spinner)findViewById(2131755604);
    this.x = (SantanderTextView)findViewById(2131755605);
    this.y = (SantanderTextView)findViewById(2131755606);
    this.G = (TextView)findViewById(2131755607);
    this.z = (Spinner)findViewById(2131755603);
    this.A = (LinearLayout)findViewById(2131755600);
    this.B = (ImageView)findViewById(2131755599);
    this.C = (SantanderButtonView)findViewById(2131755224);
    this.D = (LinearLayout)findViewById(2131757834);
    this.D.setVisibility(8);
    if (Build.VERSION.SDK_INT > 19) {
      this.G.setCompoundDrawablesWithIntrinsicBounds(2130838403, 0, 0, 0);
      this.G.setCompoundDrawablePadding(10);
    } 
    if (Build.VERSION.SDK_INT > 19) {
      this.G.setCompoundDrawablesWithIntrinsicBounds(2130838403, 0, 0, 0);
      this.G.setCompoundDrawablePadding(10);
    } 
    findViewById(2131755602).setRotation(270.0F);
    a();
    this.e.setOnClickListener((View.OnClickListener)new hvx(this));
    this.g.setOnClickListener((View.OnClickListener)new hvy(this));
    this.C.setOnClickListener((View.OnClickListener)new hvz(this));
  }
  
  public void a() {
    boolean bool;
    TransitionManager.beginDelayedTransition((ViewGroup)this.a);
    if (this.A.getVisibility() == 0) {
      bool = true;
    } else {
      bool = false;
    } 
    ViewPropertyAnimator viewPropertyAnimator = this.B.animate();
    if (bool) {
      viewPropertyAnimator.rotation(0.0F);
      this.A.setVisibility(8);
    } else {
      viewPropertyAnimator.rotation(180.0F);
      this.A.setVisibility(0);
    } 
    viewPropertyAnimator.setDuration(100L).start();
  }
  
  public void a(int paramInt) {
    this.w.setSelection(paramInt);
  }
  
  public void a(hxn paramhxn) {
    this.a.setVisibility(0);
    b(paramhxn);
    c(paramhxn);
    this.d.setText(paramhxn.d());
    this.x.setText(paramhxn.e());
  }
  
  public void a(String paramString, boolean paramBoolean) {
    hys.a((Activity)this, paramString, paramBoolean);
  }
  
  public void a(List<huk> paramList) {
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    linearLayoutManager.setAutoMeasureEnabled(true);
    this.f.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.f.setAdapter((RecyclerView.Adapter)new hue(paramList));
    this.f.addItemDecoration((RecyclerView.ItemDecoration)new huf());
  }
  
  public void b() {
    startActivity(new Intent((Context)this, CPUDividaDetailActivity.class));
  }
  
  public void b(int paramInt) {
    this.z.setSelection(paramInt);
  }
  
  public void b(List<String> paramList) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, paramList);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.w.setAdapter((SpinnerAdapter)arrayAdapter);
    this.w.setOnItemSelectedListener(this);
  }
  
  public void c() {
    this.F = mxn.b((Activity)this);
  }
  
  public void c(List<String> paramList) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, paramList);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.z.setAdapter((SpinnerAdapter)arrayAdapter);
    this.z.setOnItemSelectedListener(this);
  }
  
  public void d() {
    if (this.F != null)
      this.F.dismiss(); 
  }
  
  public void e() {
    this.D.setVisibility(0);
    this.a.setVisibility(8);
  }
  
  public void f() {
    startActivity(new Intent((Context)this, CPUContratacaoActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968655);
    this.E = (hwm)new hwn(this);
    c(2131297041);
    g();
    this.a.setVisibility(8);
    this.E.a(getIntent());
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.E.d();
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    String str = (String)paramAdapterView.getItemAtPosition(paramInt);
    if (paramAdapterView == this.w) {
      this.E.a(str);
      return;
    } 
    if (paramAdapterView == this.z) {
      this.E.b(str);
      return;
    } 
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditounificado\presentation\CPUSimulacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */