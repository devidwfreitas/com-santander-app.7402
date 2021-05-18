package com.santander.app.meuperfil.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import fqd;
import fup;
import fyl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jpa;
import jpd;
import mxn;

public class ContaPreferencialActivity extends AppCompatActivity {
  protected static ArrayList a = new ArrayList();
  
  private ListView b;
  
  private List<fup> c = new ArrayList<fup>();
  
  private List<fyl> d = new ArrayList<fyl>();
  
  private String e;
  
  private String f = "";
  
  private String g = "";
  
  private int h;
  
  private Activity i;
  
  private void a() {
    fqd fqd = new fqd((Context)this, 2130969362, this.c);
    this.b.setAdapter((ListAdapter)fqd);
  }
  
  private void b() {
    for (int i = 0; i < a.size(); i++) {
      fup fup = new fup();
      fup.a(Integer.toString(i));
      fup.b(a.get(i).toString());
      fup.a(false);
      this.c.add(fup);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968878);
    a = getIntent().getStringArrayListExtra("listaContas");
    this.f = getIntent().getStringExtra("cpf");
    this.g = getIntent().getStringExtra("Nome");
    this.h = getIntent().getIntExtra("selecionaActivity", 1);
    this.i = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839071));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    Button button = (Button)findViewById(2131756584);
    button.setOnClickListener((View.OnClickListener)new jpa(this));
    this.b = (ListView)findViewById(2131756583);
    this.b.setOnItemClickListener((AdapterView.OnItemClickListener)new jpd(this));
    if (a.size() > 1) {
      b();
      a();
      return;
    } 
    this.e = a.get(0).toString();
    button.performClick();
  }
  
  protected void onResume() {
    super.onResume();
    if (a.size() <= 1)
      onBackPressed(); 
  }
  
  public void selecionarConta(View paramView) {
    Iterator<fup> iterator = this.c.iterator();
    boolean bool = false;
    while (iterator.hasNext()) {
      if (((fup)iterator.next()).c())
        bool = true; 
    } 
    if (!bool)
      mxn.e((Activity)this, getResources().getString(2131297204)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\ContaPreferencialActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */