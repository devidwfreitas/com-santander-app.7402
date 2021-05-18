package com.santander.app.cambio.transferenciaexterior.presentation;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.santander.app.components.view.appbarsearchview.SearchViewAppBar;
import gbd;
import gcl;
import gcm;
import gcn;
import gcw;
import grs;
import gsm;
import gsn;
import java.util.ArrayList;
import java.util.List;

public class DemaisPaisesListActivity extends grs {
  private RecyclerView a;
  
  private gbd b;
  
  private List<gbd> c;
  
  private List<gbd> d;
  
  private SearchViewAppBar e;
  
  private gcw f;
  
  private List<gbd> a(String paramString) {
    paramString = paramString.toLowerCase();
    ArrayList<gbd> arrayList = new ArrayList();
    for (gbd gbd1 : this.c) {
      if (gbd1.d().toLowerCase().contains(paramString))
        arrayList.add(gbd1); 
    } 
    return arrayList;
  }
  
  private void a() {
    setSupportActionBar((Toolbar)findViewById(2131758364));
    ((TextView)findViewById(2131758365)).setText(2131296765);
    this.e = (SearchViewAppBar)findViewById(2131758366);
    this.e.setCursorDrawable(2130838247);
    this.e.setOnQueryTextListener((gsm)new gcl(this));
    this.e.setOnSearchViewListener((gsn)new gcm(this));
  }
  
  private void b() {
    this.a = (RecyclerView)findViewById(2131756719);
    this.a.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.a.setHasFixedSize(true);
    this.f = new gcw(this.d, c());
    this.a.setAdapter((RecyclerView.Adapter)this.f);
  }
  
  private View.OnClickListener c() {
    return (View.OnClickListener)new gcn(this);
  }
  
  public void onBackPressed() {
    if (this.e.a()) {
      this.e.c();
      return;
    } 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968910);
    this.c = (ArrayList)getIntent().getExtras().getSerializable("demais_paises");
    this.d = (ArrayList)getIntent().getExtras().getSerializable("demais_paises");
    a();
    b();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886098, paramMenu);
    MenuItem menuItem = paramMenu.findItem(2131759633);
    this.e.setMenuItem(menuItem);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cambio\transferenciaexterior\presentation\DemaisPaisesListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */