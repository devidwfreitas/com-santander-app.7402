package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.text.Html;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import grs;
import iut;
import iuz;
import iym;
import iyn;
import iyo;
import iyp;
import iyq;
import iyr;
import iys;
import iyt;
import iyu;
import iyv;
import jal;
import jam;
import java.io.Serializable;
import java.util.List;
import nar;

public class IdSantanderEscolhaCelularActivity extends grs implements iyv {
  private jal A;
  
  private Spinner B;
  
  private PlayGifView C;
  
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private RelativeLayout d;
  
  private RelativeLayout e;
  
  private RelativeLayout f;
  
  private Button g;
  
  private Button w;
  
  private EditText x;
  
  private EditText y;
  
  private TextInputLayout z;
  
  private void b(Boolean paramBoolean) {
    if (paramBoolean.booleanValue()) {
      this.g.setVisibility(4);
      this.f.setVisibility(0);
      if (this.c != null)
        this.c.setEnabled(false); 
      if (this.B != null)
        this.B.setEnabled(false); 
      this.w.setEnabled(false);
      return;
    } 
    this.g.setVisibility(0);
    this.f.setVisibility(8);
    if (this.c != null)
      this.c.setEnabled(true); 
    if (this.B != null)
      this.B.setEnabled(true); 
    this.w.setEnabled(true);
  }
  
  public void a() {
    this.d.setVisibility(8);
    this.e.setVisibility(0);
    this.f.setVisibility(8);
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298627)));
    this.x = (EditText)findViewById(2131755852);
    this.x.addTextChangedListener(nar.a(this.x));
    this.x.setOnFocusChangeListener((View.OnFocusChangeListener)new iyq(this));
    this.x.setOnKeyListener((View.OnKeyListener)new iyr(this));
    this.z = (TextInputLayout)findViewById(2131755853);
    this.y = (EditText)findViewById(2131755854);
    this.y.addTextChangedListener(nar.a(this.y));
    this.y.setOnFocusChangeListener((View.OnFocusChangeListener)new iys(this));
    this.y.setOnKeyListener((View.OnKeyListener)new iyt(this));
    this.g.setOnClickListener((View.OnClickListener)new iyu(this));
  }
  
  public void a(EditText paramEditText) {
    paramEditText.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838852, 0);
    this.z.setVisibility(4);
  }
  
  public void a(Boolean paramBoolean) {
    if (this.g != null) {
      if (paramBoolean.booleanValue()) {
        this.g.setBackground(getResources().getDrawable(2130837635));
        this.g.setTextColor(getResources().getColor(2131623972));
        this.g.setEnabled(true);
        return;
      } 
    } else {
      return;
    } 
    this.g.setBackground(getResources().getDrawable(2130837636));
    this.g.setTextColor(getResources().getColor(2131624024));
    this.g.setEnabled(false);
  }
  
  public void a(Object paramObject) {
    startActivity((new Intent((Context)this, IdSantanderValidacaoSMSActivity.class)).putExtra("content", (Serializable)paramObject));
  }
  
  public void a(String paramString) {
    Intent intent = new Intent((Context)this, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", (Serializable)iut.PROCESSO_INTERROMPIDO);
    if (paramString == null || paramString.isEmpty()) {
      intent.putExtra("content", "-1");
    } else {
      intent.putExtra("content", paramString);
    } 
    startActivity(intent);
  }
  
  public void a(List<iuz> paramList) {
    this.d.setVisibility(0);
    this.e.setVisibility(8);
    this.f.setVisibility(8);
    this.b.setText((CharSequence)Html.fromHtml(getResources().getString(2131298631)));
    this.c = (TextView)findViewById(2131755849);
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298570)));
    this.c.setOnClickListener((View.OnClickListener)new iyn(this));
    iuz iuz = new iuz();
    iuz.d(" ");
    paramList.add(0, iuz);
    this.B = (Spinner)findViewById(2131755847);
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969494, paramList);
    this.B.setAdapter((SpinnerAdapter)arrayAdapter);
    this.B.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new iyo(this));
    this.g.setOnClickListener((View.OnClickListener)new iyp(this));
  }
  
  public void b() {
    this.x.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838855, 0);
    this.y.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838852, 0);
    this.A.a(Boolean.valueOf(false));
  }
  
  public void b(EditText paramEditText) {
    paramEditText.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838855, 0);
    this.z.setVisibility(0);
  }
  
  public void c() {
    this.x.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838855, 0);
    this.y.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838855, 0);
    this.A.a(Boolean.valueOf(true));
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968692);
    this.C = (PlayGifView)findViewById(2131755820);
    this.C.setGifResource(2130838876);
    this.a = (TextView)findViewById(2131755821);
    this.a.setText(getResources().getString(2131299026));
    this.b = (TextView)findViewById(2131755822);
    this.d = (RelativeLayout)findViewById(2131755845);
    this.e = (RelativeLayout)findViewById(2131755850);
    this.f = (RelativeLayout)findViewById(2131755856);
    this.g = (Button)findViewById(2131755855);
    this.g.setText(getResources().getString(2131298101));
    this.w = (Button)findViewById(2131755858);
    this.w.setText((CharSequence)Html.fromHtml(getResources().getString(2131296611)));
    this.w.setOnClickListener((View.OnClickListener)new iym(this));
    this.A = (jal)new jam(this, (Activity)this);
    this.A.a();
  }
  
  public void onResume() {
    super.onResume();
    if (this.B != null) {
      this.B.setSelection(0);
      this.B.setEnabled(true);
    } 
    this.A.a(Boolean.valueOf(false));
    b(Boolean.valueOf(false));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderEscolhaCelularActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */