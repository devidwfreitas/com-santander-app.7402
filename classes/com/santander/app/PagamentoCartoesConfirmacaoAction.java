package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import fiy;
import fiz;
import ghu;
import gpu;
import grs;
import java.util.ArrayList;
import naj;
import nak;

public class PagamentoCartoesConfirmacaoAction extends grs {
  private Activity A;
  
  private fiz B;
  
  public Dialog a = null;
  
  private final String b = "PagamentoCartoesConfirmacaoAction";
  
  private Conta c;
  
  private ghu d;
  
  private int e;
  
  private int f;
  
  private int g;
  
  private String w;
  
  private String x;
  
  private String y;
  
  private boolean z;
  
  private void a() {
    Intent intent = new Intent(getApplicationContext(), PagamentoCartoesValidacionAction.class);
    intent.putExtra("conta", this.e);
    intent.putExtra("cartao", this.f);
    intent.putExtra("tipo", this.g);
    intent.putExtra("cantidad", this.w);
    intent.putExtra("fecha", this.x);
    intent.putExtra("agendado", this.z);
    startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    ArrayList<Conta> arrayList;
    super.onCreate(paramBundle);
    setContentView(2130969399);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298323));
    this.A = (Activity)this;
    Button button = (Button)findViewById(2131759178);
    button.setOnClickListener((View.OnClickListener)new fiy(this));
    ((TextView)findViewById(2131756350)).setText("");
    ((TextView)findViewById(2131759171)).setText("");
    ((TextView)findViewById(2131759173)).setText("");
    ((TextView)findViewById(2131759177)).setText("");
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      this.e = bundle.getInt("conta");
      this.f = bundle.getInt("cartao");
      arrayList = new ArrayList();
      int i;
      for (i = 0; i < this.v.f().q().a().size(); i++)
        arrayList.add(this.v.f().q().a().get(i)); 
      for (i = 0; i < this.v.f().s().d().size(); i++) {
        if (i != this.f) {
          Conta conta = new Conta();
          conta.setAgencia(((ghu)this.v.f().s().d().get(i)).s());
          conta.setCuenta(((ghu)this.v.f().s().d().get(i)).d());
          conta.setValor(((ghu)this.v.f().s().d().get(i)).c());
          conta.setDescricao(((ghu)this.v.f().s().d().get(i)).a());
          conta.setNomeBanco("CARTAOPAG");
          arrayList.add(conta);
        } 
      } 
      this.c = arrayList.get(this.e);
      this.d = this.v.f().s().d().get(this.f);
      this.g = bundle.getInt("tipo");
      this.w = bundle.getString("cantidad");
      this.x = nak.l(bundle.getString("fecha"));
      this.z = bundle.getBoolean("agendado");
      this.y = nak.l(bundle.getString("vencimiento"));
      ((TextView)findViewById(2131756350)).setText(this.d.b());
      ((TextView)findViewById(2131759171)).setText(this.x);
      ((TextView)findViewById(2131759173)).setText(naj.f(this.d.o().h()));
      TextView textView = (TextView)findViewById(2131759177);
      if (this.g == 0) {
        textView.setText(naj.f(this.d.o().h()));
        this.w = this.d.o().h().replace("//+", "");
      } else if (this.g == 1) {
        textView.setText(naj.f(this.d.o().m()));
        this.w = this.d.o().m().replace("//+", "");
        ((TextView)findViewById(2131759172)).setVisibility(8);
        ((TextView)findViewById(2131759173)).setVisibility(8);
        ((TextView)findViewById(2131759174)).setVisibility(0);
        textView = (TextView)findViewById(2131759175);
        textView.setVisibility(0);
        textView.setText(naj.f(this.d.o().m()));
        ((TextView)findViewById(2131759173)).setText(naj.f(this.d.o().m()));
      } else if (this.g == 2) {
        textView.setText(naj.f(this.d.o().g()));
        this.w = this.d.o().g().replace("//+", "");
      } else if (this.g == 4) {
        textView.setText(naj.f(this.d.o().n()));
        this.w = this.d.o().n().replace("//+", "");
      } else {
        textView.setText(naj.f(this.w));
      } 
      ((TextView)findViewById(2131759169)).setText(this.y);
      return;
    } 
    arrayList.setEnabled(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PagamentoCartoesConfirmacaoAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */