package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import fgg;
import fgi;
import fur;
import gpu;
import grs;
import hau;
import java.io.Serializable;

public class BeneficiarioPagamentoDetalheActivity extends grs implements Serializable {
  private static final long a = 1L;
  
  private final String b = "BeneficiarioPagamentoDetalheActivity";
  
  private Dialog c;
  
  private fur d;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968974);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131299015));
    this.i = (Activity)this;
    this.d = hau.a().C();
    hau.a().a(null);
    if (this.d != null) {
      EditText editText1 = (EditText)findViewById(2131756942);
      EditText editText2 = (EditText)findViewById(2131756943);
      EditText editText3 = (EditText)findViewById(2131756944);
      editText1.setText(this.d.a());
      editText2.setText(this.d.c());
      editText3.setText(this.d.b());
      Button button1 = (Button)findViewById(2131756945);
      Button button2 = (Button)findViewById(2131756946);
      button1.setOnClickListener((View.OnClickListener)new fgg(this, editText1, editText3, editText2));
      button2.setOnClickListener((View.OnClickListener)new fgi(this));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\BeneficiarioPagamentoDetalheActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */