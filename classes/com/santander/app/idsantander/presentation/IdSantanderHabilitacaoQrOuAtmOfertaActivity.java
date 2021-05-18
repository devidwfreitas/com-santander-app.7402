package com.santander.app.idsantander.presentation;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import grs;
import izf;
import izg;
import izh;
import izi;
import izj;
import izk;
import izl;
import miq;
import mzr;
import nat;

public class IdSantanderHabilitacaoQrOuAtmOfertaActivity extends grs implements izl {
  private LinearLayout a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private Button e;
  
  private Button f;
  
  private PlayGifView g;
  
  private void a() {
    this.a.setVisibility(0);
    this.e.setVisibility(0);
    this.f.setVisibility(0);
    this.d.setVisibility(4);
    this.g.setGifResource(2130838876);
    this.b.setText(2131299026);
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298644)));
    this.a.addView(getLayoutInflater().inflate(2130969174, null));
    this.a.findViewById(2131758189).setOnClickListener((View.OnClickListener)new izf(this));
    this.a.findViewById(2131758187).setOnClickListener((View.OnClickListener)new izg(this));
    this.e.setText(getResources().getString(2131296670));
    this.e.setOnClickListener((View.OnClickListener)new izh(this));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131296669)));
    this.f.setOnClickListener((View.OnClickListener)new izi(this));
  }
  
  private void b() {
    startActivity(new Intent((Context)this, IdSantanderHabilitacaoQrOfertaActivity.class));
  }
  
  private void c() {
    startActivity(new Intent((Context)this, IdSantanderHabilitacaoAtmInstrucoesActivity.class));
  }
  
  private void d() {
    (new AlertDialog.Builder((Context)this)).setTitle((CharSequence)Html.fromHtml(getResources().getString(2131299021))).setMessage(2131298604).setCancelable(false).setPositiveButton(2131296670, (DialogInterface.OnClickListener)new izk(this)).setNegativeButton(2131296671, (DialogInterface.OnClickListener)new izj(this)).create().show();
  }
  
  private void e() {
    getSharedPreferences(nat.VER_MENSAGEM_QR.name(), 0).edit().putBoolean(mzr.n(), false).commit();
    f();
  }
  
  private void f() {
    miq.C().f().y().f(Boolean.valueOf(false));
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.b = (TextView)findViewById(2131755821);
    this.c = (TextView)findViewById(2131755822);
    this.d = (TextView)findViewById(2131755864);
    this.e = (Button)findViewById(2131755855);
    this.f = (Button)findViewById(2131755858);
    this.g = (PlayGifView)findViewById(2131755820);
    this.a = (LinearLayout)findViewById(2131755859);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderHabilitacaoQrOuAtmOfertaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */