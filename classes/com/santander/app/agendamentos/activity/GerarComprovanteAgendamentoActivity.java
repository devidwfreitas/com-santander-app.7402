package com.santander.app.agendamentos.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import fqy;
import fqz;
import frb;
import goj;
import gpu;
import gvh;
import gvi;
import gvv;
import java.text.NumberFormat;
import java.util.Locale;

public class GerarComprovanteAgendamentoActivity extends goj {
  private final String a = "GerarComprovanteAgendamento";
  
  private LinearLayout b;
  
  private LinearLayout c;
  
  private ImageView f;
  
  private GerarComprovanteAgendamentoActivity g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private frb z;
  
  private void a(frb paramfrb) {
    gvv gvv = (new gvh()).a(paramfrb);
    LayoutInflater layoutInflater = getLayoutInflater();
    LinearLayout linearLayout = (LinearLayout)findViewById(2131756492);
    linearLayout.removeAllViews();
    for (gvi gvi : gvv.g()) {
      View view = layoutInflater.inflate(2130968764, null);
      this.w = (TextView)view.findViewById(2131756132);
      this.x = (TextView)view.findViewById(2131756133);
      this.y = (TextView)view.findViewById(2131756134);
      if (gvi.b() != null) {
        this.w.setText(gvi.a());
        if (gvi.a().equalsIgnoreCase("Descrição:") || gvi.a().equalsIgnoreCase("Agência:") || gvi.a().equalsIgnoreCase("Data/Hora da Solicitação:") || gvi.a().equalsIgnoreCase("Favorecido:") || gvi.a().equalsIgnoreCase("Número do Protocolo:") || gvi.a().equalsIgnoreCase("Finalidade:") || gvi.a().equalsIgnoreCase("Código de Barras:") || gvi.a().equalsIgnoreCase("Número do Contrato CDB:") || gvi.a().equalsIgnoreCase("Conta Fundo de Crédito:") || gvi.a().equalsIgnoreCase("Banco:") || gvi.a().equalsIgnoreCase("Conta Débito:") || gvi.a().equalsIgnoreCase("Concessionária:") || gvi.a().equalsIgnoreCase("Conta Poupança de Crédito:") || gvi.a().equalsIgnoreCase("Conta Poupança de Débito:") || gvi.a().equalsIgnoreCase("Conta Fundo de Débito:") || gvi.a().equalsIgnoreCase("Conta de Crédito:")) {
          this.x.setVisibility(8);
          this.y.setVisibility(0);
          this.y.setText(gvi.b());
        } else {
          this.x.setVisibility(0);
          this.y.setVisibility(8);
          if (gvi.a().equalsIgnoreCase("Valor:")) {
            this.x.setText(NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(new Double(gvi.b())));
          } else {
            this.x.setText(gvi.b());
          } 
          if (gvi.a().equalsIgnoreCase("Canal:") && gvi.b() != null && gvi.b().equals("0006"))
            this.x.setText(getString(2131297657)); 
          if (gvi.a().equalsIgnoreCase("Status:"))
            if (gvi.b().equals("0")) {
              this.x.setText(getString(2131296398));
            } else {
              this.x.setText(getString(2131296401));
            }  
          if (gvi.a().equalsIgnoreCase("Tipo de Transferência:"))
            if (gvi.b().equals("N")) {
              this.x.setText(getString(2131298252));
            } else {
              this.x.setText(getString(2131298457));
            }  
        } 
        linearLayout.addView(view);
      } 
    } 
  }
  
  private void c() {
    d();
    a(this.z);
    TextView textView1 = (TextView)findViewById(2131756493);
    TextView textView2 = (TextView)findViewById(2131756494);
    if (this.z.l() != null && this.z.m() != null) {
      textView1.setText(this.z.l());
      textView2.setText(this.z.m());
    } 
    this.b = (LinearLayout)findViewById(2131755436);
    this.c = (LinearLayout)findViewById(2131755437);
    this.f = (ImageView)findViewById(2131755251);
    this.c.setOnClickListener((View.OnClickListener)new fqy(this));
    this.b.setOnClickListener((View.OnClickListener)new fqz(this));
    a();
  }
  
  private void d() {
    this.z = (frb)getIntent().getExtras().getSerializable("EXTRADADOS");
  }
  
  public void a() {
    this.b.setVisibility(0);
    this.c.setVisibility(0);
    this.f.setVisibility(8);
  }
  
  public String b() {
    this.b.setVisibility(8);
    this.c.setVisibility(8);
    this.f.setVisibility(0);
    return a(2131755416);
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968866);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131296886));
    this.g = this;
    c();
  }
  
  protected void onResume() {
    super.onResume();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\agendamentos\activity\GerarComprovanteAgendamentoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */