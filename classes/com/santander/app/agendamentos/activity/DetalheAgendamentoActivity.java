package com.santander.app.agendamentos.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import fqu;
import fqx;
import frb;
import gpu;
import grs;
import gvh;
import gvi;
import gvv;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import mzr;

public class DetalheAgendamentoActivity extends grs {
  private final String a = "DetalheAgendamentoActivity";
  
  private Button b;
  
  private AlertDialog c;
  
  private Dialog d;
  
  private frb e;
  
  private String f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private void a() {
    this.b = (Button)findViewById(2131756776);
    b();
    (new fqx(this)).execute((Object[])new frb[] { this.e });
  }
  
  private void a(frb paramfrb) {
    gvv gvv = (new gvh()).a(paramfrb);
    LayoutInflater layoutInflater = getLayoutInflater();
    LinearLayout linearLayout = (LinearLayout)findViewById(2131756492);
    linearLayout.removeAllViews();
    for (gvi gvi : gvv.g()) {
      View view = layoutInflater.inflate(2130968764, null);
      this.g = (TextView)view.findViewById(2131756132);
      this.w = (TextView)view.findViewById(2131756133);
      this.x = (TextView)view.findViewById(2131756134);
      if (gvi.b() != null) {
        this.g.setText(gvi.a());
        if (gvi.a().equalsIgnoreCase("Descrição:") || gvi.a().equalsIgnoreCase("Agência:") || gvi.a().equalsIgnoreCase("Data/Hora da Solicitação:") || gvi.a().equalsIgnoreCase("Favorecido:") || gvi.a().equalsIgnoreCase("Número do Protocolo:") || gvi.a().equalsIgnoreCase("Finalidade:") || gvi.a().equalsIgnoreCase("Código de Barras:") || gvi.a().equalsIgnoreCase("Número do Contrato CDB:") || gvi.a().equalsIgnoreCase("Conta Fundo de Crédito:") || gvi.a().equalsIgnoreCase("Banco:") || gvi.a().equalsIgnoreCase("Conta Débito:") || gvi.a().equalsIgnoreCase("Concessionária:") || gvi.a().equalsIgnoreCase("Conta Poupança de Crédito:") || gvi.a().equalsIgnoreCase("Conta Poupança de Débito:") || gvi.a().equalsIgnoreCase("Conta Fundo de Débito:") || gvi.a().equalsIgnoreCase("Conta de Crédito:")) {
          this.w.setVisibility(8);
          this.x.setVisibility(0);
          this.x.setText(gvi.b());
        } else {
          this.w.setVisibility(0);
          this.x.setVisibility(8);
          if (gvi.a().equalsIgnoreCase("Valor:")) {
            this.w.setText(NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(new Double(gvi.b())));
          } else {
            this.w.setText(gvi.b());
          } 
          if (gvi.a().equalsIgnoreCase("Canal:") && gvi.b() != null && gvi.b().equals("0006"))
            this.w.setText(getString(2131297657)); 
          if (gvi.a().equalsIgnoreCase("Status:"))
            if (gvi.b().equals("0")) {
              this.w.setText(getString(2131296398));
            } else {
              this.w.setText(getString(2131297272));
            }  
          if (gvi.a().equalsIgnoreCase("Tipo de Transferência:"))
            if (gvi.b().equals("N")) {
              this.w.setText(getString(2131298252));
            } else {
              this.w.setText(getString(2131298457));
            }  
        } 
        linearLayout.addView(view);
      } 
    } 
  }
  
  private boolean a(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyyMMdd")).parse(paramString);
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(date);
      return Calendar.getInstance().after(calendar);
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return false;
    } 
  }
  
  private void b() {
    this.e = (frb)getIntent().getExtras().getSerializable("EXTRAITEMDETALHEAGENDAMENTO");
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968929);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131296402));
    a();
    if (a(this.e.J()))
      this.b.setVisibility(8); 
    if (!mzr.a())
      this.b.setOnClickListener((View.OnClickListener)new fqu(this)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\agendamentos\activity\DetalheAgendamentoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */