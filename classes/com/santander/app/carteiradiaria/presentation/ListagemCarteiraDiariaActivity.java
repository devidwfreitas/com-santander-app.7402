package com.santander.app.carteiradiaria.presentation;

import amr;
import amt;
import amy;
import anb;
import android.app.DatePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import frq;
import ger;
import gfg;
import gfm;
import gfn;
import gfo;
import gfp;
import gfq;
import gfr;
import ggc;
import ggh;
import ggi;
import grs;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import mxn;
import nak;

public class ListagemCarteiraDiariaActivity extends grs implements gfr {
  private SantanderDropDownView a;
  
  private Conta b;
  
  private ggh c;
  
  private DatePickerDialog d;
  
  private Calendar e;
  
  private String f;
  
  private LinearLayout g;
  
  private TextView w;
  
  private RecyclerView x;
  
  private TextView y;
  
  private ggc z;
  
  private void a(gfg paramgfg) {
    switch (gfq.a[paramgfg.ordinal()]) {
      default:
        return;
      case 1:
        frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao", "Fundos");
        return;
      case 2:
        frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao", "RendaFixa");
        return;
      case 3:
        frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao", "RendaVariave");
        return;
      case 4:
        frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao", "Derivativos");
        return;
      case 5:
        break;
    } 
    frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_Acao", "ContasAPagarReceber");
  }
  
  private void b() {
    this.a = (SantanderDropDownView)findViewById(2131755321);
    this.g = (LinearLayout)findViewById(2131758204);
    this.g.setOnClickListener((View.OnClickListener)new gfm(this));
    this.w = (TextView)findViewById(2131758205);
    this.w.setText(nak.a(0));
    this.y = (TextView)findViewById(2131758207);
    this.x = (RecyclerView)findViewById(2131758208);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    this.x.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    Calendar calendar = Calendar.getInstance();
    this.f = (new SimpleDateFormat("dd/MM/yyyy")).format(calendar.getTime());
    this.f = nak.a(0);
  }
  
  private View.OnClickListener c() {
    return (View.OnClickListener)new gfp(this);
  }
  
  public void a() {
    this.d = new DatePickerDialog((Context)this, (DatePickerDialog.OnDateSetListener)new gfo(this), Calendar.getInstance().get(1), Calendar.getInstance().get(2), Calendar.getInstance().get(5));
    Calendar.getInstance().add(5, 1);
    try {
      Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(nak.a(0));
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
      parseException = null;
    } 
    if (parseException != null)
      this.d.getDatePicker().setMaxDate(parseException.getTime()); 
    this.d.setTitle(getString(2131298013));
  }
  
  public void a(ger paramger) {
    this.y.setText(paramger.a());
    this.z = new ggc(paramger.a, c());
    this.x.setAdapter((RecyclerView.Adapter)this.z);
    if (!paramger.c().equals(this.f))
      this.w.setText(paramger.c()); 
  }
  
  public void a(String paramString) {
    this.y.setText("R$ 0,00");
    if (this.z != null)
      this.z.a(); 
    b(paramString);
  }
  
  public void a(List<anb> paramList) {
    amy amy = new amy(paramList);
    this.a.setAdapter((amr)amy);
    this.a.setOnItemSelectedListener((amt)new gfn(this));
  }
  
  public void b(String paramString) {
    mxn.e(this.i, paramString);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968699);
    c(2131297865);
    b();
    this.v.f().b(true);
    this.c = (ggh)new ggi(this);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\carteiradiaria\presentation\ListagemCarteiraDiariaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */