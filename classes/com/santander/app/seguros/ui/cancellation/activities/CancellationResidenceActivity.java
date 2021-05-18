package com.santander.app.seguros.ui.cancellation.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.widgets.cancellation.CancelSeekBar;
import ejm;
import frq;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kqb;
import leh;
import lek;
import lel;
import lem;
import lft;
import lgd;
import lge;
import mff;
import mhj;

public class CancellationResidenceActivity extends grs implements lge {
  public static final String a = "residence-address";
  
  public static final String b = "list-historic-residence";
  
  private TextView A;
  
  private MultiStateLayout B;
  
  private ImageView c;
  
  private TextView d;
  
  private TextView e;
  
  private Button f;
  
  private ImageView g;
  
  private lft w;
  
  private CancelSeekBar x;
  
  private List<kqb> y;
  
  private String z;
  
  private void a(lem paramlem) {
    switch (lel.a[paramlem.ordinal()]) {
      default:
        this.e.setText(getResources().getString(2131298485));
        this.g.setImageResource(2130838638);
        this.c.setImageDrawable(ContextCompat.getDrawable((Context)this, 2130838613));
        return;
      case 1:
        this.e.setText(getResources().getString(2131298485));
        this.g.setImageResource(2130838638);
        this.c.setImageDrawable(ContextCompat.getDrawable((Context)this, 2130838613));
        return;
      case 2:
        this.e.setText(getResources().getString(2131298486));
        this.g.setImageResource(2130838361);
        this.c.setImageDrawable(ContextCompat.getDrawable((Context)this, 2130838615));
        return;
      case 3:
        break;
    } 
    this.e.setText(getResources().getString(2131298485));
    this.g.setImageResource(2130838638);
    this.c.setImageDrawable(ContextCompat.getDrawable((Context)this, 2130838614));
  }
  
  private void b() {
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
  
  private void c() {
    this.d.setText((CharSequence)mhj.a((Context)this, "fonts/opensans_semibold.ttf", Integer.valueOf(ContextCompat.getColor((Context)this, 2131624105)), getResources().getString(2131299200), new String[] { "risco", "desproteger" }));
    this.y = new ArrayList<kqb>(Arrays.asList((Object[])(new ejm()).a(mhj.a((Context)this, "jsons/sinister/historic_residence.json"), kqb[].class)));
    this.A.setText(this.z);
    if (this.y != null && this.y.size() > 0) {
      this.f.setVisibility(0);
      return;
    } 
    this.f.setVisibility(8);
  }
  
  private void d() {
    this.c = (ImageView)findViewById(2131755353);
    this.d = (TextView)findViewById(2131755354);
    this.e = (TextView)findViewById(2131755350);
    this.g = (ImageView)findViewById(2131755355);
    this.f = (Button)findViewById(2131755357);
    this.A = (TextView)findViewById(2131755356);
    this.x = (CancelSeekBar)findViewById(2131755349);
    this.B = (MultiStateLayout)findViewById(2131755279);
    this.x.setListener((mff)new leh(this));
    this.f.setOnClickListener((View.OnClickListener)new lek(this));
  }
  
  private void e() {
    this.w = lft.a(lgd.Residencial);
    this.w.a(this);
    this.w.show(getSupportFragmentManager(), "dialog-cancellation");
  }
  
  public void a() {
    this.x.a(false);
    a(lem.SAFE);
  }
  
  public void a(String paramString) {
    this.B.setState(aor.LOADING);
    overridePendingTransition(2131034137, 2131034138);
    finish();
    Intent intent = new Intent((Context)this, SuccessCancellationActivity.class);
    intent.putExtra("insurance_name_key", "proteção residencial");
    intent.putExtra("tag-name-key", "Cancelamento_Residencia_Confirmacao_%s");
    startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968624);
    frq.d("Seguros_Cancelamento_Residencia_Acao", "TelaCancelamentoResidencia");
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("residence-address")) {
      this.z = getIntent().getExtras().getString("residence-address");
    } else {
      this.z = "";
    } 
    b();
    d();
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\cancellation\activities\CancellationResidenceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */