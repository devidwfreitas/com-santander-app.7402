package com.santander.app.localizadoragencias.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.RecyclerView;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.LatLng;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.dropuplist.ListDropUp;
import gpu;
import grs;
import gtt;
import gtu;
import java.util.ArrayList;
import java.util.List;
import jlk;
import jlq;
import jlz;
import jma;
import jmb;
import jmc;
import jmd;
import jme;
import jmm;
import jmn;
import mxn;

public class MapaLocalizadorAgenciaActivity extends grs implements gtt, jme {
  private jmm a;
  
  private FloatingActionButton b;
  
  private FloatingActionButton c;
  
  private ListDropUp d;
  
  private LinearLayout e;
  
  private SantanderButtonView f;
  
  private SantanderButtonView g;
  
  private gtu w;
  
  private Activity x;
  
  private Dialog y;
  
  public View.OnClickListener a(LatLng paramLatLng) {
    return (View.OnClickListener)new jlz(this, paramLatLng);
  }
  
  public View.OnClickListener a(String paramString) {
    return (View.OnClickListener)new jma(this, paramString);
  }
  
  public void a() {}
  
  public void a(Location paramLocation) {
    this.w.a(paramLocation);
  }
  
  public void a(List<jlq> paramList) {
    if (paramList != null && paramList.size() > 0) {
      this.d.setVisibility(0);
      this.w.a(paramList);
      return;
    } 
    this.d.setVisibility(8);
  }
  
  public void b() {}
  
  public void c() {
    if (this.y == null) {
      this.y = mxn.b(this.x, (View.OnClickListener)new jmb(this), (View.OnClickListener)new jmc(this), this.x.getResources().getString(2131298095), "Habilitar", "Voltar");
      this.y.setCancelable(false);
    } 
  }
  
  public void d() {
    if (this.y != null) {
      this.y.dismiss();
      this.y = null;
    } 
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1) {
      jlk jlk = (jlk)paramIntent.getExtras().getSerializable("infoType");
      switch (jmd.a[jlk.ordinal()]) {
        default:
          return;
        case 1:
          this.a.a(new LatLng(paramIntent.getExtras().getDouble("latitude"), paramIntent.getExtras().getDouble("longitude")));
          return;
        case 2:
          break;
      } 
      this.a.a((jlq)paramIntent.getExtras().getSerializable("agenciaDados"));
      return;
    } 
  }
  
  public void onBackPressed() {
    if (this.d.c()) {
      this.d.b();
      return;
    } 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968711);
    FragmentManager fragmentManager = getSupportFragmentManager();
    fragmentManager.findFragmentById(2131758242);
    FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
    this.x = (Activity)this;
    String str = getIntent().getStringExtra("from");
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setDisplayShowTitleEnabled(false);
    if (str.equalsIgnoreCase("menu")) {
      gpu.a((Activity)this, actionBar, getString(2131298096));
    } else {
      actionBar.setElevation(0.0F);
    } 
    this.w = new gtu((Context)this, new ArrayList());
    this.d = (ListDropUp)findViewById(2131755901);
    this.d.setVisibility(8);
    this.d.setPropriets((Activity)this, (RecyclerView.Adapter)this.w);
    this.d.setOnListDownUpListener(this);
    this.a = (jmm)new jmn((Context)this, str);
    this.g = (SantanderButtonView)findViewById(2131755909);
    this.g.setOnClickListener((View.OnClickListener)this.a);
    this.c = (FloatingActionButton)findViewById(2131755897);
    this.c.setOnClickListener((View.OnClickListener)this.a);
    this.b = (FloatingActionButton)findViewById(2131755898);
    this.b.setOnClickListener((View.OnClickListener)this.a);
    this.e = (LinearLayout)findViewById(2131755899);
    this.f = (SantanderButtonView)findViewById(2131755900);
    this.f.setOnClickListener((View.OnClickListener)this.a);
    this.a.g();
    this.a.d();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.a.h();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    onBackPressed();
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\localizadoragencias\presentation\MapaLocalizadorAgenciaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */