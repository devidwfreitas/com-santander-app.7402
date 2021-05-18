package com.santander.app.meuperfil.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import grs;
import jqw;
import jqx;
import jqy;
import jqz;
import jrb;
import jrc;
import naq;

public class EscolhaContaPreferencialComprovanteActivity extends grs implements jqz {
  private ActionBar a;
  
  private LinearLayout b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private Button f;
  
  private Button g;
  
  private PlayGifView w;
  
  private jrb x;
  
  private void b() {
    if (this.a != null)
      this.a.hide(); 
  }
  
  private void c() {
    startActivity(new Intent((Context)this, EscolhaContaPreferencialActivity.class));
  }
  
  private void d() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  public void a() {
    b();
    this.b.setVisibility(4);
    this.f.setVisibility(0);
    this.g.setVisibility(4);
    this.e.setVisibility(4);
    this.w.setGifResource(2130838656);
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131299025)));
    this.d.setText((CharSequence)Html.fromHtml(getResources().getString(2131298607).replace("#conta#", naq.c(this.v.f().f(), this.v.f().g()))));
    this.f.setText(getResources().getString(2131296663));
    this.f.setOnClickListener((View.OnClickListener)new jqw(this));
  }
  
  public void a(String paramString) {
    b();
    this.b.setVisibility(4);
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    this.e.setVisibility(0);
    this.w.setGifResource(2130838655);
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131299024)));
    this.d.setText((CharSequence)Html.fromHtml(getResources().getString(2131298606)));
    this.f.setText(getResources().getString(2131296662));
    this.f.setOnClickListener((View.OnClickListener)new jqx(this));
    this.g.setText((CharSequence)Html.fromHtml(getResources().getString(2131296681)));
    this.g.setOnClickListener((View.OnClickListener)new jqy(this));
    this.e.setText(getResources().getString(2131297389).replace("%data%", paramString));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968693);
    this.a = getSupportActionBar();
    this.c = (TextView)findViewById(2131755821);
    this.d = (TextView)findViewById(2131755822);
    this.e = (TextView)findViewById(2131755864);
    this.f = (Button)findViewById(2131755855);
    this.g = (Button)findViewById(2131755858);
    this.w = (PlayGifView)findViewById(2131755820);
    this.b = (LinearLayout)findViewById(2131755859);
    this.x = (jrb)new jrc(this, getIntent());
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\presentation\EscolhaContaPreferencialComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */