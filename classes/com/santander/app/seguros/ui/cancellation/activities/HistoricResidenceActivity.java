package com.santander.app.seguros.ui.cancellation.activities;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import ejm;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kqb;
import len;
import lev;
import mhj;

public class HistoricResidenceActivity extends grs {
  private TextView a;
  
  private RecyclerView b;
  
  private Button c;
  
  private NestedScrollView d;
  
  private String e;
  
  private String f;
  
  private lev g;
  
  private List<kqb> w;
  
  private void a() {
    try {
      ActionBar actionBar = getSupportActionBar();
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131296786));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void a(List<kqb> paramList) {
    if (paramList != null && paramList.size() > 0) {
      this.g = new lev(paramList);
      LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this, 1, false);
      this.b.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
      this.b.setAdapter((RecyclerView.Adapter)this.g);
      this.b.setNestedScrollingEnabled(false);
    } 
  }
  
  private void b() {
    this.d.smoothScrollTo(0, 0);
    this.e = "Sua residência na " + this.f + " já foi protegida em diversas situações";
    this.a.setText((CharSequence)mhj.a((Context)this, "fonts/opensans_semibold.ttf", Integer.valueOf(getResources().getColor(2131624105)), this.e, new String[] { this.f }));
    a(this.w);
  }
  
  private void c() {
    this.a = (TextView)findViewById(2131755804);
    this.b = (RecyclerView)findViewById(2131755805);
    this.c = (Button)findViewById(2131755806);
    this.c.setOnClickListener((View.OnClickListener)new len(this));
    this.d = (NestedScrollView)findViewById(2131755803);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968686);
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("residence-address"))
      this.f = getIntent().getExtras().getString("residence-address"); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("list-historic-residence"))
      this.w = new ArrayList<kqb>(Arrays.asList((Object[])(new ejm()).a(getIntent().getExtras().getString("list-historic-residence"), kqb[].class))); 
    a();
    c();
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\cancellation\activities\HistoricResidenceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */