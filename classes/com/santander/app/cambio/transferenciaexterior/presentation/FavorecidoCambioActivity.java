package com.santander.app.cambio.transferenciaexterior.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.santander.app.components.view.ClickToSelectEditText;
import gaq;
import gbd;
import gco;
import gcp;
import gcq;
import gcr;
import gct;
import gdq;
import gdr;
import gpd;
import gpu;
import grs;
import gtd;
import java.io.Serializable;
import java.util.ArrayList;

public class FavorecidoCambioActivity extends grs implements gct {
  private gbd A;
  
  private gdq B;
  
  private gaq C;
  
  private EditText a;
  
  private EditText b;
  
  private ClickToSelectEditText c;
  
  private EditText d;
  
  private EditText e;
  
  private EditText f;
  
  private EditText g;
  
  private Button w;
  
  private ImageView x;
  
  private ImageView y;
  
  private ImageView z;
  
  private View.OnClickListener a(gtd paramgtd) {
    return (View.OnClickListener)new gcr(this, paramgtd);
  }
  
  private void a() {
    this.C = (gaq)getIntent().getExtras().getSerializable("cambio_dados");
    this.a = (EditText)findViewById(2131758045);
    this.b = (EditText)findViewById(2131758047);
    this.c = (ClickToSelectEditText)findViewById(2131758049);
    this.c.setOnItemSelectedListener((gpd)new gco(this));
    this.d = (EditText)findViewById(2131758051);
    this.e = (EditText)findViewById(2131758053);
    this.f = (EditText)findViewById(2131758056);
    this.g = (EditText)findViewById(2131758059);
    this.g.setOnKeyListener((View.OnKeyListener)new gcp(this));
    this.w = (Button)findViewById(2131757527);
    this.w.setOnClickListener((View.OnClickListener)new gcq(this));
    this.x = (ImageView)findViewById(2131758060);
    this.x.setOnClickListener(a(gtd.CAMBIO_INFO_ADICIONAIS));
    this.y = (ImageView)findViewById(2131758057);
    this.y.setOnClickListener(a(gtd.CAMBIO_SWIFT));
    this.z = (ImageView)findViewById(2131758054);
    this.z.setOnClickListener(a(gtd.CAMBIO_AG_CC_BENEFICIARIO));
  }
  
  private void a(String paramString) {
    this.c.setText(paramString);
  }
  
  public void a(gaq paramgaq) {
    Intent intent = new Intent((Context)this, CambioActivity.class);
    intent.putExtra("cambio_dados", (Serializable)paramgaq);
    startActivity(intent);
  }
  
  public void a(ArrayList<gbd> paramArrayList) {
    this.c.setItems(paramArrayList);
  }
  
  public void b(ArrayList<gbd> paramArrayList) {
    Intent intent = new Intent((Context)this, DemaisPaisesListActivity.class);
    intent.putExtra("demais_paises", paramArrayList);
    startActivityForResult(intent, 1);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1) {
      this.A = (gbd)paramIntent.getSerializableExtra("demais_paises_selected");
      if (this.A != null);
      a(this.A.d());
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969032);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131296724));
    a();
    this.B = (gdq)new gdr(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cambio\transferenciaexterior\presentation\FavorecidoCambioActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */