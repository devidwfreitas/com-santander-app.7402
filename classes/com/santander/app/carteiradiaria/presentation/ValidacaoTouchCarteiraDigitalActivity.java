package com.santander.app.carteiradiaria.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.santander.app.geolocalizacao.service.GeolocalizacaoService;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import frq;
import gfl;
import gfz;
import gga;
import grs;
import ieu;
import iew;
import iex;
import iey;
import miq;
import nau;

public class ValidacaoTouchCarteiraDigitalActivity extends grs implements iew, nau {
  private static final int e = 1;
  
  private Activity a;
  
  private iex b;
  
  private gga c;
  
  private LinearLayout d;
  
  private void c() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    Fragment fragment = fragmentManager.findFragmentById(2131755593);
    this.d.setVisibility(0);
    if (fragment == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131755593, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  public void a() {
    this.d = (LinearLayout)findViewById(2131755593);
    ieu ieu = new ieu((Context)GeolocalizacaoService.a);
    if (ieu.b() && ieu.a(miq.C().f().k())) {
      this.b = (iex)new iey((FingerprintManager)getSystemService(FingerprintManager.class), this, (Context)this);
      this.b.a();
      this.c = new gga((Activity)this, (gfl)new gfz(this), this.b);
      this.c.show();
      this.c.setCanceledOnTouchOutside(false);
      return;
    } 
    c();
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    Intent intent = new Intent((Context)this, ListagemCarteiraDiariaActivity.class);
    this.a.startActivity(intent);
  }
  
  public void a(CharSequence paramCharSequence) {
    frq.d("Investimentos_CarteiraDiaria_AutenticacaoBiometrica_Acao", "DigitalNaoReconhecida");
    if (!paramCharSequence.toString().contains("Excesso de tentativas. Digite sua senha")) {
      Toast.makeText((Context)this, paramCharSequence, 0).show();
      return;
    } 
    frq.d("Investimentos_CarteiraDiaria_AutenticacaoBiometrica_Acao", "ExcessoDeTentativas");
    Toast.makeText((Context)this, "Excesso de tentativas.", 1).show();
    this.b.b();
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b() {
    frq.d("Investimentos_CarteiraDiaria_AutenticacaoBiometrica_Acao", "LogouComSucesso");
    this.b.b();
    this.c.dismiss();
    c();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968759);
    this.a = (Activity)this;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\carteiradiaria\presentation\ValidacaoTouchCarteiraDigitalActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */