package com.santander.app.components.view.avisofinalano;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.MenuItem;
import android.view.View;
import android.widget.ScrollView;
import com.santander.app.components.view.SantanderButtonView;
import gso;
import gsp;
import gsq;
import gsr;
import gss;
import gst;
import mxn;

public class AvisoFinalAnoActivity extends AppCompatActivity implements gss {
  private ScrollView a;
  
  private Dialog b;
  
  private Context c;
  
  private AppCompatActivity d;
  
  private SantanderButtonView e;
  
  private SantanderButtonView f;
  
  private void a(SharedPreferences paramSharedPreferences, String paramString, boolean paramBoolean) {
    SharedPreferences.Editor editor = paramSharedPreferences.edit();
    editor.putBoolean(paramString, paramBoolean);
    editor.apply();
  }
  
  private void c() {
    this.a = (ScrollView)findViewById(2131755289);
    this.a.setVisibility(0);
    this.e = (SantanderButtonView)findViewById(2131755290);
    this.e.setPaintFlags(8);
    this.e.setOnClickListener((View.OnClickListener)new gso(this));
    this.f = (SantanderButtonView)findViewById(2131755291);
    this.f.setOnClickListener((View.OnClickListener)new gsp(this));
  }
  
  private void d() {
    this.b = mxn.b((Activity)this.d, (View.OnClickListener)new gsq(this), (View.OnClickListener)new gsr(this), this.d.getResources().getString(2131297169), this.d.getResources().getString(2131296657), this.d.getResources().getString(2131296654));
  }
  
  private void e() {
    finish();
  }
  
  public void a() {
    gst.a("MaisInformacoes");
    d();
  }
  
  public void b() {
    gst.c("NaoVerMaisMensagem");
    a(this.c.getSharedPreferences("avisoFinalAno", 0), "bloquearAviso", true);
    e();
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(true);
    actionBar.setDisplayHomeAsUpEnabled(true);
    actionBar.setTitle("Programe seu Fim de Ano");
    SpannableString spannableString = new SpannableString(actionBar.getTitle());
    spannableString.setSpan(new ForegroundColorSpan(-1), 0, spannableString.length(), 18);
    actionBar.setTitle((CharSequence)spannableString);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setHomeAsUpIndicator(2130838338);
    setContentView(2130968612);
    this.c = (Context)this;
    this.d = this;
    c();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return true;
      case 16908332:
        break;
    } 
    finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\avisofinalano\AvisoFinalAnoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */