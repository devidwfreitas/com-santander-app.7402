package com.santander.app.previdencia.presentation;

import amr;
import amt;
import amy;
import anb;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.contacorrente.domain.Conta;
import grs;
import java.io.Serializable;
import java.util.List;
import kdg;
import kef;
import keg;
import kek;
import kfn;
import kfo;
import myy;

public class AporteActivity extends grs implements kek {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private EditText d;
  
  private Button e;
  
  private kdg f;
  
  private SantanderDropDownView g;
  
  private amy w;
  
  private Conta x;
  
  private kfn y;
  
  public void a() {
    this.a = (TextView)findViewById(2131757678);
    this.b = (TextView)findViewById(2131757680);
    this.c = (TextView)findViewById(2131757682);
    this.d = (EditText)findViewById(2131757685);
    this.e = (Button)findViewById(2131757527);
    this.e.setOnClickListener(b());
    this.g = (SantanderDropDownView)findViewById(2131755321);
    c();
    this.d.addTextChangedListener((TextWatcher)new myy(this.d));
    this.y = (kfn)new kfo(this);
  }
  
  public void a(List<anb> paramList) {
    this.w = new amy(paramList);
    this.g.setAdapter((amr)this.w);
    this.g.setOnItemSelectedListener((amt)new keg(this));
  }
  
  View.OnClickListener b() {
    return (View.OnClickListener)new kef(this);
  }
  
  public void c() {
    this.a.setText(this.f.f());
    this.b.setText(this.f.g());
    this.c.setText(this.f.h());
  }
  
  public void d() {
    this.f.c(this.x.getAgencia());
    this.f.d(this.x.getCuenta());
    this.f.b(e());
    Intent intent = new Intent((Context)this, AporteConfirmacaoActivity.class);
    intent.putExtra("aporte_informacao", (Serializable)this.f);
    startActivity(intent);
  }
  
  public String e() {
    return (this.d.getText() != null) ? this.d.getText().toString() : "";
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968804);
    this.f = (kdg)getIntent().getSerializableExtra("aporte");
    c(2131296461);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\previdencia\presentation\AporteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */