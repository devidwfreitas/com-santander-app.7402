package com.santander.app.fingerprint.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import frq;
import grs;
import iev;
import ifi;
import ifj;
import ifk;
import ifl;
import ifm;
import ifn;
import ifo;
import ift;
import ifu;
import java.io.Serializable;

public class FingerprintReceiptActivity extends grs implements ifo {
  private ift a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private Button e;
  
  private Button f;
  
  private PlayGifView g;
  
  private void a(int paramInt) {
    setResult(paramInt, new Intent());
    finish();
  }
  
  private void a(iev paramiev) {
    Intent intent = new Intent((Context)this, FingerprintUpdateStatusActivity.class);
    intent.putExtra("action", (Serializable)paramiev);
    startActivity(intent);
    finish();
  }
  
  public void a() {
    frq.a("Biometria_Habilitar");
    this.e.setVisibility(0);
    this.f.setVisibility(4);
    this.d.setVisibility(4);
    this.g.setGifResource(2130838286);
    this.b.setText(getResources().getString(2131297477));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131297475)));
    this.e.setText(getResources().getString(2131297473));
    this.e.setOnClickListener((View.OnClickListener)new ifi(this));
  }
  
  public void a(String paramString, iev paramiev) {
    byte b = 0;
    frq.b("Biometria_Habilitar", "Processo interrompido");
    this.e.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setGifResource(2130838285);
    this.b.setText(getResources().getString(2131297472));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131297471)));
    this.e.setText(getResources().getString(2131297466));
    this.e.setOnClickListener((View.OnClickListener)new ifk(this, paramiev));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131297468)));
    this.f.setOnClickListener((View.OnClickListener)new ifl(this));
    TextView textView = this.d;
    if (paramString.equals(""))
      b = 4; 
    textView.setVisibility(b);
    this.d.setText(getResources().getString(2131297469).replace("%data%", paramString));
  }
  
  public void b() {
    frq.a("Biometria_Desabilitar");
    this.e.setVisibility(0);
    this.f.setVisibility(4);
    this.d.setVisibility(4);
    this.g.setGifResource(2130838286);
    this.b.setText(getResources().getString(2131297476));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131297474)));
    this.e.setText(getResources().getString(2131297473));
    this.e.setOnClickListener((View.OnClickListener)new ifj(this));
  }
  
  public void b(String paramString, iev paramiev) {
    byte b = 0;
    frq.b("Biometria_Desabilitar", "Processo interrompido");
    this.e.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setGifResource(2130838285);
    this.b.setText(getResources().getString(2131297472));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131297470)));
    this.e.setText(getResources().getString(2131297466));
    this.e.setOnClickListener((View.OnClickListener)new ifm(this, paramiev));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131297467)));
    this.f.setOnClickListener((View.OnClickListener)new ifn(this));
    TextView textView = this.d;
    if (paramString.equals(""))
      b = 4; 
    textView.setVisibility(b);
    this.d.setText(getResources().getString(2131297469).replace("%data%", paramString));
  }
  
  public void onBackPressed() {
    a(0);
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
    this.a = (ift)new ifu(this, (Activity)this);
    this.a.a(getIntent());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\fingerprint\presentation\FingerprintReceiptActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */