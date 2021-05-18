package com.santander.app.investimentos.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.Display;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import cew;
import cfn;
import cfr;
import cfs;
import cfu;
import cgo;
import cgy;
import cgz;
import cha;
import chn;
import chq;
import cis;
import clg;
import com.github.mikephil.charting.charts.PieChart;
import gpu;
import grs;
import java.util.List;
import jdf;
import jka;
import jkb;
import jkc;
import jkd;
import jke;
import jkf;
import jkg;
import jkp;
import jks;
import jkt;
import mxn;
import naj;

public class MeusInvestimentosActivity extends grs implements jkg {
  private Dialog A;
  
  private PieChart a;
  
  private Typeface b;
  
  private Typeface c;
  
  private RecyclerView d;
  
  private TextView e;
  
  private jks f;
  
  private Dialog g;
  
  private Dialog w;
  
  private Dialog x;
  
  private TextView y;
  
  private Button z;
  
  private void b(cgz paramcgz) {
    Display display = getWindowManager().getDefaultDisplay();
    Point point = new Point();
    display.getSize(point);
    int i = point.x;
    int j = point.y;
    cgy cgy = new cgy((cis)paramcgz);
    cgy.a((chn)new chq());
    cgy.b(12.0F);
    paramcgz.a(3.0F);
    paramcgz.f(0.0F);
    paramcgz.i(80.0F);
    paramcgz.j(0.3F);
    paramcgz.k(0.6F);
    cgy.c(-16777216);
    paramcgz.b(cha.OUTSIDE_SLICE);
    cgy.a(this.b);
    this.a.invalidate();
    cfn cfn = this.a.av();
    cfn.a(cfr.RIGHT);
    cfn.a(cfu.CENTER);
    cfn.a(cfs.VERTICAL);
    cfn.a(10.0F);
    cfn.c(8.0F);
    cfn.j(clg.b((i / 100 * 6)));
    cfn.d(20.0F);
    cfn.a(10.0F);
    this.a.setData((cgo)cgy);
  }
  
  private void g() {
    this.d = (RecyclerView)findViewById(2131758244);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    linearLayoutManager.setStackFromEnd(true);
    this.d.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.e = (TextView)findViewById(2131758222);
  }
  
  private View.OnClickListener h() {
    return (View.OnClickListener)new jka(this);
  }
  
  private View.OnClickListener i() {
    return (View.OnClickListener)new jkb(this);
  }
  
  private View.OnClickListener j() {
    return (View.OnClickListener)new jkc(this);
  }
  
  public void a() {
    this.g = mxn.a((Activity)this, i(), getResources().getString(2131296570), getResources().getString(2131296657), getResources().getString(2131296654));
  }
  
  public void a(Intent paramIntent) {
    startActivity(paramIntent);
  }
  
  public void a(cgz paramcgz) {
    this.a = (PieChart)findViewById(2131758243);
    this.a.setVisibility(0);
    this.a.setUsePercentValues(true);
    this.a.au().g(false);
    this.a.setExtraOffsets(5.0F, 5.0F, 5.0F, 5.0F);
    this.a.setDragDecelerationFrictionCoef(100.0F);
    this.a.setCenterTextTypeface(this.c);
    this.a.setDrawHoleEnabled(true);
    this.a.setHoleColor(-1);
    this.a.setTransparentCircleColor(-1);
    this.a.setTransparentCircleAlpha(110);
    this.a.setHoleRadius(80.0F);
    this.a.setDrawCenterText(true);
    this.a.setRotationAngle(0.0F);
    this.a.setRotationEnabled(false);
    this.a.setHighlightPerTapEnabled(true);
    b(paramcgz);
    this.a.b(1000, cew.Linear);
    this.a.setEntryLabelColor(-65536);
    this.a.setEntryLabelTypeface(this.c);
    this.a.av().g(true);
  }
  
  public void a(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, true, "OK");
  }
  
  public void a(jdf paramjdf) {
    List list = paramjdf.d();
    this.e.setText(naj.f(paramjdf.c()));
    this.d.setAdapter((RecyclerView.Adapter)new jkp(list, h()));
    this.f.a(getIntent(), list);
  }
  
  public void b() {
    this.w = mxn.a((Activity)this, j(), getResources().getString(2131296566), getResources().getString(2131296657), getResources().getString(2131296654));
  }
  
  public void c() {
    this.x = new Dialog((Context)this, 2131427876);
    this.x.setContentView(2130968962);
    this.x.setCancelable(true);
    this.y = (TextView)this.x.findViewById(2131756912);
    this.z = (Button)this.x.findViewById(2131756913);
    this.z.setText(getString(2131296665));
    this.y.setText((CharSequence)Html.fromHtml("Para novas contratações fale agora com nossa assessoria especializada. <br/>Escolha sua opção:"));
    this.x.findViewById(2131756030).setOnClickListener((View.OnClickListener)new jkd(this));
    this.x.findViewById(2131756034).setOnClickListener((View.OnClickListener)new jke(this));
    this.z.setOnClickListener((View.OnClickListener)new jkf(this));
    this.x.show();
  }
  
  public void d() {
    if (this.A == null)
      this.A = mxn.b((Activity)this); 
  }
  
  public void e() {
    if (this.A != null) {
      this.A.dismiss();
      this.A = null;
    } 
  }
  
  public void f() {
    a(getString(2131297343));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968712);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getResources().getString(2131297781));
    g();
    this.f = (jks)new jkt(this);
    this.f.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\presentation\MeusInvestimentosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */