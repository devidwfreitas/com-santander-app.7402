package com.santander.app.transferencia.presentation;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import gpu;
import grs;
import java.util.ArrayList;
import mkq;
import mop;
import moq;
import mpj;

public class ListagemTodosBancosActivity extends grs {
  private static final String a = "ListagemTodosBancosActivity";
  
  private RecyclerView b;
  
  private ArrayList<mkq> c;
  
  private EditText d;
  
  private mpj e;
  
  private void a() {
    this.d = (EditText)findViewById(2131759057);
    this.b = (RecyclerView)findViewById(2131759058);
    this.b.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.b.setHasFixedSize(true);
    this.e = new mpj(this.c, b());
    this.b.setAdapter((RecyclerView.Adapter)this.e);
    this.d.addTextChangedListener((TextWatcher)new mop(this));
  }
  
  private void a(String paramString) {
    this.e.a(paramString);
  }
  
  private View.OnClickListener b() {
    return (View.OnClickListener)new moq(this);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969353);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131299085));
    this.c = (ArrayList<mkq>)getIntent().getExtras().getSerializable("todosBancos");
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transferencia\presentation\ListagemTodosBancosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */