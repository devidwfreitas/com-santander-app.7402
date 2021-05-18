package com.santander.app.meuperfil.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class CadastroAtencaoActivity extends AppCompatActivity implements View.OnClickListener {
  private final String a = "CadastroAtencaoActivity";
  
  private Button b;
  
  public void onClick(View paramView) {
    if (paramView == this.b) {
      Log.i("CadastroAtencaoActivity", "Clicou");
      Intent intent = new Intent((Context)this, HomeActivity.class);
      intent.putExtra("reopen", true);
      startActivity(intent);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968825);
    this.b = (Button)findViewById(2131756381);
    this.b.setOnClickListener(this);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839071));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    findViewById(2131756230).requestFocus();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\CadastroAtencaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */