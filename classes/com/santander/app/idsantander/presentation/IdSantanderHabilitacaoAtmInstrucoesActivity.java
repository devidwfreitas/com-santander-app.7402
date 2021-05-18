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
import iza;
import izb;
import izc;
import miq;

public class IdSantanderHabilitacaoAtmInstrucoesActivity extends grs {
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
    this.f.setVisibility(8);
    this.d.setVisibility(4);
    this.g.setGifResource(2130838876);
    this.b.setText(2131299026);
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298612)));
    this.e.setText(getResources().getString(2131296670));
    this.e.setOnClickListener((View.OnClickListener)new iza(this));
    this.a.addView(getLayoutInflater().inflate(2130969175, null));
    ((TextView)this.a.findViewById(2131758190)).setText((CharSequence)Html.fromHtml(getResources().getString(2131296996)));
    ((TextView)this.a.findViewById(2131758188)).setText((CharSequence)Html.fromHtml(getResources().getString(2131296997)));
  }
  
  private void b() {
    (new AlertDialog.Builder((Context)this)).setTitle((CharSequence)Html.fromHtml(getResources().getString(2131299021))).setMessage(2131298604).setCancelable(false).setPositiveButton(2131296670, (DialogInterface.OnClickListener)new izc(this)).setNegativeButton(2131296671, (DialogInterface.OnClickListener)new izb(this)).create().show();
  }
  
  private void c() {
    miq.C().f().y().f(Boolean.valueOf(false));
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderHabilitacaoAtmInstrucoesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */