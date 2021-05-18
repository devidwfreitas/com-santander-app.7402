package com.santander.app.meuperfil.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import gpu;
import grs;
import jpp;
import jpq;
import jrn;
import jrp;
import myg;
import myh;
import mzq;

public class MeuPerfilSolicitarCartaoNovamenteActivity extends grs implements View.OnClickListener {
  private Button a;
  
  private View b;
  
  public void a() {
    mzq.a((Activity)this, false);
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity((Activity)this);
    dialog.setContentView(2130968992);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg((Activity)this));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh((Activity)this));
    dialog.findViewById(2131756828).setOnClickListener((View.OnClickListener)new jpq(this, dialog));
    ((TextView)dialog.findViewById(2131756996)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298893)));
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
  
  public void onClick(View paramView) {
    (new jrp((jrn)new jpp(this), (Activity)this)).c((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969374);
    this.i = (Activity)this;
    this.a = (Button)findViewById(2131759089);
    this.a.setOnClickListener(this);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298153));
    findViewById(2131756230).requestFocus();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\MeuPerfilSolicitarCartaoNovamenteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */