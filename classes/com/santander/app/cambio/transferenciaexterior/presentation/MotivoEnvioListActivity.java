package com.santander.app.cambio.transferenciaexterior.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import gbb;
import gcv;
import gcz;
import gpu;
import grs;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class MotivoEnvioListActivity extends grs {
  private RecyclerView a;
  
  private gbb b;
  
  private List<gbb> c;
  
  private void a() {
    this.a = (RecyclerView)findViewById(2131759098);
    this.a.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.a.setHasFixedSize(true);
    this.a.setAdapter((RecyclerView.Adapter)new gcz(this.c, b()));
  }
  
  private View.OnClickListener b() {
    return (View.OnClickListener)new gcv(this);
  }
  
  private void c() {
    Intent intent = new Intent();
    intent.putExtra("motivo_envio_selected", (Serializable)this.b);
    setResult(-1, intent);
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    gpu.b((Activity)this);
    if (paramInt2 == -1) {
      this.b = (gbb)paramIntent.getSerializableExtra("motivo_envio_selected");
      c();
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969377);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297094));
    this.c = (ArrayList)getIntent().getExtras().getSerializable("motivo_envio");
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cambio\transferenciaexterior\presentation\MotivoEnvioListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */