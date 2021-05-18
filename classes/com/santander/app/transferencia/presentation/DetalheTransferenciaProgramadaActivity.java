package com.santander.app.transferencia.presentation;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gpu;
import grs;
import gvb;
import java.io.Serializable;
import mkz;
import mlr;
import mnt;
import mnw;
import mpu;
import mpv;
import nai;
import naj;
import naq;
import nau;

@SuppressLint({"NewApi"})
public class DetalheTransferenciaProgramadaActivity extends grs implements mnw, nau {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private TextView E;
  
  private TextView F;
  
  private TextView G;
  
  private TextView H;
  
  private TextView I;
  
  private TextView J;
  
  private TextView K;
  
  private TextView L;
  
  private TextView M;
  
  private TextView N;
  
  private Button O;
  
  private ScrollView P;
  
  private LinearLayout Q;
  
  private AlertDialog R;
  
  private FragmentTransaction S;
  
  private mpu T;
  
  private mlr U;
  
  private Conta V;
  
  private mkz W;
  
  public Dialog d = null;
  
  public Activity e;
  
  private final String f = "SelecaoTransferenciaProgramadaActivity";
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void d() {
    this.P = (ScrollView)findViewById(2131759490);
    this.Q = (LinearLayout)findViewById(2131759561);
    this.g = (TextView)findViewById(2131759493);
    this.w = (TextView)findViewById(2131759495);
    this.x = (TextView)findViewById(2131759497);
    this.z = (TextView)findViewById(2131759500);
    this.A = (TextView)findViewById(2131759502);
    this.D = (TextView)findViewById(2131759504);
    this.B = (TextView)findViewById(2131759506);
    this.C = (TextView)findViewById(2131759508);
    this.y = (TextView)findViewById(2131759512);
    this.F = (TextView)findViewById(2131759514);
    this.E = (TextView)findViewById(2131759515);
    this.G = (TextView)findViewById(2131759518);
    this.H = (TextView)findViewById(2131759520);
    this.I = (TextView)findViewById(2131759522);
    this.J = (TextView)findViewById(2131759523);
    this.K = (TextView)findViewById(2131759510);
    this.L = (TextView)findViewById(2131759509);
    this.N = (TextView)findViewById(2131759525);
    this.M = (TextView)findViewById(2131759524);
    this.O = (Button)findViewById(2131755277);
    this.U = (mlr)getIntent().getSerializableExtra("transferenciaProgramada");
    this.V = (Conta)getIntent().getSerializableExtra("contaSelecionada");
    this.O.setOnClickListener((View.OnClickListener)new mnt(this));
    this.T = (mpu)new mpv(this);
    this.T.a(this.U);
  }
  
  public void a() {
    this.P.setVisibility(8);
    this.Q.setVisibility(0);
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131759561) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(0);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131759561, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.S = getSupportFragmentManager().beginTransaction();
    b();
  }
  
  public void a(gvb paramgvb) {
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)paramgvb);
    startActivity(intent);
  }
  
  public void a(mkz parammkz) {
    long l;
    this.W = parammkz;
    this.g.setText(this.v.f().j());
    this.w.setText(parammkz.b());
    this.x.setText(naq.h(parammkz.e()));
    this.z.setText(parammkz.h());
    this.A.setText(parammkz.c());
    this.D.setText(parammkz.j());
    this.B.setText(parammkz.a());
    if (parammkz.c() != null)
      if (parammkz.c().contains("SANTANDER")) {
        String str1 = "";
        String str2 = str1;
        if (parammkz.d().length() < 12) {
          int j = parammkz.d().length();
          int i = 0;
          while (true) {
            str2 = str1;
            if (i < 12 - j) {
              str1 = str1 + "0";
              i++;
              continue;
            } 
            break;
          } 
        } 
        str1 = str2 + parammkz.d();
        this.C.setText(naq.h(str1));
      } else {
        this.C.setText(parammkz.d());
      }  
    this.y.setText(parammkz.o());
    this.F.setText(parammkz.i());
    this.E.setText(parammkz.n());
    this.G.setText(parammkz.g());
    this.H.setText(parammkz.l());
    this.I.setText(parammkz.m().substring(1));
    if (parammkz.p() != null)
      this.J.setText(naj.a(Double.parseDouble(parammkz.p()))); 
    if (parammkz.f() != null) {
      l = Long.parseLong(parammkz.f());
    } else {
      l = 0L;
    } 
    Long long_ = Long.valueOf(l);
    if (nai.d(long_) || nai.c(long_)) {
      this.K.setText(nai.c(nai.a(long_.longValue(), false)));
    } else {
      this.L.setVisibility(8);
      this.K.setVisibility(8);
    } 
    if (parammkz.k() != null) {
      this.N.setText(parammkz.k());
      return;
    } 
    this.M.setVisibility(8);
    this.N.setVisibility(8);
  }
  
  public void b() {
    this.T.a(this.V, this.U);
  }
  
  public mkz c() {
    return this.W;
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969482);
    this.e = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, "Transf. Programada");
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transferencia\presentation\DetalheTransferenciaProgramadaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */