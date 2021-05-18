package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.components.view.zxing.CustomQrScannerActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import evq;
import evr;
import gpu;
import grs;
import izd;
import ize;
import izo;
import jar;
import jav;

public class IdSantanderHabilitacaoQrOfertaActivity extends grs implements izo {
  public static boolean a;
  
  private LinearLayout b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private Button f;
  
  private Button g;
  
  private PlayGifView w;
  
  private jav x;
  
  private final int y = 999;
  
  private void a(String paramString) {
    Intent intent = new Intent((Context)this, IdSantanderHabilitacaoActivity.class);
    intent.putExtra("qr", true);
    intent.putExtra("content", paramString);
    startActivity(intent);
  }
  
  private void c() {
    this.b.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    this.e.setVisibility(4);
    this.w.setGifResource(2130838876);
    this.c.setText(2131299026);
    this.d.setText((CharSequence)Html.fromHtml(getResources().getString(2131298638)));
    this.f.setText(getResources().getString(2131296666));
    this.f.setOnClickListener(a((Activity)this));
    this.g.setText((CharSequence)Html.fromHtml(getResources().getString(2131296673)));
    this.g.setOnClickListener((View.OnClickListener)new izd(this));
    this.b.addView(getLayoutInflater().inflate(2130969175, null));
    ((TextView)this.b.findViewById(2131758190)).setText((CharSequence)Html.fromHtml(getResources().getString(2131296998)));
    ((TextView)this.b.findViewById(2131758188)).setText((CharSequence)Html.fromHtml(getResources().getString(2131296999)));
    this.x = (jav)new jar(this, (AppCompatActivity)this);
    if (a) {
      a = false;
      f();
    } 
  }
  
  private void d() {
    startActivityForResult(new Intent((Context)this, IdSantanderTutorialCapturaQrCodeActivity.class), 999);
  }
  
  private void e() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  private void f() {
    evq evq = new evq((Activity)this);
    evq.b(false);
    evq.a(true);
    evq.a(CustomQrScannerActivity.class);
    evq.b(evq.d);
  }
  
  public View.OnClickListener a(Activity paramActivity) {
    return (View.OnClickListener)new ize(this, paramActivity);
  }
  
  public void a() {}
  
  public void a(int paramInt) {}
  
  public void a(View.OnClickListener paramOnClickListener) {}
  
  public void b() {}
  
  public void b(View.OnClickListener paramOnClickListener) {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    if (paramInt1 == 999) {
      if (paramInt2 == 0)
        this.f.callOnClick(); 
      return;
    } 
    evr evr = evq.a(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != 1) {
      String str;
      if (paramInt2 == 0 || paramInt2 == 3) {
        e();
        return;
      } 
      if (evr != null && evr.a() != null) {
        str = evr.a();
      } else {
        str = "";
      } 
      a(str);
      return;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.c = (TextView)findViewById(2131755821);
    this.d = (TextView)findViewById(2131755822);
    this.e = (TextView)findViewById(2131755864);
    this.f = (Button)findViewById(2131755855);
    this.g = (Button)findViewById(2131755858);
    this.w = (PlayGifView)findViewById(2131755820);
    this.b = (LinearLayout)findViewById(2131755859);
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderHabilitacaoQrOfertaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */