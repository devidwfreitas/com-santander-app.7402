package com.santander.app.fingerprint.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import gpu;
import grs;
import iev;
import ifp;
import ifw;
import ifx;
import java.io.Serializable;

public class FingerprintUpdateStatusActivity extends grs implements ifp {
  public static int a = 1123;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private Button e;
  
  private Button f;
  
  private PlayGifView g;
  
  private ifw w;
  
  public void a() {
    gpu.a((Activity)this, getSupportActionBar(), null);
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
    finish();
  }
  
  public void a(iev paramiev, String paramString, boolean paramBoolean) {
    Intent intent = new Intent((Context)this, FingerprintReceiptActivity.class);
    intent.putExtra("action", (Serializable)paramiev);
    intent.putExtra("content", paramString);
    intent.putExtra("kind", paramBoolean);
    startActivityForResult(intent, a);
  }
  
  public void b() {
    this.e.setVisibility(4);
    this.f.setVisibility(4);
    this.d.setVisibility(4);
    this.g.setGifResource(2130838287);
    this.b.setText(getResources().getString(2131297480));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131297479)));
    this.w.a(true);
  }
  
  public void c() {
    this.e.setVisibility(4);
    this.f.setVisibility(4);
    this.d.setVisibility(4);
    this.g.setGifResource(2130838287);
    this.b.setText(getResources().getString(2131297480));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131297478)));
    this.w.a(false);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == a) {
      if (paramInt2 == -1) {
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
    this.w = (ifw)new ifx(this, (Activity)this);
    this.w.a(getIntent());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\fingerprint\presentation\FingerprintUpdateStatusActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */