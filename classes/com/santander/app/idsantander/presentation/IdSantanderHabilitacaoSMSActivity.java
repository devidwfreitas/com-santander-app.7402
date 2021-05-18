package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import izm;
import jat;
import jau;
import naf;

public class IdSantanderHabilitacaoSMSActivity extends grs implements izm {
  private PlayGifView a;
  
  private TextView b;
  
  private TextView c;
  
  private jat d;
  
  public void a(Intent paramIntent) {
    startActivity(paramIntent);
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    String str;
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    if (getIntent().hasExtra("content")) {
      str = getIntent().getStringExtra("content");
    } else {
      str = "";
    } 
    this.a = (PlayGifView)findViewById(2131755820);
    this.b = (TextView)findViewById(2131755821);
    this.c = (TextView)findViewById(2131755822);
    this.a.setGifResource(2130838875);
    this.b.setText(getResources().getString(2131299040));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298635)));
    this.d = (jat)new jau(this, (Activity)this);
    try {
      String str1 = (new naf()).b(str.getBytes("UTF-8"));
      str = str1;
    } catch (Exception exception) {
      Log.e("ERROR_ENCRYPT", exception.getMessage());
    } 
    this.d.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderHabilitacaoSMSActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */