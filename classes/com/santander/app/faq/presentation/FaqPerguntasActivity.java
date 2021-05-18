package com.santander.app.faq.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.faleconosco.presentation.FormularioFaleConoscoActivity;
import gpu;
import grs;
import hzt;
import ibo;
import ibp;
import icp;
import icq;
import icr;
import ics;
import ida;
import idh;
import idi;
import java.io.Serializable;

public class FaqPerguntasActivity extends grs implements AdapterView.OnItemClickListener, ics {
  private ListView a;
  
  private TextView b;
  
  private ImageView c;
  
  private ImageView d;
  
  private idh e;
  
  private FrameLayout f;
  
  private SantanderTextView g;
  
  private Button w;
  
  private Button x;
  
  private Button y;
  
  private View.OnClickListener c() {
    return (View.OnClickListener)new icp(this);
  }
  
  private View.OnClickListener d() {
    return (View.OnClickListener)new icq(this);
  }
  
  private View.OnClickListener e() {
    return (View.OnClickListener)new icr(this);
  }
  
  public ibo a() {
    return (ibo)getIntent().getSerializableExtra("faq_motivo");
  }
  
  public void a(hzt paramhzt, ibo paramibo) {
    Intent intent = new Intent((Context)this, FormularioFaleConoscoActivity.class);
    intent.putExtra("verificar_sistema_response", (Serializable)paramhzt);
    intent.putExtra("faq_motivo", (Serializable)paramibo);
    startActivityForResult(intent, 1);
  }
  
  public void a(ibo paramibo) {
    int i = getResources().getIdentifier(paramibo.c(), "drawable", getPackageName());
    this.c.setImageResource(i);
    this.b.setText(paramibo.d());
  }
  
  public void a(ibo paramibo, ibp paramibp) {
    Intent intent = new Intent((Context)this, FaqRespostasActivity.class);
    intent.putExtra("faq_respostas", (Serializable)paramibp);
    intent.putExtra("faq_motivo", (Serializable)paramibo);
    startActivityForResult(intent, 1);
    overridePendingTransition(2131034131, 2131034133);
  }
  
  public void b() {
    this.f.setVisibility(8);
  }
  
  public void b(ibo paramibo) {
    this.a.setAdapter((ListAdapter)new ida((Context)this, paramibo));
  }
  
  public void c(ibo paramibo) {
    if (!paramibo.d().contains("Cartão de Crédito") || (paramibo.d().contains("Cartão de Crédito") && this.v.f().s().a().size() > 0))
      this.f.setVisibility(0); 
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    gpu.b((Activity)this);
    if (paramInt2 == -1) {
      setResult(-1);
      finish();
    } 
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    overridePendingTransition(2131034132, 2131034134);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968674);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839072));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setElevation(0.0F);
    actionBar.setDisplayHomeAsUpEnabled(true);
    this.a = (ListView)findViewById(2131757972);
    this.c = (ImageView)findViewById(2131757970);
    this.b = (TextView)findViewById(2131757971);
    this.f = (FrameLayout)findViewById(2131757973);
    this.d = (ImageView)findViewById(2131757968);
    this.g = (SantanderTextView)findViewById(2131757964);
    this.w = (Button)findViewById(2131757965);
    this.w.setOnClickListener(c());
    this.x = (Button)findViewById(2131757966);
    this.x.setOnClickListener(d());
    this.y = (Button)findViewById(2131757967);
    this.y.setOnClickListener(e());
    this.w.setVisibility(8);
    this.x.setVisibility(8);
    this.d.setVisibility(8);
    this.y.setVisibility(0);
    this.g.setText(getString(2131297962));
    this.a.setOnItemClickListener(this);
    this.e = (idh)new idi(this);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886089, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    this.e.a(paramAdapterView, paramView, paramInt, paramLong);
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\faq\presentation\FaqPerguntasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */