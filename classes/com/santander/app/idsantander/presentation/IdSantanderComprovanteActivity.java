package com.santander.app.idsantander.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import grs;
import iut;
import ixm;
import ixn;
import ixo;
import ixp;
import ixq;
import ixr;
import ixs;
import ixt;
import ixu;
import ixv;
import ixw;
import ixx;
import ixy;
import ixz;
import iya;
import iyb;
import iyc;
import iyd;
import jae;
import jaf;
import java.util.regex.Pattern;
import miq;
import mzr;
import nat;
import naz;

public class IdSantanderComprovanteActivity extends grs implements iyd {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private Button d;
  
  private Button e;
  
  private PlayGifView f;
  
  private jae g;
  
  private boolean w = false;
  
  private void a(int paramInt) {
    setResult(paramInt, new Intent());
    finish();
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2) {
    getSharedPreferences("qrPreferences", 0).edit().putBoolean(mzr.n(), false).commit();
    miq.C().f().y().a(false);
    if (paramBoolean1)
      getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), true).commit(); 
    if (paramBoolean2) {
      a(-1);
      return;
    } 
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  private void e() {
    this.e.setVisibility(4);
    this.c.setVisibility(0);
    this.d.setVisibility(0);
    this.f.setGifResource(2130838873);
    this.a.setText(getResources().getString(2131299035));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298618)));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new ixr(this));
  }
  
  private void f() {
    this.d.setVisibility(0);
    this.e.setVisibility(4);
    this.c.setVisibility(0);
    this.f.setGifResource(2130838873);
    this.a.setText(getResources().getString(2131299035));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298643)));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new ixs(this));
  }
  
  private void g() {
    getSharedPreferences("qrPreferences", 0).edit().putBoolean(mzr.n(), false).commit();
    miq.C().f().y().a(false);
    if (this.v.f().y().a().equals(naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.getValue()) || this.v.f().y().a().equals(naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue()) || this.v.f().y().a().equals(naz.HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.getValue()) || this.v.f().y().a().equals(naz.CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.getValue())) {
      getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), true).commit();
    } else if (this.v.f().y().a().equals(naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue()) || this.v.f().y().a().equals(naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue()) || this.v.f().y().a().equals(naz.TELA_OFERTA_ATIVACAO_CSO.getValue()) || this.v.f().y().a().equals(naz.CSO_TRANSACIONAL.getValue())) {
      this.v.f().y().a(naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue());
      getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), false).commit();
    } else {
      getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), false).commit();
      this.v.f().y().a(naz.HOME_CONSULTIVA.getValue());
    } 
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  private void h() {
    startActivity(new Intent((Context)this, IdSantanderHabilitacaoActivity.class));
  }
  
  private void i() {
    startActivity(new Intent((Context)this, IdSantanderSincroniaActivity.class));
  }
  
  private void j() {
    startActivity(new Intent((Context)this, IdSantanderOtimizacaoActivity.class));
  }
  
  private void k() {
    startActivity(new Intent((Context)this, IdSantanderEscolhaCelularActivity.class));
  }
  
  private void k(String paramString) {
    this.d.setVisibility(0);
    this.e.setVisibility(0);
    paramString = l(paramString);
    if (paramString != null) {
      this.c.setVisibility(0);
      this.c.setText(getResources().getString(2131297609).replace("%data%", paramString));
    } else {
      this.c.setVisibility(4);
    } 
    this.f.setGifResource(2130838877);
    this.a.setText(getResources().getString(2131299031));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298617)));
    this.d.setText(getResources().getString(2131296614));
    this.d.setOnClickListener((View.OnClickListener)new ixt(this));
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131296622)));
    this.e.setOnClickListener((View.OnClickListener)new ixu(this));
  }
  
  private String l(String paramString) {
    if (paramString != null) {
      String[] arrayOfString = paramString.split(Pattern.quote("|"));
      if (arrayOfString.length == 2)
        return arrayOfString[1]; 
    } 
    return null;
  }
  
  private void n() {
    startActivity(new Intent((Context)this, IdSantanderHabilitacaoQrOuAtmOfertaActivity.class));
  }
  
  public void a() {
    miq.C().f().y().a(naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue());
    this.c.setVisibility(4);
    this.d.setVisibility(0);
    this.e.setVisibility(4);
    this.f.setGifResource(2130838881);
    this.a.setText(getResources().getString(2131299034));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298621)));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new ixv(this));
  }
  
  public void a(String paramString) {
    this.d.setVisibility(0);
    this.e.setVisibility(4);
    this.c.setVisibility(0);
    this.f.setGifResource(2130838873);
    this.a.setText(getResources().getString(2131299035));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298623)));
    this.c.setText(getResources().getString(2131297609).replace("%data%", paramString));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new ixm(this));
  }
  
  public void b() {
    this.e.setVisibility(4);
    this.c.setVisibility(4);
    this.d.setVisibility(0);
    this.f.setGifResource(2130838880);
    this.a.setText(getResources().getString(2131299032));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298619)));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new iya(this));
  }
  
  public void b(String paramString) {
    this.e.setVisibility(4);
    this.c.setVisibility(0);
    this.d.setVisibility(0);
    this.f.setGifResource(2130838873);
    this.a.setText(getResources().getString(2131299035));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298623)));
    this.c.setText(getResources().getString(2131297609).replace("%data%", paramString));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new ixw(this));
  }
  
  public void c() {
    a(false, this.w);
  }
  
  public void d() {
    miq.C().f().y().a(naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue());
    this.c.setVisibility(4);
    this.d.setVisibility(0);
    this.e.setVisibility(4);
    this.f.setGifResource(2130838881);
    this.a.setText(getResources().getString(2131299034));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298616)));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new ixn(this));
  }
  
  public void d(String paramString) {
    this.e.setVisibility(0);
    this.c.setVisibility(0);
    this.d.setVisibility(0);
    this.f.setGifResource(2130838873);
    this.a.setText(getResources().getString(2131299035));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298622)));
    this.c.setText(getResources().getString(2131297609).replace("%data%", paramString));
    this.d.setText(getResources().getString(2131296614));
    this.d.setOnClickListener((View.OnClickListener)new ixx(this));
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131296622)));
    this.e.setOnClickListener((View.OnClickListener)new ixy(this));
  }
  
  public void e(String paramString) {
    this.e.setVisibility(4);
    this.c.setVisibility(0);
    this.d.setVisibility(0);
    this.f.setGifResource(2130838873);
    this.a.setText(getResources().getString(2131299035));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298623)));
    this.c.setText(getResources().getString(2131297609).replace("%data%", paramString));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new ixz(this));
  }
  
  public void f(String paramString) {
    this.e.setVisibility(0);
    this.c.setVisibility(0);
    this.d.setVisibility(0);
    this.f.setGifResource(2130838878);
    this.a.setText(getResources().getString(2131299033));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298620)));
    this.c.setText(getResources().getString(2131297609).replace("%data%", paramString));
    this.d.setText(getResources().getString(2131296614));
    this.d.setOnClickListener((View.OnClickListener)new iyb(this));
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131296621)));
    this.e.setOnClickListener((View.OnClickListener)new iyc(this));
  }
  
  public void g(String paramString) {
    this.e.setVisibility(4);
    this.c.setVisibility(0);
    this.d.setVisibility(0);
    this.f.setGifResource(2130838878);
    this.a.setText(getResources().getString(2131299035));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298641)));
    this.c.setText(getResources().getString(2131297609).replace("%data%", paramString));
    this.d.setText(getResources().getString(2131296613));
    this.d.setOnClickListener((View.OnClickListener)new ixo(this));
  }
  
  public void h(String paramString) {
    this.e.setVisibility(0);
    this.c.setVisibility(0);
    this.d.setVisibility(0);
    this.f.setGifResource(2130838878);
    this.a.setText(getResources().getString(2131299035));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298642)));
    this.c.setText(getResources().getString(2131297609).replace("%data%", paramString));
    this.d.setText(getResources().getString(2131296614));
    this.d.setOnClickListener((View.OnClickListener)new ixp(this));
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131296612)));
    this.e.setOnClickListener((View.OnClickListener)new ixq(this));
  }
  
  public void i(String paramString) {
    if (paramString.equals(null) || paramString.equals("-1")) {
      e();
      return;
    } 
    if (paramString.contains("falhaComunicacao")) {
      k(paramString);
      return;
    } 
    if (paramString.equals("permissaoSms")) {
      f();
      return;
    } 
    e();
  }
  
  public void j(String paramString) {
    k();
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    boolean bool;
    iut iut;
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.a = (TextView)findViewById(2131755821);
    this.b = (TextView)findViewById(2131755822);
    this.c = (TextView)findViewById(2131755864);
    this.d = (Button)findViewById(2131755855);
    this.e = (Button)findViewById(2131755858);
    this.f = (PlayGifView)findViewById(2131755820);
    if (getCallingActivity() != null) {
      bool = true;
    } else {
      bool = false;
    } 
    this.w = bool;
    this.g = (jae)new jaf(this);
    jae jae1 = this.g;
    if (getIntent().hasExtra("content")) {
      String str = getIntent().getExtras().getString("content");
    } else {
      paramBundle = null;
    } 
    if (getIntent().hasExtra("id")) {
      iut = (iut)getIntent().getExtras().get("id");
    } else {
      iut = null;
    } 
    jae1.a((String)paramBundle, iut);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */