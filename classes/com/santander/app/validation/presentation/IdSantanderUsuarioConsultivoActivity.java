package com.santander.app.validation.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.homenaologada.presentation.HomeActivity;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoActivity;
import com.santander.app.idsantander.presentation.IdSantanderSincroniaActivity;
import grs;
import jcd;
import miq;
import nca;
import ncb;
import ncc;
import ncd;
import nce;
import ncf;
import ncg;
import nch;
import nci;
import ncj;
import nck;
import ncl;
import ncm;
import ncn;
import nco;
import ncp;
import ncq;
import ndp;
import ndq;

public class IdSantanderUsuarioConsultivoActivity extends grs implements ncq {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private Button e;
  
  private Button f;
  
  private PlayGifView g;
  
  private ndp w;
  
  private void a(boolean paramBoolean) {
    setResult(3, (new Intent()).putExtra("showLogin", paramBoolean));
    finish();
  }
  
  private void a(String[] paramArrayOfString) {
    ActivityCompat.requestPermissions(this.i, paramArrayOfString, 7);
  }
  
  private void k() {
    miq.C().o();
    jcd.a();
    moveTaskToBack(true);
    Process.killProcess(Process.myPid());
    System.exit(1);
  }
  
  private void n() {
    startActivity(new Intent((Context)this, IdSantanderSincroniaActivity.class));
  }
  
  private void o() {
    startActivity(new Intent((Context)this, HomeActivity.class));
  }
  
  private void p() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  private void q() {
    startActivity(new Intent((Context)this, IdSantanderHabilitacaoActivity.class));
  }
  
  private void r() {
    if (Build.VERSION.SDK_INT >= 23) {
      boolean bool1;
      boolean bool2;
      if (ContextCompat.checkSelfPermission((Context)this.i, "android.permission.RECEIVE_SMS") == 0) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (ContextCompat.checkSelfPermission((Context)this.i, "android.permission.READ_SMS") == 0) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      if (!bool1 && !bool2) {
        a(new String[] { "android.permission.READ_SMS", "android.permission.RECEIVE_SMS" });
        return;
      } 
      if (bool1 && !bool2) {
        a(new String[] { "android.permission.READ_SMS" });
        return;
      } 
      if (!bool1 && bool2) {
        a(new String[] { "android.permission.RECEIVE_SMS" });
        return;
      } 
      startActivity(new Intent((Context)this, IdSantanderEscolhaCelularActivity.class));
      return;
    } 
    startActivity(new Intent((Context)this, IdSantanderEscolhaCelularActivity.class));
  }
  
  public void a() {
    this.f.setVisibility(0);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838859);
    this.a.setText(getResources().getString(2131299036));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298624)));
    this.e.setText(getResources().getString(2131296610));
    this.e.setOnClickListener((View.OnClickListener)new nca(this));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131298076)));
    this.f.setOnClickListener((View.OnClickListener)new nci(this));
  }
  
  public void b() {
    this.f.setVisibility(4);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838877);
    this.a.setText(getResources().getString(2131299049));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298648)));
    this.e.setText(getResources().getString(2131296616));
    this.e.setOnClickListener((View.OnClickListener)new ncj(this));
  }
  
  public void c() {
    this.f.setVisibility(0);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838877);
    this.a.setText(getResources().getString(2131299050));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298649)));
    this.e.setText(getResources().getString(2131296616));
    this.e.setOnClickListener((View.OnClickListener)new nck(this));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131298076)));
    this.f.setOnClickListener((View.OnClickListener)new ncl(this));
  }
  
  public void d() {
    this.f.setVisibility(0);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838877);
    this.a.setText(2131299029);
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298611)));
    this.e.setText(getResources().getString(2131296616));
    this.e.setOnClickListener((View.OnClickListener)new ncm(this));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131298076)));
    this.f.setOnClickListener((View.OnClickListener)new ncn(this));
  }
  
  public void e() {
    this.f.setVisibility(0);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838877);
    this.a.setText(getResources().getString(2131299051));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298650)));
    this.e.setText(getResources().getString(2131296617));
    this.e.setOnClickListener((View.OnClickListener)new nco(this));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131298075)));
    this.f.setOnClickListener((View.OnClickListener)new ncp(this));
  }
  
  public void f() {
    this.f.setVisibility(4);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838873);
    this.a.setText(getResources().getString(2131299037));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298628)));
    this.e.setText(getResources().getString(2131296616));
    this.e.setOnClickListener((View.OnClickListener)new ncb(this));
  }
  
  public void g() {
    this.f.setVisibility(4);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838877);
    this.a.setText(getResources().getString(2131299052));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298651)));
    this.e.setText(getResources().getString(2131296616));
    this.e.setOnClickListener((View.OnClickListener)new ncc(this));
  }
  
  public void h() {
    this.f.setVisibility(0);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838873);
    this.a.setText(getResources().getString(2131299030));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298613)));
    this.e.setText(getResources().getString(2131296610));
    this.e.setOnClickListener((View.OnClickListener)new ncd(this));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131298076)));
    this.f.setOnClickListener((View.OnClickListener)new nce(this));
  }
  
  public void i() {
    this.f.setVisibility(4);
    this.e.setVisibility(0);
    this.c.setVisibility(4);
    this.g.setGifResource(2130838878);
    this.a.setText(getResources().getString(2131299049));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131296595)));
    this.e.setText(getResources().getString(2131296616));
    this.e.setOnClickListener((View.OnClickListener)new ncf(this));
  }
  
  public void j() {
    this.c.setVisibility(8);
    this.d.setVisibility(0);
    this.d.setOnClickListener((View.OnClickListener)new ncg(this));
    this.g.setVisibility(0);
    this.g.setGifResource(2130838876);
    this.a.setText(2131299026);
    this.a.setVisibility(0);
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298645)));
    this.b.setVisibility(0);
    this.e.setVisibility(0);
    this.e.setText(getResources().getString(2131296610));
    this.e.setOnClickListener((View.OnClickListener)new nch(this));
  }
  
  public void onBackPressed() {
    if (this.w.b(getIntent()))
      super.onBackPressed(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.a = (TextView)findViewById(2131755821);
    this.b = (TextView)findViewById(2131755822);
    this.c = (TextView)findViewById(2131755864);
    this.d = (TextView)findViewById(2131755819);
    this.e = (Button)findViewById(2131755855);
    this.f = (Button)findViewById(2131755858);
    this.g = (PlayGifView)findViewById(2131755820);
    this.w = (ndp)new ndq(this);
    this.w.a(getIntent());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\validation\presentation\IdSantanderUsuarioConsultivoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */