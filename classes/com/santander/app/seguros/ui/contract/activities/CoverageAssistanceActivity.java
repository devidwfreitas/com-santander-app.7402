package com.santander.app.seguros.ui.contract.activities;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import com.santander.app.seguros.ui.widgets.SegurosTextView;
import ejm;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kqd;
import kqm;
import kqn;
import kqo;
import kqp;
import ljk;
import ljl;
import ljm;
import lka;
import lkd;
import lko;
import lks;
import lms;
import lna;
import mhj;

public class CoverageAssistanceActivity extends grs {
  public static final String a = "code-product-key";
  
  public static final String b = "family-key";
  
  private String A;
  
  private String B;
  
  private List<kqo> C;
  
  private List<kqd> D;
  
  private List<kqp> E;
  
  private kqp F;
  
  private lka c;
  
  private lko d;
  
  private RecyclerView e;
  
  private RecyclerView f;
  
  private lna g;
  
  private lms w;
  
  private Button x;
  
  private SegurosTextView y;
  
  private SegurosTextView z;
  
  private kqp a(kqn paramkqn) {
    kqp kqp1 = null;
    for (int i = 0; i < this.E.size(); i++) {
      if (kqn.valueOf(((kqp)this.E.get(i)).a()) == paramkqn)
        kqp1 = this.E.get(i); 
    } 
    return kqp1;
  }
  
  private void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297580));
  }
  
  private void a(List<kqo> paramList, List<kqd> paramList1) {
    this.d = new lko(paramList, this.F.b());
    this.c = new lka(paramList1, this.F.c());
    LinearLayoutManager linearLayoutManager1 = new LinearLayoutManager((Context)this, 1, false);
    LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager((Context)this, 1, false);
    this.f.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager1);
    this.e.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager2);
    this.f.setNestedScrollingEnabled(false);
    this.e.setNestedScrollingEnabled(false);
    this.e.setAdapter((RecyclerView.Adapter)this.d);
    this.f.setAdapter((RecyclerView.Adapter)this.c);
    this.d.a((lks)new ljl(this));
    this.c.a((lkd)new ljm(this));
  }
  
  private void b() {
    this.y.setText((CharSequence)mhj.a((Context)this, "fonts/opensans_semibold.ttf", Integer.valueOf(getResources().getColor(2131624105)), getResources().getString(2131298828), new String[] { "2 (dois) anos" }));
    this.z.setText((CharSequence)mhj.a((Context)this, "fonts/opensans_semibold.ttf", Integer.valueOf(getResources().getColor(2131624105)), getResources().getString(2131298829), new String[] { "60 (sessenta) dias" }));
    this.e.setNestedScrollingEnabled(false);
    this.f.setNestedScrollingEnabled(false);
    a(this.C, this.D);
  }
  
  private void c() {
    this.f = (RecyclerView)findViewById(2131755550);
    this.e = (RecyclerView)findViewById(2131755549);
    this.y = (SegurosTextView)findViewById(2131755551);
    this.z = (SegurosTextView)findViewById(2131755552);
    this.x = (Button)findViewById(2131755553);
    this.x.setOnClickListener((View.OnClickListener)new ljk(this));
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968649);
    c();
    a();
    if (getIntent() != null && getIntent().getExtras().containsKey("code-product-key"))
      this.A = getIntent().getExtras().getString("code-product-key"); 
    if (kqm.INSTANCE.getmCoverages() != null) {
      this.C = kqm.INSTANCE.getmCoverages();
    } else {
      this.C = new ArrayList<kqo>();
    } 
    if (kqm.INSTANCE.getmAssistances() != null) {
      this.D = kqm.INSTANCE.getmAssistances();
    } else {
      this.D = new ArrayList<kqd>();
    } 
    if (getIntent() != null && getIntent().getExtras().containsKey("family-key"))
      this.B = getIntent().getExtras().getString("family-key"); 
    this.E = new ArrayList<kqp>(Arrays.asList((Object[])(new ejm()).a(mhj.a((Context)this.i, "jsons/contract/coveragesAndAssistances.json"), kqp[].class)));
    this.F = a(mhj.H(this.A));
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\contract\activities\CoverageAssistanceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */