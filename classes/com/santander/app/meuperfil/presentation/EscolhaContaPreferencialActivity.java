package com.santander.app.meuperfil.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.contacorrente.domain.Conta;
import grs;
import java.util.ArrayList;
import jqu;
import jqv;
import jra;
import jrd;
import jre;
import mip;
import miq;
import naq;

public class EscolhaContaPreferencialActivity extends grs implements jra {
  private ActionBar a;
  
  private LinearLayout b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private Button f;
  
  private Button g;
  
  private PlayGifView w;
  
  private Spinner x;
  
  private jrd y;
  
  private mip z = (mip)miq.C();
  
  private void e() {
    this.y.a();
    this.b.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setVisibility(4);
    this.e.setVisibility(4);
    this.w.setGifResource(2130838654);
    this.c.setText(2131299023);
    this.y.c();
    this.f.setText(getResources().getString(2131296661));
    this.f.setOnClickListener((View.OnClickListener)new jqu(this));
    this.b.addView(getLayoutInflater().inflate(2130969158, null));
    this.x = (Spinner)this.b.findViewById(2131757959);
    ArrayList<Conta> arrayList = new ArrayList();
    arrayList.add(new Conta());
    arrayList.addAll(this.y.a(this.z.f().q().a()));
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969494, arrayList);
    this.x.setAdapter((SpinnerAdapter)arrayAdapter);
    this.x.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new jqv(this));
  }
  
  private void f() {
    this.y.a((Conta)this.x.getSelectedItem());
  }
  
  public void a() {
    if (this.a != null)
      this.a.hide(); 
  }
  
  public void a(boolean paramBoolean) {
    if (this.f != null) {
      if (paramBoolean) {
        this.f.setBackground(getResources().getDrawable(2130837635));
        this.f.setTextColor(getResources().getColor(2131623972));
        this.f.setEnabled(true);
        return;
      } 
    } else {
      return;
    } 
    this.f.setBackground(getResources().getDrawable(2130837636));
    this.f.setTextColor(getResources().getColor(2131624024));
    this.f.setEnabled(false);
  }
  
  public void a(boolean paramBoolean, String paramString) {
    Intent intent = new Intent((Context)this, EscolhaContaPreferencialComprovanteActivity.class);
    intent.putExtra("sucesso", paramBoolean);
    intent.putExtra("erro", paramString);
    startActivity(intent);
  }
  
  public void b() {
    super.onBackPressed();
  }
  
  public void c() {
    this.d.setText((CharSequence)Html.fromHtml(getResources().getString(2131298608)));
  }
  
  public void d() {
    this.d.setText((CharSequence)Html.fromHtml(getResources().getString(2131298605).replace("#conta#", naq.d(this.z.f().f(), this.z.f().g()))));
  }
  
  public void onBackPressed() {
    this.y.b();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968693);
    this.a = getSupportActionBar();
    this.c = (TextView)findViewById(2131755821);
    this.d = (TextView)findViewById(2131755822);
    this.e = (TextView)findViewById(2131755864);
    this.f = (Button)findViewById(2131755855);
    this.g = (Button)findViewById(2131755858);
    this.w = (PlayGifView)findViewById(2131755820);
    this.b = (LinearLayout)findViewById(2131755859);
    this.y = (jrd)new jre((Context)this, this);
    e();
  }
  
  protected void onPause() {
    super.onPause();
    finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\presentation\EscolhaContaPreferencialActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */