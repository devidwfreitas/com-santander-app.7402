package com.santander.app.localizadoragencias.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.santander.app.components.view.SantanderEditText;
import grs;
import java.io.Serializable;
import java.util.ArrayList;
import jlj;
import jlk;
import jlx;
import jly;
import jmf;
import jmj;
import jmk;
import mxn;

public class BuscaLocalizadorAgenciaActivity extends grs implements InputFilter, TextWatcher, View.OnKeyListener, jly {
  private RecyclerView a;
  
  private jmf b;
  
  private SantanderEditText c;
  
  private jmj d;
  
  public void a() {
    String str = this.c.getText().toString();
    this.d.a(str);
  }
  
  public void a(double paramDouble1, double paramDouble2, String paramString1, String paramString2) {
    Intent intent = new Intent();
    intent.putExtra("latitude", paramDouble1);
    intent.putExtra("longitude", paramDouble2);
    if (paramString1 != null) {
      intent.putExtra("placeId", paramString1);
      intent.putExtra("infoType", (Serializable)jlk.endereco);
    } else if (paramString2 != null) {
      intent.putExtra("agenciaId", paramString2);
      intent.putExtra("agenciaDados", (Serializable)this.d.b());
      intent.putExtra("infoType", (Serializable)jlk.agencia);
    } 
    setResult(-1, intent);
    finish();
  }
  
  public void a(String paramString) {
    mxn.e((Activity)this, paramString).setOnDismissListener((DialogInterface.OnDismissListener)new jlx(this, (Activity)this));
  }
  
  public void a(ArrayList<jlj> paramArrayList) {
    this.b.a(paramArrayList);
    this.b.notifyDataSetChanged();
  }
  
  public void afterTextChanged(Editable paramEditable) {
    this.d.a();
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4) {
    while (paramInt1 < paramInt2) {
      if (!Character.isLetterOrDigit(paramCharSequence.charAt(paramInt1)) && !Character.isSpaceChar(paramCharSequence.charAt(paramInt1)))
        return ""; 
      paramInt1++;
    } 
    return null;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968618);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setDisplayShowTitleEnabled(false);
    View view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null);
    ((TextView)view.findViewById(2131755121)).setText(2131298092);
    actionBar.setCustomView(view);
    actionBar.setElevation(0.0F);
    this.d = (jmj)new jmk((Context)this, this);
    this.a = (RecyclerView)findViewById(2131757689);
    this.c = (SantanderEditText)findViewById(2131757688);
    this.c.setOnKeyListener(this);
    this.c.addTextChangedListener(this);
    this.c.setFilters(new InputFilter[] { this });
    this.b = new jmf(this.d);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    this.a.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.a.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.a.setAdapter((RecyclerView.Adapter)this.b);
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    switch (paramKeyEvent.getKeyCode()) {
      default:
        return false;
      case 66:
        break;
    } 
    a();
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return super.onOptionsItemSelected(paramMenuItem);
      case 16908332:
        break;
    } 
    finish();
    return true;
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\localizadoragencias\presentation\BuscaLocalizadorAgenciaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */