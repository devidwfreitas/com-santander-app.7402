package com.santander.app.seguros.ui.consultative.activities;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import ejm;
import gpu;
import grs;
import kpv;
import kqa;
import kxl;
import kxv;
import kxw;
import lgf;
import lgg;
import lgh;
import lho;
import lhs;
import lhv;
import lmu;
import lmz;
import mgy;

public class BeneficiariesActivity extends grs implements lmz {
  public static String a = "beneficiaries-scp";
  
  public static String b = "certificate-id-key";
  
  private MultiStateLayout c;
  
  private RecyclerView d;
  
  private String e;
  
  private String f;
  
  private kpv g;
  
  private kxv w;
  
  private lho x;
  
  private lhs y;
  
  private void a(kqa paramkqa) {
    lmu lmu = lmu.a(paramkqa, this.f);
    lmu.a(this);
    lmu.show(getFragmentManager(), "dialog-fragment");
  }
  
  private void b() {
    this.c = (MultiStateLayout)findViewById(2131755279);
    this.d = (RecyclerView)findViewById(2131755292);
  }
  
  private void c() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131296582));
  }
  
  private void d() {
    this.d.setHasFixedSize(true);
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this, 1, false));
    this.d.addItemDecoration((RecyclerView.ItemDecoration)new mgy((Context)this, true, true, 16, 12));
    if (this.g != null && this.g.a() != null && this.g.a().size() > 0) {
      f();
      return;
    } 
    e();
  }
  
  private void e() {
    this.c.setState(aor.LOADING);
    this.w.b(this.f, (kxl)new lgf(this), (kxl)new lgg(this));
  }
  
  private void f() {
    this.y = new lhs(this.g);
    this.y.a((lhv)new lgh(this));
    this.d.setAdapter((RecyclerView.Adapter)this.y);
  }
  
  public void a() {
    e();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968613);
    paramBundle = getIntent().getExtras();
    if (paramBundle != null && paramBundle.containsKey("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"))
      this.e = paramBundle.getString("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"); 
    if (paramBundle != null && paramBundle.containsKey(b)) {
      this.f = paramBundle.getString(b);
    } else {
      this.f = "";
    } 
    if (paramBundle != null && paramBundle.containsKey(a))
      this.g = (kpv)(new ejm()).a(paramBundle.getString(a), kpv.class); 
    this.w = (kxv)new kxw();
    b();
    d();
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\consultative\activities\BeneficiariesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */