package com.santander.app.lojaonline.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.text.Html;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.lojaonline.domain.LojaTerm;
import gpu;
import grs;
import jnu;
import jod;
import joe;
import mxn;

public class LojaOnlineTermsActivity extends grs implements jnu {
  private jod a;
  
  private Dialog b;
  
  private TextView c;
  
  private LinearLayout d;
  
  private void a(int paramInt) {
    this.d.setBackgroundColor(paramInt);
  }
  
  private void a(String paramString) {
    gpu.b(getSupportActionBar(), paramString);
  }
  
  private void b(int paramInt) {
    this.c.setTextColor(paramInt);
  }
  
  private void b(String paramString) {
    this.c.setText((CharSequence)Html.fromHtml(paramString));
  }
  
  public void a() {
    b();
    this.b = mxn.b((Activity)this);
  }
  
  public void a(LojaTerm paramLojaTerm) {
    if (paramLojaTerm != null) {
      a(paramLojaTerm.b());
      b(paramLojaTerm.d());
      a(paramLojaTerm.f());
      b(paramLojaTerm.e());
    } 
  }
  
  public void b() {
    if (this.b == null)
      return; 
    this.b.dismiss();
    this.b = null;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968709);
    this.c = (TextView)findViewById(2131755895);
    this.d = (LinearLayout)findViewById(2131755894);
    c("");
    this.a = (jod)new joe(this);
    this.a.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\lojaonline\presentation\LojaOnlineTermsActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */