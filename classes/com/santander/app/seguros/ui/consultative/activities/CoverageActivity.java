package com.santander.app.seguros.ui.consultative.activities;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import gkw;
import gpu;
import grs;
import is;
import java.util.ArrayList;
import java.util.List;
import kny;
import kps;
import kxl;
import kxn;
import kyw;
import lgn;
import lgo;
import lgp;
import lgq;
import lgr;
import lgs;
import lhz;
import lib;
import lif;

public class CoverageActivity extends grs {
  public static final String a = "coverage-id";
  
  public static final String b = "product-code";
  
  private MultiStateLayout c;
  
  private RecyclerView d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private List<kps> w;
  
  private List<kny> x;
  
  private void a(List<kny> paramList) {
    ArrayList<kny> arrayList = new ArrayList();
    for (kny kny : paramList) {
      if (Float.parseFloat(kny.a()) > 0.0F)
        arrayList.add(kny); 
    } 
    this.d.setHasFixedSize(true);
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this, 1, false));
    lhz lhz = new lhz(arrayList);
    this.d.setAdapter((RecyclerView.Adapter)lhz);
  }
  
  private void b() {
    this.c = (MultiStateLayout)findViewById(2131755547);
    this.d = (RecyclerView)findViewById(2131755548);
  }
  
  private void c() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297030));
  }
  
  private void d() {
    this.c.setState(aor.LOADING);
    (new kxn()).a(this.f, this.g, (kxl)new lgp(this), (kxl)new lgq(this));
  }
  
  private void e() {
    boolean bool1;
    boolean bool2;
    boolean bool3;
    boolean bool4;
    boolean bool5;
    boolean bool6;
    ArrayList<String> arrayList = new ArrayList();
    if (this.x != null && this.x.size() > 0) {
      arrayList.add("c");
      arrayList.addAll(this.x);
      bool3 = this.x.size();
      bool2 = arrayList.size() - 1;
      bool1 = true;
    } else {
      bool3 = false;
      bool2 = false;
      bool1 = false;
    } 
    if (this.w != null && this.w.size() > 0) {
      arrayList.add("a");
      bool4 = arrayList.size();
      arrayList.addAll(this.w);
      bool6 = this.w.size();
      bool5 = arrayList.size() - 1;
    } else {
      bool6 = false;
      bool5 = false;
      bool4 = false;
    } 
    lib lib = new lib(arrayList);
    lib.a(bool4, bool1, bool5, bool2, bool3, bool6);
    lib.a((lif)new lgr(this));
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this, 1, false));
    this.d.setAdapter((RecyclerView.Adapter)lib);
  }
  
  private gkw<is> f() {
    return (gkw<is>)new lgs(this);
  }
  
  public void a() {
    this.c.setState(aor.LOADING);
    (new kyw()).a(this.e, (kxl)new lgn(this), (kxl)new lgo(this));
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968648);
    paramBundle = getIntent().getExtras();
    if (paramBundle != null && paramBundle.containsKey("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"))
      this.e = paramBundle.getString("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"); 
    if (paramBundle != null && paramBundle.containsKey("coverage-id"))
      this.f = paramBundle.getString("coverage-id"); 
    if (paramBundle != null && paramBundle.containsKey("product-code"))
      this.g = paramBundle.getString("product-code"); 
    b();
    c();
    a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\consultative\activities\CoverageActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */