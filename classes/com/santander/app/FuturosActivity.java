package com.santander.app;

import amr;
import amt;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.contacorrente.domain.Conta;
import fhz;
import fva;
import fvc;
import gmy;
import grs;
import naj;

public class FuturosActivity extends grs {
  public Dialog a = null;
  
  private final String b = "FuturosActivity";
  
  private Conta c;
  
  private Activity d;
  
  private fva e;
  
  private SantanderDropDownView f;
  
  private LinearLayout g;
  
  private void a() {
    for (int i = 0; i < this.e.g().size(); i++) {
      View view = getLayoutInflater().inflate(2130969378, null);
      view.setTag(Integer.valueOf(i + 100));
      TextView textView = (TextView)view.findViewById(2131759102);
      if (((fvc)this.e.g().get(i)).e().indexOf("-") != -1)
        textView.setTextColor(getResources().getColor(2131624298)); 
      textView.setText(naj.f(((fvc)this.e.g().get(i)).e()));
      textView.setTextSize(16.0F);
      textView = (TextView)view.findViewById(2131759101);
      textView.setText(((fvc)this.e.g().get(i)).d());
      textView.setTextSize(12.0F);
      textView = (TextView)view.findViewById(2131759100);
      textView.setPadding(15, 0, 0, 0);
      textView.setText(((fvc)this.e.g().get(i)).c());
      if (i == this.e.g().size() - 1) {
        view.findViewById(2131759053).setVisibility(0);
        ((TextView)view.findViewById(2131756588)).setText(getResources().getString(2131298056));
      } 
      this.g.addView(view);
    } 
    if (this.e.g() == null || this.e.g().size() == 0) {
      View view = getLayoutInflater().inflate(2130969378, null);
      view.findViewById(2131759053).setVisibility(0);
      ((TextView)view.findViewById(2131756588)).setText(getResources().getString(2131298058) + "\n\n" + getResources().getString(2131298056));
      ((ImageView)view.findViewById(2131759052)).setVisibility(8);
      ((TextView)view.findViewById(2131759102)).setVisibility(8);
      ((TextView)view.findViewById(2131759101)).setVisibility(8);
      ((TextView)view.findViewById(2131759100)).setVisibility(8);
      this.g.addView(view);
    } 
  }
  
  public void goExtratos(View paramView) {
    if (paramView.getTag() != null && paramView.getTag().toString().toString().length() > 0) {
      int i = Integer.parseInt(paramView.getTag().toString()) - 100;
      Intent intent = new Intent((Context)this, FuturosExtratoActivity.class);
      intent.putExtra("data", ((fvc)this.e.g().get(i)).c());
      intent.putExtra("label", ((fvc)this.e.g().get(i)).d());
      intent.putExtra("valor", ((fvc)this.e.g().get(i)).e());
      startActivity(intent);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969101);
    c(2131298057);
    this.d = (Activity)this;
    this.g = (LinearLayout)findViewById(2131757599);
    this.f = (SantanderDropDownView)findViewById(2131755321);
    this.f.setAdapter((amr)gmy.e());
    this.f.setOnItemSelectedListener((amt)new fhz(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\FuturosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */