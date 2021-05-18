package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import gpu;
import grs;
import iye;
import iyf;
import jah;
import jai;

public class IdSantanderConversaoActivity extends grs implements iyf {
  private TextView a;
  
  private TextView b;
  
  private Button c;
  
  private PlayGifView d;
  
  private jah e;
  
  public void a() {
    this.d.setGifResource(2130838876);
    this.a.setText(getResources().getString(2131299026));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298625)));
    this.c.setVisibility(0);
    this.c.setText(getResources().getString(2131296609));
    this.c.setOnClickListener((View.OnClickListener)new iye(this));
  }
  
  public void a(Intent paramIntent) {
    startActivity(paramIntent);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    setContentView(2130968693);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, null);
    this.d = (PlayGifView)findViewById(2131755820);
    this.a = (TextView)findViewById(2131755821);
    this.b = (TextView)findViewById(2131755822);
    this.c = (Button)findViewById(2131755855);
    this.e = (jah)new jai(this, (Activity)this);
    this.e.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderConversaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */