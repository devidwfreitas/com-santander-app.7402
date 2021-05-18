package com.santander.app.previdencia.presentation;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import gpu;
import grs;
import kel;
import kem;
import kfp;
import kfq;

public class CondicoesAporteActivity extends grs implements kem {
  private TextView a;
  
  private TextView b;
  
  private Button c;
  
  private String d;
  
  private TextView e;
  
  private kfp f;
  
  private void b() {
    this.a = (TextView)findViewById(2131755276);
    this.b = (TextView)findViewById(2131755278);
    this.c = (Button)findViewById(2131755277);
    this.c.setOnClickListener(c());
    a(this.d);
  }
  
  private View.OnClickListener c() {
    return (View.OnClickListener)new kel(this);
  }
  
  public void a() {
    finish();
  }
  
  public void a(String paramString) {
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            this.a.setText((CharSequence)Html.fromHtml(getResources().getString(2131297875)));
            this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131297876)));
            return;
          case 1:
            break;
        } 
        break;
      case 48:
        if (paramString.equals("0"))
          b = 0; 
      case 49:
        if (paramString.equals("1"))
          b = 1; 
    } 
    this.a.setText((CharSequence)Html.fromHtml(getResources().getString(2131297884)));
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131297883)));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayHomeAsUpEnabled(true);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setHomeAsUpIndicator(getResources().getDrawable(2130838793));
    actionBar.setElevation(0.0F);
    View view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null);
    ((TextView)view.findViewById(2131755121)).setText(getResources().getString(2131297871));
    gpu.a((Activity)this, actionBar, view, 2130839005, 2130839006, 2130839007);
    setContentView(2130968609);
    this.d = (String)getIntent().getSerializableExtra("code");
    this.f = (kfp)new kfq(this);
    b();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return super.onOptionsItemSelected(paramMenuItem);
      case 16908332:
        break;
    } 
    onBackPressed();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\previdencia\presentation\CondicoesAporteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */