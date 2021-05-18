package com.santander.app.dpp;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.view.ActionMode;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import gpu;
import grs;
import hdk;
import hdn;
import hdo;
import hdp;
import hen;
import heq;
import java.util.ArrayList;

public class DPPListaProgramadaActivity extends grs {
  public AppCompatActivity a;
  
  public int b;
  
  public ListView c;
  
  public Dialog d = null;
  
  private ActionMode e;
  
  private heq f;
  
  private Activity g;
  
  private ArrayList<heq> w;
  
  private hen x;
  
  public View a(int paramInt, ListView paramListView) {
    int i = paramListView.getFirstVisiblePosition();
    int j = paramListView.getChildCount();
    return (paramInt < i || paramInt > j + i - 1) ? paramListView.getAdapter().getView(paramInt, null, (ViewGroup)paramListView) : paramListView.getChildAt(paramInt - i);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969001);
    this.a = (AppCompatActivity)this;
    this.g = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297251));
    Button button = (Button)findViewById(2131757067);
    this.c = (ListView)findViewById(2131757066);
    this.c.setOnItemLongClickListener((AdapterView.OnItemLongClickListener)new hdk(this));
    this.c.setOnItemClickListener((AdapterView.OnItemClickListener)new hdn(this));
    button.setOnClickListener((View.OnClickListener)new hdo(this));
    (new hdp(this)).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\dpp\DPPListaProgramadaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */