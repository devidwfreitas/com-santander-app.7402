package com.santander.app.meuperfil.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class CadastroFinalizadoSucessoActivity extends AppCompatActivity implements View.OnClickListener {
  private final String a = "CadastroFinalizadoSucessoActivity";
  
  private Button b;
  
  private String c;
  
  private TextView d;
  
  private ImageView e;
  
  public void onClick(View paramView) {
    if (paramView == this.b) {
      Log.i("CadastroFinalizadoSucessoActivity", "Clicou");
      Intent intent = new Intent((Context)this, HomeActivity.class);
      intent.putExtra("reopen", true);
      startActivity(intent);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    String str;
    super.onCreate(paramBundle);
    setContentView(2130968827);
    this.b = (Button)findViewById(2131756381);
    this.b.setOnClickListener(this);
    this.d = (TextView)findViewById(2131756382);
    this.e = (ImageView)findViewById(2131756383);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839071));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    findViewById(2131756230).requestFocus();
    if (getIntent().hasExtra("codRetorno")) {
      str = getIntent().getStringExtra("codRetorno");
    } else {
      str = "";
    } 
    this.c = str;
    if (this.c.equals("104")) {
      this.e.setImageDrawable(getResources().getDrawable(2130838889));
      this.d.setText("Lembre que você deve utilizar a mesma senha de acesso no App Santander, no Internet Banking e na Central de Atendimento Santander.");
      return;
    } 
    if (this.c.equals("105")) {
      this.e.setImageDrawable(getResources().getDrawable(2130838888));
      this.d.setText("Lembre que você deve utilizar a mesma senha de acesso no App Santander e no Internet Banking.");
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\CadastroFinalizadoSucessoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */