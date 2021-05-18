package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import gyx;
import izq;
import izr;
import jba;
import jbb;

public class IdSantanderSincroniaActivity extends grs implements izr {
  private PlayGifView a;
  
  private TextView b;
  
  private TextView c;
  
  private jba d;
  
  public void a(Intent paramIntent) {
    startActivity(paramIntent);
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.a = (PlayGifView)findViewById(2131755820);
    this.b = (TextView)findViewById(2131755821);
    this.c = (TextView)findViewById(2131755822);
    this.a.setGifResource(2130838879);
    this.b.setText(getResources().getString(2131299027));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298646)));
    this.d = (jba)new jbb(this, (Activity)this);
    this.d.a((gyx)new izq(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderSincroniaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */