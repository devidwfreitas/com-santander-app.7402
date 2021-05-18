package com.santander.app.cambio.transferenciaexterior.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import frq;
import gaq;
import gcd;
import gdi;
import gdj;
import gpu;
import grs;
import gvb;
import java.io.Serializable;
import nau;

public class CambioConfirmacaoActivity extends grs implements View.OnClickListener, gcd, nau {
  private SantanderTextView A;
  
  private SantanderTextView B;
  
  private SantanderTextView C;
  
  private SantanderTextView D;
  
  private SantanderTextView E;
  
  private SantanderTextView F;
  
  private SantanderTextView G;
  
  private SantanderTextView H;
  
  private SantanderTextView I;
  
  private SantanderTextView J;
  
  private SantanderTextView K;
  
  private SantanderTextView L;
  
  private SantanderTextView M;
  
  private SantanderTextView N;
  
  private SantanderTextView O;
  
  private SantanderButtonView P;
  
  private gaq Q;
  
  private LinearLayout a;
  
  private LinearLayout b;
  
  private gdi c;
  
  private final int d = 1;
  
  private SantanderTextView e;
  
  private SantanderTextView f;
  
  private SantanderTextView g;
  
  private SantanderTextView w;
  
  private SantanderTextView x;
  
  private SantanderTextView y;
  
  private SantanderTextView z;
  
  private void b() {
    this.Q = (gaq)getIntent().getExtras().getSerializable("cambio_dados");
    this.b = (LinearLayout)findViewById(2131755343);
    this.b.setVisibility(0);
    this.a = (LinearLayout)findViewById(2131758302);
    this.a.setVisibility(8);
    this.c = (gdi)new gdj(this);
    this.P = (SantanderButtonView)findViewById(2131757765);
    this.P.setOnClickListener(this);
    this.e = (SantanderTextView)findViewById(2131757743);
    this.f = (SantanderTextView)findViewById(2131757744);
    this.g = (SantanderTextView)findViewById(2131757745);
    this.w = (SantanderTextView)findViewById(2131757746);
    this.x = (SantanderTextView)findViewById(2131757747);
    this.y = (SantanderTextView)findViewById(2131757748);
    this.z = (SantanderTextView)findViewById(2131757749);
    this.A = (SantanderTextView)findViewById(2131757750);
    this.B = (SantanderTextView)findViewById(2131757751);
    this.C = (SantanderTextView)findViewById(2131757752);
    this.D = (SantanderTextView)findViewById(2131757753);
    this.E = (SantanderTextView)findViewById(2131757754);
    this.F = (SantanderTextView)findViewById(2131757757);
    this.G = (SantanderTextView)findViewById(2131757756);
    this.H = (SantanderTextView)findViewById(2131757755);
    this.I = (SantanderTextView)findViewById(2131757758);
    this.J = (SantanderTextView)findViewById(2131757759);
    this.K = (SantanderTextView)findViewById(2131757760);
    this.L = (SantanderTextView)findViewById(2131757761);
    this.M = (SantanderTextView)findViewById(2131757762);
    this.N = (SantanderTextView)findViewById(2131757763);
    this.O = (SantanderTextView)findViewById(2131757764);
    this.c.b(this.Q);
  }
  
  private void b(gaq paramgaq) {
    frq.d("ServicosInternacionais_Cambio_Confirmacao_Pais", paramgaq.d());
    frq.d("ServicosInternacionais_Cambio_Confirmacao_MoedaEstrangeira", paramgaq.c());
    frq.d("ServicosInternacionais_Cambio_Confirmacao_MoedaNacional", paramgaq.b());
    frq.d("ServicosInternacionais_Cambio_Confirmacao_ValorCorrespondente", paramgaq.C());
  }
  
  public void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131758302) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131758302, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
    this.a.setVisibility(0);
    this.b.setVisibility(8);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.c.a(this.Q);
  }
  
  public void a(gaq paramgaq) {
    this.e.setText(paramgaq.r());
    this.f.setText(paramgaq.A());
    this.g.setText(paramgaq.e());
    this.w.setText(paramgaq.t());
    this.x.setText(paramgaq.u());
    this.y.setText(paramgaq.w());
    this.z.setText(paramgaq.j());
    this.A.setText(paramgaq.d());
    this.B.setText(paramgaq.k());
    this.C.setText(paramgaq.s());
    this.D.setText(paramgaq.p());
    this.E.setText(paramgaq.y());
    this.F.setText(paramgaq.b());
    this.G.setText(paramgaq.B());
    this.H.setText(paramgaq.c());
    this.I.setText(paramgaq.C());
    this.J.setText(paramgaq.G());
    this.K.setText(paramgaq.E());
    this.L.setText(paramgaq.D());
    this.M.setText(paramgaq.F());
    this.N.setText(paramgaq.I());
    this.O.setText(paramgaq.H());
    b(paramgaq);
  }
  
  public void a(gvb paramgvb) {
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)paramgvb);
    startActivity(intent);
  }
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131757765:
        break;
    } 
    frq.d("ServicosInternacionais_Cambio_Confirmacao_Acao", "Confirmar");
    this.c.a();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968621);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131296951));
    try {
      b();
      return;
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      Log.e("Error", cloneNotSupportedException.toString());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cambio\transferenciaexterior\presentation\CambioConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */