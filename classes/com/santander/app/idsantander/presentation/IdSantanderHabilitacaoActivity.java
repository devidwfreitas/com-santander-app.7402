package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import gyx;
import iyy;
import iyz;
import izn;
import jap;
import jaq;

public class IdSantanderHabilitacaoActivity extends grs implements izn {
  private PlayGifView a;
  
  private TextView b;
  
  private TextView c;
  
  private jap d;
  
  private boolean e;
  
  private boolean f;
  
  private void a() {
    startActivity(new Intent((Context)this, IdSantanderEscolhaCelularActivity.class));
  }
  
  public void a(Intent paramIntent) {
    startActivity(paramIntent);
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    boolean bool2 = false;
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968693);
    this.a = (PlayGifView)findViewById(2131755820);
    this.b = (TextView)findViewById(2131755821);
    this.c = (TextView)findViewById(2131755822);
    this.a.setGifResource(2130838875);
    this.b.setText(getResources().getString(2131299027));
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298635)));
    this.d = (jap)new jaq(this, (Activity)this);
    if (getIntent().hasExtra("qr")) {
      bool1 = getIntent().getExtras().getBoolean("qr");
    } else {
      bool1 = false;
    } 
    this.e = bool1;
    boolean bool1 = bool2;
    if (getIntent().hasExtra("atm"))
      bool1 = getIntent().getExtras().getBoolean("atm"); 
    this.f = bool1;
    if (this.e) {
      jap jap1 = this.d;
      iyy iyy = new iyy(this);
      if (getIntent().hasExtra("content")) {
        String str = getIntent().getExtras().getString("content");
      } else {
        paramBundle = null;
      } 
      jap1.a((gyx)iyy, (String)paramBundle);
      return;
    } 
    if (this.d.a()) {
      a();
      return;
    } 
    this.d.a((gyx)new iyz(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderHabilitacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */