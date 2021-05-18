package com.santander.app.perfil.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gky;
import gpu;
import grs;
import java.util.ArrayList;
import kaz;
import kbo;
import kbq;
import mzr;
import nai;
import nau;

public class GerenciarDispositivosConfirmacaoActivity extends grs implements nau {
  private static final String a = "GerenciarDispositivosConfirmacaoActivity";
  
  private int b = 1;
  
  private Dialog c;
  
  private ArrayList<gky> d;
  
  private kbq e;
  
  private String f;
  
  private int g = 0;
  
  private int w = 0;
  
  private kbo x = null;
  
  private String y;
  
  private String z;
  
  private void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131757601) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(this.b);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131757602, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  private ArrayList<gky> b() {
    this.d = new ArrayList<gky>();
    this.d = new ArrayList<gky>();
    gky gky = new gky(getString(2131298035), mzr.g());
    gky.a(true);
    this.d.add(gky);
    gky = new gky(getString(2131297899), nai.c(mzr.m()));
    this.d.add(gky);
    gky = new gky("Aparelho:", this.x.a().a());
    gky.a(true);
    this.d.add(gky);
    return this.d;
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    (new kaz(this, null)).execute((Object[])new kbv[0]);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    Intent intent = new Intent((Context)this, GerenciarDispositivoActivity.class);
    intent.addFlags(67108864);
    startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969104);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    this.e = (kbq)getIntent().getExtras().getSerializable("gerenciar_dispositivos");
    this.w = ((Integer)getIntent().getExtras().getSerializable("posicao_slider")).intValue();
    this.g = Integer.parseInt(this.e.f());
    if (this.g != 0) {
      switch (this.g) {
        default:
          gpu.a((Activity)this, actionBar, getString(2131298951));
          a();
          return;
        case 2:
          if (this.w == 50) {
            this.f = "ativarDispositivo";
            this.z = "ativarComprovanteBloquearDispositivo";
            this.y = "Aparelho habilitado com sucesso";
          } else if (this.w == 100) {
            this.f = "excluirDispositivo";
            this.z = "excluirComprovanteBloquearDispositivo";
            this.y = "Aparelho excluído com sucesso";
          } 
        case 7:
          if (this.w == 0) {
            this.f = "bloquearDispositivo";
            this.z = "bloquearComprovanteBloquearDispositivo";
            this.y = "Aparelho bloqueado com sucesso";
          } else if (this.w == 100) {
            this.f = "excluirDispositivo";
            this.z = "excluirComprovanteBloquearDispositivo";
            this.y = "Aparelho excluído com sucesso";
          } 
        case 8:
          if (this.w == 0) {
            this.f = "ativarDispositivo";
            this.z = "ativarComprovanteBloquearDispositivo";
            this.y = "Aparelho bloqueado com sucesso";
          } else if (this.w == 100) {
            this.f = "excluirDispositivo";
            this.z = "excluirComprovanteBloquearDispositivo";
            this.y = "Aparelho excluído com sucesso";
          } 
        case 20:
          if (this.w == 50) {
            this.f = "desbloquearDispositivo";
            this.z = "desbloquearComprovanteBloquearDispositivo";
            this.y = "Aparelho desbloqueado com sucesso";
          } else if (this.w == 100) {
            this.f = "excluirDispositivo";
            this.z = "excluirComprovanteBloquearDispositivo";
            this.y = "Aparelho excluído com sucesso";
          } 
        case 27:
          break;
      } 
      if (this.w == 0) {
        this.f = "bloquearDispositivo";
        this.z = "bloquearComprovanteBloquearDispositivo";
        this.y = "Aparelho bloqueado com sucesso";
      } 
      if (this.w == 100) {
        this.f = "excluirDispositivo";
        this.z = "excluirComprovanteBloquearDispositivo";
        this.y = "Aparelho excluído com sucesso";
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\perfil\activity\GerenciarDispositivosConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */