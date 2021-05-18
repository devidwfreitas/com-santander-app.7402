package com.santander.app.habilitacaointernacional.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import fqk;
import goj;
import gpu;
import iml;
import imm;
import ino;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

public class ComprovanteHabilitacaoInternacionalActivity extends goj implements Serializable {
  private static final long a = 1L;
  
  private TextView A;
  
  private int B;
  
  private String C = "";
  
  private ImageView D;
  
  private final String E = "ComprovanteHabilitacaoInternacionalActivity";
  
  private String b;
  
  private ListView c;
  
  private fqk f;
  
  private ino g;
  
  private ComprovanteHabilitacaoInternacionalActivity w;
  
  private Button x;
  
  private Button y;
  
  private String z;
  
  private void c() {
    int k = View.MeasureSpec.makeMeasureSpec(this.c.getWidth(), 0);
    if (this.b.equals("2")) {
      int n = 80;
      View view1 = null;
      for (int m = 0; m < this.g.getCount(); m++) {
        view1 = this.g.getView(m, view1, (ViewGroup)this.c);
        if (m == 0)
          view1.setLayoutParams(new ViewGroup.LayoutParams(k, -2)); 
        view1.measure(k, 0);
        n += view1.getMeasuredHeight();
      } 
      ViewGroup.LayoutParams layoutParams1 = this.c.getLayoutParams();
      layoutParams1.height = this.c.getDividerHeight() * (this.g.getCount() - 1) + n;
      this.c.setLayoutParams(layoutParams1);
      this.c.requestLayout();
      return;
    } 
    int j = 80;
    View view = null;
    for (int i = 0; i < this.f.getCount(); i++) {
      view = this.f.getView(i, view, (ViewGroup)this.c);
      if (i == 0)
        view.setLayoutParams(new ViewGroup.LayoutParams(k, -2)); 
      view.measure(k, 0);
      j += view.getMeasuredHeight();
    } 
    ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
    layoutParams.height = this.c.getDividerHeight() * (this.f.getCount() - 1) + j;
    this.c.setLayoutParams(layoutParams);
    this.c.requestLayout();
  }
  
  public void a() {
    this.y.setVisibility(0);
    this.x.setVisibility(0);
    this.D.setVisibility(8);
  }
  
  public String b() {
    this.y.setVisibility(8);
    this.x.setVisibility(8);
    this.D.setVisibility(0);
    return a(2131756334);
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969109);
    this.w = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    String str = getIntent().getStringExtra("AutenticacaoBancaria");
    TextView textView = (TextView)findViewById(2131757628);
    this.z = getIntent().getStringExtra("cartao");
    this.C = getIntent().getStringExtra("FINALCARTAO");
    textView.setText(this.C);
    ((TextView)findViewById(2131757043)).setText(str);
    ((TextView)findViewById(2131756353)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss", Locale.US)).format(new Date()));
    this.c = (ListView)findViewById(2131757629);
    this.x = (Button)findViewById(2131757044);
    this.A = (TextView)findViewById(2131757626);
    this.B = getIntent().getIntExtra("operacao", 0);
    this.D = (ImageView)findViewById(2131755251);
    this.x.setOnClickListener((View.OnClickListener)new iml(this));
    this.y = (Button)findViewById(2131756354);
    this.y.setOnClickListener((View.OnClickListener)new imm(this));
    this.b = getIntent().getStringExtra("passo");
    new ArrayList();
    ArrayList arrayList = (ArrayList)getIntent().getSerializableExtra("lista");
    if (this.b.equals("2")) {
      this.g = new ino(arrayList, (Context)this);
      this.c.setAdapter((ListAdapter)this.g);
      c();
    } else {
      this.f = new fqk(arrayList, (Context)this);
      this.c.setAdapter((ListAdapter)this.f);
      c();
    } 
    gpu.a((Activity)this, actionBar, getString(2131297557));
    switch (this.B) {
      default:
        return;
      case 0:
        this.A.setText("cadastradas com sucesso");
        return;
      case 1:
        this.A.setText("alteradas com sucesso");
        return;
      case 2:
        break;
    } 
    this.A.setText("excluidas com sucesso");
  }
  
  protected void onResume() {
    super.onResume();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\habilitacaointernacional\activity\ComprovanteHabilitacaoInternacionalActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */