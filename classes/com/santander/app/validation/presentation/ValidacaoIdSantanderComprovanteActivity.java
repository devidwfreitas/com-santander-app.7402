package com.santander.app.validation.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import gpu;
import grs;
import ncz;
import nda;
import ndu;
import ndv;

public class ValidacaoIdSantanderComprovanteActivity extends grs implements nda {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private Button d;
  
  private Button e;
  
  private Button f;
  
  private ImageView g;
  
  private ndu w;
  
  private void a() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  public void a(int paramInt, String paramString1, String paramString2) {
    this.c.setVisibility(paramInt);
    this.c.setText(getResources().getString(2131297609).replace("%data%", paramString1));
    this.d.setOnClickListener((View.OnClickListener)new ncz(this));
  }
  
  public void onBackPressed() {
    a();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    setContentView(2130968695);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, null);
    this.a = (TextView)findViewById(2131755821);
    this.a.setText(getResources().getString(2131299057));
    this.b = (TextView)findViewById(2131755822);
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298653)));
    this.c = (TextView)findViewById(2131755864);
    this.d = (Button)findViewById(2131755855);
    this.d.setText(getResources().getString(2131296613));
    this.e = (Button)findViewById(2131755858);
    this.e.setVisibility(8);
    this.f = (Button)findViewById(2131755863);
    this.f.setVisibility(8);
    this.g = (ImageView)findViewById(2131755862);
    this.g.setImageResource(2130838854);
    this.w = (ndu)new ndv(this);
    ndu ndu1 = this.w;
    if (getIntent().hasExtra("content")) {
      String str = getIntent().getExtras().getString("content");
    } else {
      actionBar = null;
    } 
    ndu1.a((String)actionBar);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\validation\presentation\ValidacaoIdSantanderComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */