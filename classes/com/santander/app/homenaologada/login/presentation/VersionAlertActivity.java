package com.santander.app.homenaologada.login.presentation;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import grs;
import itd;
import ite;

public class VersionAlertActivity extends grs {
  private Button a;
  
  private Button b;
  
  private TextView c;
  
  private TextView d;
  
  private int e;
  
  private View.OnClickListener f = (View.OnClickListener)new itd(this);
  
  private View.OnClickListener g = (View.OnClickListener)new ite(this);
  
  private SpannableString a(@StringRes int paramInt) {
    SpannableString spannableString = new SpannableString(getString(paramInt));
    spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
    return spannableString;
  }
  
  private void a() {
    this.a = (Button)findViewById(2131756125);
    this.c = (TextView)findViewById(2131756123);
    this.d = (TextView)findViewById(2131756124);
    this.b = (Button)findViewById(2131756126);
  }
  
  private void b() {
    Bundle bundle = getIntent().getExtras();
    if (bundle != null)
      this.e = bundle.getInt("extra_check_version_action"); 
  }
  
  private void c() {
    if (this.e == 2) {
      this.a.setText((CharSequence)a(2131299259));
      this.c.setText(2131299263);
      this.d.setText(2131299264);
      return;
    } 
    if (this.e == 3) {
      this.a.setText((CharSequence)a(2131299260));
      this.c.setText(2131299261);
      this.d.setText(2131299262);
      return;
    } 
  }
  
  private void d() {
    this.a.setOnClickListener(this.f);
    this.b.setOnClickListener(this.g);
  }
  
  private void e() {
    if (this.e == 2)
      setResult(1000); 
    finish();
  }
  
  private void f() {
    String str = getPackageName();
    try {
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)));
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(2131297530).concat(str))));
      return;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968760);
    a();
    b();
    c();
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\homenaologada\login\presentation\VersionAlertActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */