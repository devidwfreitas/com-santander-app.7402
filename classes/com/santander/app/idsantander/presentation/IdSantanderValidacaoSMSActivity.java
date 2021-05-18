package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.Html;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import grs;
import iut;
import iuz;
import izw;
import izx;
import izy;
import izz;
import jaa;
import java.io.Serializable;
import jbc;
import jbd;
import miq;
import mzr;
import nat;

public class IdSantanderValidacaoSMSActivity extends grs implements jaa {
  public Boolean a = Boolean.valueOf(false);
  
  private jbc b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private Button g;
  
  private Button w;
  
  private PlayGifView x;
  
  private LinearLayout y;
  
  private BroadcastReceiver z = (BroadcastReceiver)new izw(this);
  
  private void a(Boolean paramBoolean) {
    RelativeLayout relativeLayout = (RelativeLayout)this.y.findViewById(2131755856);
    if (paramBoolean.booleanValue()) {
      relativeLayout.setVisibility(0);
      return;
    } 
    relativeLayout.setVisibility(8);
  }
  
  private void b(Boolean paramBoolean) {
    getSharedPreferences("x", 0).edit().putBoolean("0", paramBoolean.booleanValue()).commit();
  }
  
  private void d() {
    iuz iuz;
    this.g.setVisibility(4);
    this.w.setVisibility(4);
    this.f.setVisibility(4);
    if (getIntent().hasExtra("content")) {
      iuz = (iuz)getIntent().getSerializableExtra("content");
    } else {
      iuz = new iuz("");
    } 
    this.x.setGifResource(2130838876);
    this.d.setText(getResources().getString(2131299026));
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131298652).replace("%data%", iuz.d())));
    this.c.addTextChangedListener(g());
    this.w.setText((CharSequence)Html.fromHtml(getResources().getString(2131296611)));
    this.w.setOnClickListener((View.OnClickListener)new izx(this));
    registerReceiver(this.z, new IntentFilter("S"));
    this.b = (jbc)new jbd(this, (Activity)this);
    this.b.a(iuz);
    this.b.a();
  }
  
  private void e() {
    startActivity((new Intent((Context)this, IdSantanderHabilitacaoSMSActivity.class)).putExtra("content", this.c.getText().toString()));
  }
  
  private void f() {
    this.b.d().removeCallbacksAndMessages(null);
    miq.C().f().y().a(false);
    getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), true).commit();
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  private TextWatcher g() {
    return (TextWatcher)new izz(this);
  }
  
  public void a() {
    this.y = (LinearLayout)findViewById(2131755859);
    this.y.addView(getLayoutInflater().inflate(2130969180, null));
    this.y.setVisibility(0);
  }
  
  public void b() {
    try {
      unregisterReceiver(this.z);
    } catch (Exception exception) {
      Log.i("SMS_ALREADY_UNREGISTRED", exception.getMessage());
    } 
    a(Boolean.valueOf(false));
    this.c.setEnabled(true);
    Button button = (Button)this.y.findViewById(2131758199);
    button.setText((CharSequence)Html.fromHtml(getResources().getString(2131296672)));
    button.setVisibility(0);
    button.setEnabled(true);
    button.setOnClickListener((View.OnClickListener)new izy(this, button));
  }
  
  public void c() {
    Intent intent = new Intent((Context)this, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", (Serializable)iut.PROCESSO_INTERROMPIDO);
    intent.putExtra("content", "-1");
    startActivity(intent);
  }
  
  public void onBackPressed() {
    this.b.d().removeCallbacksAndMessages(null);
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    b(Boolean.valueOf(true));
    a();
    this.c = (TextView)this.y.findViewById(2131755832);
    this.d = (TextView)findViewById(2131755821);
    this.e = (TextView)findViewById(2131755822);
    this.f = (TextView)findViewById(2131755864);
    this.g = (Button)findViewById(2131755855);
    this.w = (Button)findViewById(2131755858);
    this.x = (PlayGifView)findViewById(2131755820);
    d();
  }
  
  protected void onDestroy() {
    super.onPause();
    try {
      unregisterReceiver(this.z);
    } catch (Exception exception) {
      Log.i("SMS_ALREADY_UNREGISTRED", exception.getMessage());
    } 
    b(Boolean.valueOf(false));
  }
  
  protected void onPause() {
    super.onPause();
    b(Boolean.valueOf(false));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderValidacaoSMSActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */