package com.santander.app.idsantander.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import izo;
import jav;
import jaw;

public class IdSantanderOfertaActivity extends grs implements izo {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private Button d;
  
  private Button e;
  
  private PlayGifView f;
  
  private jav g;
  
  private void c() {
    this.d.setVisibility(0);
    this.c.setVisibility(4);
    this.f.setGifResource(2130838876);
    this.a.setText(2131299026);
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298637)));
    this.d.setText(getResources().getString(2131296610));
    this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131296611)));
    this.g = (jav)new jaw(this, (AppCompatActivity)this);
    this.g.a();
    this.g.a(getIntent().getExtras().get("tipoConversao"));
  }
  
  public void a() {
    startActivity(new Intent((Context)this.i, IdSantanderAtivarCartaoActivity.class));
  }
  
  public void a(int paramInt) {
    this.e.setVisibility(paramInt);
  }
  
  public void a(View.OnClickListener paramOnClickListener) {
    this.d.setOnClickListener(paramOnClickListener);
  }
  
  public void b() {
    startActivity(new Intent((Context)this.i, IdSantanderDesafioCsoActivity.class));
  }
  
  public void b(View.OnClickListener paramOnClickListener) {
    this.e.setOnClickListener(paramOnClickListener);
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.a = (TextView)findViewById(2131755821);
    this.b = (TextView)findViewById(2131755822);
    this.c = (TextView)findViewById(2131755864);
    this.d = (Button)findViewById(2131755855);
    this.e = (Button)findViewById(2131755858);
    this.f = (PlayGifView)findViewById(2131755820);
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderOfertaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */