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
import gpu;
import grs;
import iev;
import iff;
import ifg;
import ifh;
import ifq;
import ifr;
import java.io.Serializable;

public class FingerprintEnablingActivity extends grs implements ifh {
  public static final int a = 1123;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private Button e;
  
  private Button f;
  
  private PlayGifView g;
  
  private ifq w;
  
  public void a() {
    this.w.a();
    this.e.setVisibility(0);
    this.f.setVisibility(0);
    this.d.setVisibility(4);
    this.g.setGifResource(2130838288);
    this.b.setText(getResources().getString(2131297462));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131297461)));
    this.e.setText(getResources().getString(2131297457));
    this.e.setOnClickListener((View.OnClickListener)new iff(this));
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131297458)));
    this.f.setOnClickListener((View.OnClickListener)new ifg(this));
  }
  
  public void a(iev paramiev) {
    Intent intent = new Intent((Context)this, FingerprintUpdateStatusActivity.class);
    intent.putExtra("action", (Serializable)paramiev);
    startActivityForResult(intent, 1123);
  }
  
  public void b() {
    setResult(0, new Intent());
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1123) {
      if (paramInt2 == -1) {
        gpu.a();
        setResult(-1, new Intent());
        finish();
        return;
      } 
    } else {
      return;
    } 
    setResult(0, new Intent());
    finish();
  }
  
  public void onBackPressed() {
    b();
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
    this.w = (ifq)new ifr(this, (Activity)this);
    this.w.a(getIntent());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\fingerprint\presentation\FingerprintEnablingActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */