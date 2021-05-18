package com.santander.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import fgl;
import fgo;
import fok;
import fuq;
import fur;
import fus;
import gpu;
import grs;
import hau;
import java.io.Serializable;

public class BeneficiarioPagamentoListActivity extends grs implements ActionMode.Callback, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, Serializable {
  private static final long a = 1L;
  
  private final String b = "BeneficiarioPagamentoListActivity";
  
  private ActionMode c;
  
  private ListView d;
  
  private Activity e;
  
  private Dialog f;
  
  private fok g;
  
  private int w = 0;
  
  private fuq x = new fuq();
  
  private void a(fur paramfur) {
    fgl fgl = new fgl(this, paramfur);
    (new AlertDialog.Builder((Context)this)).setMessage("Você realmente deseja remover esse beneficiário?").setPositiveButton("Eliminar", (DialogInterface.OnClickListener)fgl).setNegativeButton("Cancelar", (DialogInterface.OnClickListener)fgl).show();
  }
  
  public fur a(int paramInt) {
    try {
      return this.x.a().get(paramInt);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem) {
    Intent intent;
    null = true;
    fur fur = a(this.w);
    switch (paramMenuItem.getItemId()) {
      default:
        return false;
      case 2131759618:
        if (fur != null) {
          a(fur);
          this.d.setItemChecked(this.w, false);
          paramActionMode.finish();
          return true;
        } 
        return SYNTHETIC_LOCAL_VARIABLE_3;
      case 2131759619:
        paramActionMode.finish();
        if (fur != null) {
          intent = new Intent((Context)this.e, BeneficiarioPagamentoDetalheActivity.class);
          fur.a(fus.UPDATE);
          hau.a().a(fur);
          startActivity(intent);
          return true;
        } 
        return SYNTHETIC_LOCAL_VARIABLE_3;
      case 2131759617:
        break;
    } 
    intent.finish();
    if (fur != null) {
      hau.a().a(fur);
      intent = new Intent((Context)this.e, FazerPagamentoActivity.class);
      intent.setFlags(67108864);
      startActivity(intent);
      return true;
    } 
    return SYNTHETIC_LOCAL_VARIABLE_3;
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968809);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    this.d = (ListView)findViewById(2131756272);
    this.d.setOnItemLongClickListener(this);
    this.d.setOnItemClickListener(this);
    this.e = (Activity)this;
    gpu.a((Activity)this, actionBar, getString(2131299015));
    (new fgo(this)).execute((Object[])new Void[0]);
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu) {
    paramActionMode.getMenuInflater().inflate(2131886084, paramMenu);
    if (Build.VERSION.SDK_INT >= 11)
      paramMenu.findItem(2131759617).setVisible(false); 
    return true;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode) {
    this.c = null;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    fur fur = a(paramInt - 1);
    if (fur != null) {
      Intent intent = new Intent();
      intent.putExtra("beneficiarioSelecionado", (Serializable)fur);
      intent.setFlags(67108864);
      setResult(-1, intent);
      finish();
    } 
  }
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (this.c != null)
      return false; 
    this.w = paramInt - 1;
    this.c = startSupportActionMode(this);
    return true;
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\BeneficiarioPagamentoListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */