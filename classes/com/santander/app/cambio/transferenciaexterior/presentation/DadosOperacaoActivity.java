package com.santander.app.cambio.transferenciaexterior.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.components.view.ClickToSelectEditText;
import frq;
import gaq;
import gav;
import gbb;
import gcf;
import gch;
import gci;
import gcj;
import gck;
import gdc;
import gdn;
import gpd;
import gpu;
import grs;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import mxn;

public class DadosOperacaoActivity extends grs implements gck {
  private Dialog A;
  
  private gav B;
  
  private ClickToSelectEditText a;
  
  private TextView b;
  
  private Button c;
  
  private RelativeLayout d;
  
  private gdn e;
  
  private TextView f;
  
  private TextView g;
  
  private gdc w;
  
  private String x;
  
  private gbb y;
  
  private TextView z;
  
  private void b() {
    this.b = (TextView)findViewById(2131757838);
    this.f = (TextView)findViewById(2131757844);
    this.g = (TextView)findViewById(2131757845);
    this.a = (ClickToSelectEditText)findViewById(2131757840);
    this.a.setOnItemSelectedListener((gpd)new gcf(this));
    this.d = (RelativeLayout)findViewById(2131757841);
    this.d.setOnClickListener((View.OnClickListener)new gch(this));
    this.z = (TextView)findViewById(2131757798);
    this.c = (Button)findViewById(2131757527);
    this.c.setOnClickListener((View.OnClickListener)new gci(this));
    this.A = mxn.a((Activity)this, getResources().getString(2131296751), getResources().getString(2131296718), (View.OnClickListener)new gcj(this));
  }
  
  private void b(String paramString) {
    this.z.setText(paramString);
  }
  
  public void a() {}
  
  public void a(gaq paramgaq) {
    Intent intent = new Intent((Context)this, FavorecidoCambioActivity.class);
    intent.putExtra("cambio_dados", (Serializable)paramgaq);
    startActivity(intent);
  }
  
  public void a(String paramString) {}
  
  public void a(String paramString1, String paramString2, String paramString3) {
    this.b.setText(paramString1);
    this.f.setText(paramString2);
    this.g.setText(paramString3);
  }
  
  public void a(ArrayList<gbb> paramArrayList) {
    Intent intent = new Intent((Context)this, MotivoEnvioListActivity.class);
    intent.putExtra("motivo_envio", paramArrayList);
    startActivityForResult(intent, 1);
  }
  
  public void a(List<gav> paramList) {
    this.a.setItems(paramList);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1) {
      this.y = (gbb)paramIntent.getSerializableExtra("motivo_envio_selected");
      frq.d("ServicosInternacionais_Cambio_DadosDaOperacao_MotivoDoEnvioDaMoedaEstrangeira_Acao", this.y.d());
      b(this.y.d());
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968907);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297094));
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cambio\transferenciaexterior\presentation\DadosOperacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */