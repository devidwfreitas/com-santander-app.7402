package com.santander.app.recargatelefone.recargavalidacao.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.recargatelefone.presentation.RecargaTelefoneActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import frq;
import fsg;
import fvn;
import gpu;
import gvb;
import hau;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import kgj;
import kia;
import kic;
import kid;
import kjg;
import kkh;
import kki;
import mxn;
import nau;

public class RecargaValidacaoActivity extends AppCompatActivity implements kkh, nau {
  private kki a;
  
  private Dialog b;
  
  private final String c = "RecargaValidacaoActivity";
  
  public void a() {
    this.b = mxn.b((Activity)this);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.a.a(paramInt, paramBoolean);
  }
  
  public void a(kgj paramkgj, kia paramkia) {
    String str;
    fvn fvn = new fvn();
    fvn.z("");
    fvn.a(paramkgj.c());
    fvn.b(paramkgj.d());
    fvn.c(paramkgj.e());
    fvn.d(paramkgj.g());
    fvn.e(paramkgj.h());
    fvn.f(paramkgj.m());
    fvn.g(paramkgj.k());
    fvn.h(paramkgj.j());
    fvn.i(paramkgj.m());
    fvn.j(paramkgj.l());
    fvn.k("");
    if (paramkia == null) {
      str = "Não foi possível realizar o cancelamento da recarga programada.";
    } else {
      str = paramkia.g();
    } 
    fvn.l(str);
    fvn.m(paramkgj.o());
    fvn.n("");
    fvn.o(paramkgj.q());
    fvn.p(paramkgj.s());
    fvn.q(paramkgj.D());
    fvn.r(paramkgj.C());
    fvn.s(paramkgj.B());
    fvn.C(paramkgj.b());
    if (paramkgj.A().equalsIgnoreCase("s")) {
      str = "Semanal";
    } else {
      str = "Mensal";
    } 
    fvn.t(str);
    fvn.u(paramkgj.z());
    fvn.v(paramkgj.y());
    fvn.w(paramkgj.x());
    fvn.x(paramkgj.w());
    fvn.y(paramkgj.t());
    fvn.A("");
    fvn.B(paramkgj.u());
    ArrayList arrayList = (ArrayList)this.a.a(paramkgj, true);
    gvb gvb = new gvb();
    gvb.i("");
    gvb.j("");
    gvb.f(false);
    gvb.g("Exclusão da recarga realizada com sucesso");
    gvb.f((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    gvb.b(arrayList);
    gvb.k("Programar Recarga");
    gvb.h(getString(2131298215).replaceAll("@@br", "<br/>"));
    gvb.c(getString(2131298438));
    if (paramkia == null) {
      gvb.e(true);
      gvb.d("Não foi possível realizar o cancelamento da recarga programada.");
    } else if (!paramkia.g().equalsIgnoreCase("")) {
      String[] arrayOfString = paramkia.g().split("\\|");
      gvb.e(true);
      gvb.d(arrayOfString[1]);
    } else {
      gvb.d("Exclusão da recarga realizada com sucesso");
    } 
    gvb.e(fvn.p());
    gvb.a(RecargaTelefoneActivity.class);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("dadosRecarga", fvn);
    hashMap.put("operadoraTexto", getIntent().getSerializableExtra("operadoraTexto"));
    gvb.a(hashMap);
    Intent intent = new Intent(getApplicationContext(), ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  public void a(kic paramkic, kia paramkia) {
    (new fsg()).a((Context)this);
    fvn fvn = new fvn();
    fvn.a(paramkic.h());
    fvn.b(paramkic.i());
    fvn.c(paramkic.j().substring(3));
    fvn.d(paramkic.l());
    fvn.e(paramkic.N());
    fvn.f(paramkic.n());
    fvn.g(paramkic.O());
    fvn.h(paramkic.m());
    fvn.i(paramkic.n());
    fvn.j(paramkic.P());
    fvn.k("");
    fvn.l(paramkia.g());
    fvn.m(paramkic.R());
    fvn.n("");
    fvn.o(paramkia.getAutenticacao());
    fvn.p(paramkic.S());
    fvn.q(paramkic.c());
    fvn.r(paramkic.d());
    fvn.s(paramkic.b());
    fvn.C(paramkic.o());
    fvn.t(paramkic.a());
    fvn.u(paramkic.Y());
    fvn.v(paramkic.Z());
    fvn.w(paramkic.aa());
    fvn.x(paramkic.ab());
    fvn.y(paramkic.ac());
    fvn.A(paramkic.ad());
    fvn.B(paramkic.getTokenTransacao());
    fvn.a(true);
    ArrayList arrayList = (ArrayList)this.a.a(paramkic, false);
    gvb gvb = new gvb();
    gvb.i("");
    gvb.j("");
    gvb.f(true);
    gvb.g("Recarga realizada com sucesso");
    gvb.f((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    gvb.b(arrayList);
    gvb.k("Programar Recarga");
    gvb.h(getString(2131298215).replaceAll("@@br", "<br/>"));
    gvb.c(getString(2131298438));
    if (paramkia == null) {
      gvb.e(true);
      gvb.d("Não foi possível realizar a recarga.");
    } else {
      String[] arrayOfString;
      if (!paramkia.g().equalsIgnoreCase("")) {
        arrayOfString = paramkia.g().split("\\|");
        gvb.e(true);
        gvb.d(arrayOfString[1]);
      } else if (arrayOfString.i().equalsIgnoreCase("true")) {
        gvb.d("Agendamento de recarga realizado com sucesso");
      } else if (!hau.a().z()) {
        gvb.d("Recarga Realizada com sucesso");
      } 
    } 
    gvb.e(fvn.p());
    gvb.a(RecargaTelefoneActivity.class);
    frq.d("Outros_RecargaDeTelefone_ReferOper", gvb.k());
    gvb.p(true);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("dadosRecarga", fvn);
    hashMap.put("operadoraTexto", getIntent().getSerializableExtra("operadoraTexto"));
    gvb.a(hashMap);
    Intent intent = new Intent(getApplicationContext(), ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  public void a(kic paramkic1, kic paramkic2) {
    fvn fvn = new fvn();
    fvn.a(paramkic1.h());
    fvn.b(paramkic1.i());
    fvn.c(paramkic1.j());
    fvn.d(paramkic1.l());
    fvn.e(paramkic1.N());
    fvn.f(paramkic1.n());
    fvn.g(paramkic1.O());
    fvn.h(paramkic1.m());
    fvn.i(paramkic1.n());
    fvn.j(paramkic1.P());
    fvn.k("");
    fvn.l(paramkic2.g());
    fvn.m(paramkic1.R());
    fvn.n("");
    fvn.o(paramkic2.getAutenticacao());
    fvn.p(paramkic1.S());
    fvn.q(paramkic1.c());
    fvn.r(paramkic1.d());
    fvn.s(paramkic1.b());
    fvn.C(paramkic1.f());
    fvn.t(paramkic1.a());
    fvn.u(paramkic1.Y());
    fvn.v(paramkic1.Z());
    fvn.w(paramkic1.aa());
    fvn.x(paramkic1.ab());
    fvn.y(paramkic1.ac());
    fvn.A(paramkic1.ad());
    fvn.B(paramkic1.getTokenTransacao());
    ArrayList arrayList = (ArrayList)this.a.a(paramkic1, true);
    gvb gvb = new gvb();
    gvb.i("");
    gvb.j("");
    gvb.f(false);
    gvb.g("Agendamento de recarga realizado com sucesso");
    gvb.f((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    gvb.b(arrayList);
    gvb.k("Programar Recarga");
    gvb.h(getString(2131298215).replaceAll("@@br", "<br/>"));
    gvb.c(getString(2131298438));
    if (paramkic2 == null) {
      gvb.e(true);
      gvb.d("Não foi possível realizar a recarga programada.");
    } else if (!paramkic2.g().equalsIgnoreCase("")) {
      String[] arrayOfString = paramkic2.g().split("\\|");
      gvb.e(true);
      gvb.d(arrayOfString[1]);
    } else {
      gvb.d("Agendamento de recarga realizado com sucesso");
    } 
    gvb.e(fvn.p());
    gvb.a(RecargaTelefoneActivity.class);
    gvb.p(true);
    frq.d("Outros_RecargaDeTelefone_ReferOper", gvb.k());
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("dadosRecarga", fvn);
    hashMap.put("operadoraTexto", getIntent().getSerializableExtra("operadoraTexto"));
    gvb.a(hashMap);
    Intent intent = new Intent(getApplicationContext(), ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  public void a(kid paramkid, kjg paramkjg) {
    fvn fvn = new fvn();
    fvn.z("");
    fvn.a(paramkid.a());
    fvn.b(paramkid.c());
    fvn.c(paramkid.d());
    fvn.d(paramkid.f());
    fvn.e(paramkid.g());
    fvn.f(paramkid.k());
    fvn.g(paramkid.i());
    fvn.h(paramkid.j());
    fvn.i(paramkid.k());
    fvn.j(paramkid.l());
    fvn.k("");
    fvn.l(paramkjg.a());
    fvn.m(paramkid.o());
    fvn.n("");
    fvn.o(paramkjg.getAutenticacao());
    fvn.p(paramkid.r());
    fvn.q(paramkid.s());
    fvn.r(paramkid.t());
    fvn.s(paramkid.C());
    fvn.C(paramkid.b());
    fvn.t(paramkid.B());
    fvn.u(paramkid.A());
    fvn.v(paramkid.z());
    fvn.w(paramkid.y());
    fvn.x(paramkid.x());
    fvn.y(paramkid.u());
    fvn.A("");
    fvn.B(paramkid.v());
    ArrayList arrayList = (ArrayList)this.a.a(paramkid, true);
    gvb gvb = new gvb();
    gvb.i("");
    gvb.j("");
    gvb.f(false);
    gvb.g("Alteração de recarga realizada com sucesso");
    gvb.f((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    gvb.b(arrayList);
    gvb.k("Programar Recarga");
    gvb.h(getString(2131298215).replaceAll("@@br", "<br/>"));
    gvb.c(getString(2131298438));
    if (paramkjg == null) {
      gvb.e(true);
      gvb.d("Não foi possível realizar a alteração da recarga programada.");
    } else if (!paramkjg.a().equalsIgnoreCase("")) {
      String[] arrayOfString = paramkjg.a().split("\\|");
      gvb.e(true);
      gvb.d(arrayOfString[1]);
    } else {
      gvb.d("Alteração de recarga realizada com sucesso");
    } 
    gvb.e(fvn.p());
    gvb.a(RecargaTelefoneActivity.class);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("dadosRecarga", fvn);
    hashMap.put("operadoraTexto", getIntent().getSerializableExtra("operadoraTexto"));
    gvb.a(hashMap);
    Intent intent = new Intent(getApplicationContext(), ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  public void b() {
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968733);
    this.a = new kki(this, getIntent());
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, null);
    ((ValidacionOperacionFragment)getSupportFragmentManager().findFragmentById(2131755987)).b(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\recargatelefone\recargavalidacao\presentation\RecargaValidacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */