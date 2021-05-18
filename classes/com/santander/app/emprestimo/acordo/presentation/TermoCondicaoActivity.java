package com.santander.app.emprestimo.acordo.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.MinhaConta;
import goj;
import hgb;
import hgx;
import hhr;

public class TermoCondicaoActivity extends goj {
  private static final String c = "tagCompartilhar";
  
  public Button a;
  
  protected boolean b = true;
  
  private String f;
  
  private String g;
  
  private void a() {
    hhr.d(this.f);
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission(MinhaConta.b(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
        ActivityCompat.requestPermissions((Activity)this, new String[] { "android.permission.READ_EXTERNAL_STORAGE" }, 8);
        return;
      } 
      k();
      return;
    } 
    k();
  }
  
  public static void a(Context paramContext, hgb paramhgb) {
    Intent intent = new Intent(paramContext, TermoCondicaoActivity.class);
    intent.putExtra("android.intent.extra.TITLE", paramhgb.b());
    intent.putExtra("android.intent.extra.TEXT", (CharSequence)paramhgb.j());
    intent.putExtra("tagCompartilhar", paramhgb.g());
    paramContext.startActivity(intent);
  }
  
  public void k() {
    this.a.setVisibility(8);
    findViewById(2131755251).setVisibility(0);
    String str = a(2131755250);
    a(this.f, "", str);
    findViewById(2131755251).setVisibility(8);
    this.a.setVisibility(0);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968606);
    if (getIntent() != null) {
      this.g = getIntent().getStringExtra("tagCompartilhar");
      this.f = getIntent().getStringExtra("android.intent.extra.TITLE");
      CharSequence charSequence = getIntent().getCharSequenceExtra("android.intent.extra.TEXT");
      c(this.f);
      ((TextView)findViewById(2131755252)).setText(charSequence);
      this.a = (Button)findViewById(2131755253);
      if (this.b) {
        this.a.setVisibility(0);
        this.a.setOnClickListener((View.OnClickListener)new hgx(this));
        return;
      } 
    } else {
      return;
    } 
    this.a.setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\acordo\presentation\TermoCondicaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */