package com.santander.app.recargatelefone.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.TabHost;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import fvn;
import gpu;
import grs;
import kgm;
import kgt;
import khk;
import khp;
import kik;
import kjk;

public class RecargaTelefoneActivity extends grs implements khk {
  private kik a;
  
  private kjk b;
  
  private khp c;
  
  private boolean d;
  
  private TabHost e;
  
  private String f = "RecargaTelefoneActivity";
  
  public View a(String paramString) {
    View view = getLayoutInflater().inflate(2130968906, null);
    ((TextView)view.findViewById(2131756716)).setText(paramString);
    return view;
  }
  
  public void a() {
    this.a = new kik();
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131755985, (Fragment)this.a);
    fragmentTransaction.commit();
    this.d = false;
  }
  
  public void a(int paramInt) {
    if (this.e != null)
      this.e.setCurrentTab(paramInt); 
  }
  
  public void a(fvn paramfvn) {
    this.b = new kjk();
    this.b.a(paramfvn);
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131755986, (Fragment)this.b);
    fragmentTransaction.commit();
    this.d = true;
  }
  
  public void a(kgm paramkgm) {
    this.b = new kjk();
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131755986, (Fragment)this.b);
    fragmentTransaction.commit();
    this.b.a(paramkgm);
    this.d = true;
  }
  
  public void b() {
    kgt kgt = new kgt();
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131755986, (Fragment)kgt);
    fragmentTransaction.commit();
    kgt.a(this.c.b());
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (this.d) {
      this.b.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    } 
    this.a.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed() {
    Intent intent = new Intent((Context)this, HomeLogadaActivity.class);
    intent.addFlags(67108864);
    startActivity(intent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968732);
    this.c = new khp(this);
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131298438));
    } 
    this.e = (TabHost)findViewById(2131755984);
    if (this.e != null) {
      this.e.setup();
      TabHost.TabSpec tabSpec1 = this.e.newTabSpec("tab1");
      tabSpec1.setIndicator(a(getString(2131298439)));
      tabSpec1.setContent(2131755985);
      TabHost.TabSpec tabSpec2 = this.e.newTabSpec("tab2");
      tabSpec2.setIndicator(a(getString(2131298444)));
      tabSpec2.setContent(2131755986);
      this.e.addTab(tabSpec1);
      this.e.addTab(tabSpec2);
      this.e.setOnTabChangedListener(this.c.a());
    } 
    this.c.a(getIntent());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\recargatelefone\presentation\RecargaTelefoneActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */