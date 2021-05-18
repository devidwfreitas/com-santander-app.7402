package com.santander.app.meuperfil.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;
import com.santander.app.homenaologada.presentation.HomeActivity;
import foh;
import foi;
import java.util.ArrayList;
import jpu;

public class PrimeiroAcessoBoasVindasActivity extends AppCompatActivity {
  protected static ArrayList a = new ArrayList();
  
  private final String b = "PrimeiroAcessoBoasVindasActivity";
  
  private boolean c = false;
  
  private AlertDialog d;
  
  private String e = "";
  
  private String f = "";
  
  private int g;
  
  private Activity h;
  
  private String i = "";
  
  public void aoSelecionarContinuar(View paramView) {
    if (!this.c) {
      AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
      builder.setView(getLayoutInflater().inflate(2130968972, null));
      this.d = builder.create();
      this.d.show();
      return;
    } 
    if (this.g == 1) {
      Intent intent = new Intent((Context)this, QuizStartActivity.class);
      intent.putExtra("Nome", this.e);
      intent.putExtra("cpf", this.f);
      startActivity(intent);
      return;
    } 
    if (this.g == 2) {
      Intent intent = new Intent((Context)this, ContaPreferencialActivity.class);
      a = getIntent().getStringArrayListExtra("listaContas");
      intent.putExtra("Nome", this.e);
      intent.putExtra("cpf", this.f);
      intent.putExtra("listaContas", a);
      intent.putExtra("selecionaActivity", this.g);
      startActivity(intent);
      finish();
      return;
    } 
    if (this.g == 3) {
      (new foi(this.h, (foh)new jpu(this))).c((Object[])new Void[0]);
      return;
    } 
  }
  
  public void aoSelecionarTermos(View paramView) {
    startActivity(new Intent((Context)this, PrimeiroAcessoTermos.class));
  }
  
  public void checkBoxTermos(View paramView) {
    boolean bool;
    if (!this.c) {
      bool = true;
    } else {
      bool = false;
    } 
    this.c = bool;
  }
  
  public void dismissDialog(View paramView) {
    this.d.dismiss();
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    Intent intent = new Intent((Context)this.h, HomeActivity.class);
    intent.putExtra("reopen", true);
    this.h.startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969420);
    this.h = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839071));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    findViewById(2131756230).requestFocus();
    try {
      String str;
      this.e = getIntent().getStringExtra("Nome");
      this.f = getIntent().getStringExtra("cpf");
      this.g = getIntent().getIntExtra("selecionaActivity", 1);
      if (getIntent().hasExtra("codRetorno")) {
        str = getIntent().getStringExtra("codRetorno");
      } else {
        str = "";
      } 
      this.i = str;
      ((TextView)findViewById(2131759262)).setText("OLÁ " + this.e);
      TextView textView = (TextView)findViewById(2131755408);
      if (this.i.equals("106")) {
        textView.setText("A mesma senha que você cadastrou no Internet Banking será utilizada para acessar o aplicativo Santander e a Central de Atendimento Santander.");
        return;
      } 
      if (this.i.equals("107")) {
        textView.setText("A mesma senha que você cadastrou na Central de Atendimento Santander será utilizada para acessar o aplicativo Santander e o Internet Banking.");
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
    exception.setText(2131298818);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\PrimeiroAcessoBoasVindasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */