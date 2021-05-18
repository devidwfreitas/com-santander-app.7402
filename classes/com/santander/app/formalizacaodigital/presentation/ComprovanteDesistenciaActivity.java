package com.santander.app.formalizacaodigital.presentation;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import gpu;
import grs;
import igj;
import ihc;
import ihd;
import ihe;
import ihf;
import ihr;
import ihu;
import ihv;
import java.util.List;
import mxn;

public class ComprovanteDesistenciaActivity extends grs implements ihf {
  private RecyclerView a;
  
  private ihu b;
  
  private Button c;
  
  private Button d;
  
  private igj e;
  
  private int f;
  
  private String g;
  
  private NestedScrollView w;
  
  private void b() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getResources().getText(2131297491).toString());
  }
  
  private void c() {
    this.w = (NestedScrollView)findViewById(2131757769);
    this.a = (RecyclerView)findViewById(2131757772);
    this.c = (Button)findViewById(2131757773);
    this.c.setOnClickListener((View.OnClickListener)new ihc(this));
    this.d = (Button)findViewById(2131757774);
    this.d.setOnClickListener((View.OnClickListener)new ihd(this));
  }
  
  private View.OnClickListener d() {
    return (View.OnClickListener)new ihe(this);
  }
  
  public void a() {
    this.w.setVisibility(0);
  }
  
  public void a(String paramString1, String paramString2) {
    mxn.a((Activity)this, paramString1, paramString2, true, "OK", true);
  }
  
  public void a(List<igj> paramList) {
    this.a.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.a.setHasFixedSize(true);
    this.a.setAdapter((RecyclerView.Adapter)new ihr(paramList, d(), (Context)this));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968870);
    this.f = ((Integer)getIntent().getExtras().get("proposalId")).intValue();
    this.g = String.valueOf(getIntent().getExtras().get("proposalTitle"));
    b();
    c();
    this.b = (ihu)new ihv(this);
    this.b.a(this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\formalizacaodigital\presentation\ComprovanteDesistenciaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */