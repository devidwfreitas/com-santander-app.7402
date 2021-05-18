package com.santander.app.faq.presentation;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import grs;
import ibn;
import ibu;
import icz;
import idd;
import idg;
import ido;
import java.util.List;

public class FaqTelefonesActivity extends grs implements idg {
  private ExpandableListView a;
  
  private ido b;
  
  private ListView c;
  
  public void a(List<ibu> paramList) {
    this.a.setAdapter((ExpandableListAdapter)new idd((Context)this, paramList));
  }
  
  public void b(List<ibn> paramList) {
    this.c.setAdapter((ListAdapter)new icz((Context)this, paramList));
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    overridePendingTransition(2131034132, 2131034134);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968677);
    this.b = new ido(this, this.v);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839072));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setElevation(0.0F);
    actionBar.setDisplayHomeAsUpEnabled(true);
    this.c = (ListView)findViewById(2131755781);
    this.c.setDividerHeight(0);
    this.c.setEnabled(false);
    this.a = (ExpandableListView)findViewById(2131755782);
    this.a.setOnGroupClickListener(this.b.b());
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886089, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return super.onOptionsItemSelected(paramMenuItem);
      case 2131759624:
        setResult(-1);
        finish();
        return true;
      case 16908332:
        break;
    } 
    onBackPressed();
    return true;
  }
  
  protected void onResume() {
    super.onResume();
    this.b.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\faq\presentation\FaqTelefonesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */