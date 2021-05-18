package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import ejm;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kvq;
import lqn;
import mhj;

public class DocumentSuccessActivity extends grs {
  public static final String a = "coverage-name";
  
  public static final String b = "phone-assistance";
  
  private Button c;
  
  private String d;
  
  private List<kvq> e;
  
  private List<kvq> f;
  
  private String g;
  
  private List<kvq> a(List<kvq> paramList, String paramString) {
    paramString = mhj.m(paramString).toLowerCase();
    ArrayList<kvq> arrayList = new ArrayList();
    for (int i = 0; i < paramList.size(); i++) {
      if (paramString.contains(((kvq)paramList.get(i)).b().toLowerCase()))
        arrayList.add(paramList.get(i)); 
    } 
    return arrayList;
  }
  
  private void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839140));
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131298242);
    gpu.a((Activity)this, actionBar, getString(2131298242));
  }
  
  private void b() {
    this.c = (Button)findViewById(2131755733);
    this.c.setOnClickListener((View.OnClickListener)new lqn(this));
  }
  
  private void c() {
    if (this.f != null && this.f.size() > 0) {
      Intent intent = new Intent((Context)this, AssistanceSinisterActivity.class);
      intent.putExtra(AssistanceSinisterActivity.a, (new ejm()).b(this.f));
      intent.putExtra("phone-assistance", this.g);
      startActivity(intent);
      return;
    } 
    startActivity(new Intent((Context)this, MySinisterActivity.class));
  }
  
  private void d() {
    if (this.d != null) {
      this.e = new ArrayList<kvq>(Arrays.asList((Object[])(new ejm()).a(mhj.a((Context)this, "jsons/sinister/sinisterAssistance.json"), kvq[].class)));
      this.f = a(this.e, this.d);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968665);
    a();
    b();
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("coverage-name"))
      this.d = getIntent().getExtras().getString("coverage-name"); 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("phone-assistance"))
      this.g = getIntent().getExtras().getString("phone-assistance"); 
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\DocumentSuccessActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */