package com.santander.app.faq.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.faleconosco.presentation.FormularioFaleConoscoActivity;
import grs;
import hzt;
import ibo;
import ibp;
import ibv;
import ict;
import icu;
import icv;
import icw;
import idc;
import idl;
import idm;
import java.io.Serializable;
import java.util.List;

public class FaqRespostasActivity extends grs implements icw {
  private Button A;
  
  private ImageView a;
  
  private ImageView b;
  
  private TextView c;
  
  private ListView d;
  
  private ibo e;
  
  private ibp f;
  
  private idl g;
  
  private FrameLayout w;
  
  private SantanderTextView x;
  
  private Button y;
  
  private Button z;
  
  private View.OnClickListener d() {
    return (View.OnClickListener)new ict(this);
  }
  
  private View.OnClickListener e() {
    return (View.OnClickListener)new icu(this);
  }
  
  private View.OnClickListener f() {
    return (View.OnClickListener)new icv(this);
  }
  
  public ibp a() {
    return (ibp)getIntent().getSerializableExtra("faq_respostas");
  }
  
  public void a(hzt paramhzt) {
    Intent intent = new Intent((Context)this, FormularioFaleConoscoActivity.class);
    intent.putExtra("verificar_sistema_response", (Serializable)paramhzt);
    intent.putExtra("faq_motivo", (Serializable)this.e);
    startActivityForResult(intent, 1);
  }
  
  public void a(List<ibv> paramList) {
    this.d.setAdapter((ListAdapter)new idc((Context)this, paramList));
  }
  
  public void b() {
    this.w.setVisibility(0);
  }
  
  public void c() {
    this.w.setVisibility(8);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    overridePendingTransition(2131034132, 2131034134);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968675);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839072));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayHomeAsUpEnabled(true);
    actionBar.setElevation(0.0F);
    this.a = (ImageView)findViewById(2131757975);
    this.c = (TextView)findViewById(2131757976);
    this.d = (ListView)findViewById(2131757977);
    this.w = (FrameLayout)findViewById(2131757978);
    this.b = (ImageView)findViewById(2131757968);
    this.x = (SantanderTextView)findViewById(2131757964);
    this.y = (Button)findViewById(2131757965);
    this.y.setOnClickListener(d());
    this.z = (Button)findViewById(2131757966);
    this.z.setOnClickListener(e());
    this.A = (Button)findViewById(2131757967);
    this.A.setOnClickListener(f());
    this.e = (ibo)getIntent().getSerializableExtra("faq_motivo");
    this.f = (ibp)getIntent().getSerializableExtra("faq_respostas");
    if (this.e != null) {
      int i = getResources().getIdentifier(this.e.c(), "drawable", getPackageName());
      this.c.setText(this.e.d());
      this.a.setImageResource(i);
    } 
    this.g = (idl)new idm(this, this.e);
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\faq\presentation\FaqRespostasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */