package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.AppCompatRadioButton;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import ejm;
import frq;
import gkw;
import gnp;
import gnv;
import gpu;
import grs;
import ih;
import im;
import ir;
import is;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import kvp;
import kvz;
import kwr;
import kws;
import lst;
import lsu;
import lsx;
import lsy;
import lsz;
import lta;
import mhj;
import mzx;
import nab;
import org.json.JSONObject;

public class SurveyActivity extends grs {
  public static final String a = "sinister-key";
  
  private MultiStateLayout A;
  
  private kvp B;
  
  private Date C;
  
  private Date D;
  
  private boolean E = false;
  
  private TextView b;
  
  private FrameLayout c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private RelativeLayout g;
  
  private AppCompatRadioButton w;
  
  private RelativeLayout x;
  
  private AppCompatRadioButton y;
  
  private Button z;
  
  private Date a(Date paramDate) {
    int i = 0;
    paramDate = new Date();
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(paramDate);
    calendar.set(10, 0);
    calendar.set(12, 0);
    calendar.set(13, 0);
    calendar.set(14, 0);
    while (i < 3) {
      calendar.add(5, 1);
      if (calendar.get(7) == 7)
        calendar.add(5, 1); 
      if (calendar.get(7) == 1)
        calendar.add(5, 1); 
      i++;
    } 
    return calendar.getTime();
  }
  
  private void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839140));
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131298655);
    gpu.a((Activity)this, actionBar, getString(2131298655));
  }
  
  private void b() {
    this.b = (TextView)findViewById(2131755914);
    this.c = (FrameLayout)findViewById(2131756083);
    this.d = (TextView)findViewById(2131755789);
    this.e = (TextView)findViewById(2131756084);
    this.f = (TextView)findViewById(2131756085);
    this.g = (RelativeLayout)findViewById(2131756087);
    this.w = (AppCompatRadioButton)findViewById(2131756089);
    this.x = (RelativeLayout)findViewById(2131756090);
    this.y = (AppCompatRadioButton)findViewById(2131756092);
    this.z = (Button)findViewById(2131756093);
    this.A = (MultiStateLayout)findViewById(2131755279);
    e();
  }
  
  private void c() {
    this.e.setText(mhj.a(this.D, "dd/MM/yyyy"));
    this.C = this.D;
    this.c.setOnClickListener((View.OnClickListener)new lst(this));
  }
  
  private void d() {
    GregorianCalendar gregorianCalendar = new GregorianCalendar(mhj.d());
    gregorianCalendar.setTime(this.C);
    DatePickerDialog datePickerDialog = new DatePickerDialog((Context)this.i, (DatePickerDialog.OnDateSetListener)new lsu(this, gregorianCalendar), gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
    datePickerDialog.getDatePicker().setMinDate(this.D.getTime());
    datePickerDialog.show();
  }
  
  private void e() {
    this.z.setOnClickListener((View.OnClickListener)new lsx(this));
    this.g.setOnClickListener((View.OnClickListener)new lsy(this));
    this.x.setOnClickListener((View.OnClickListener)new lsz(this));
  }
  
  private void f() {
    this.A.setState(aor.LOADING);
    this.E = true;
    kvz kvz = new kvz();
    kvz.b(this.B.a());
    kvz.c(this.B.b());
    kvz.d(nab.a().b(this.B.c()));
    kvz.e(this.B.d());
    kvz.f(mhj.a(this.C, "dd/MM/yyyy"));
    if (this.y.isChecked()) {
      kvz.a("Tarde");
    } else if (this.w.isChecked()) {
      kvz.a("Manhã");
    } 
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject.put("Content-Type", "application/json");
    } catch (Exception exception1) {
      exception1.printStackTrace();
    } 
    try {
      JSONObject jSONObject1 = new JSONObject((new ejm()).b(kvz));
    } catch (Exception exception) {
      exception.printStackTrace();
      exception = null;
    } 
    ir ir = gnp.a().a(kwr.SURVEY_LOSSES.getEndpoint(), im.PUT, jSONObject, (JSONObject)exception, true);
    gnv gnv = new gnv(h(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception1) {
        Log.e("ERROR_SERV", exception1.getMessage());
        return;
      }  
  }
  
  private void g() {
    Calendar.getInstance().setTime(this.C);
    frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_RemarcarVistoria_Data", String.valueOf(mhj.a(this.C, "ddMMyyyy")));
    if (this.w.isChecked()) {
      frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_RemarcarVistoria_Periodo", "Manha");
    } else {
      frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_RemarcarVistoria_Periodo", "Tarde");
    } 
    frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_RemarcarVistoria_Acao", "Avancar");
  }
  
  private gkw<is> h() {
    return (gkw<is>)new lta(this);
  }
  
  public void onBackPressed() {
    if (!this.E)
      super.onBackPressed(); 
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968748);
    a();
    b();
    if (getIntent() != null && getIntent().getExtras().containsKey("sinister-key")) {
      this.B = (kvp)(new ejm()).a(getIntent().getExtras().getString("sinister-key"), kvp.class);
      this.D = a(new Date());
      c();
      return;
    } 
    this.A.setState(aor.ERROR);
  }
  
  public void onPause() {
    super.onPause();
    kws.a().b().c(this);
  }
  
  public void onResume() {
    super.onResume();
    kws.a().b().b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\SurveyActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */