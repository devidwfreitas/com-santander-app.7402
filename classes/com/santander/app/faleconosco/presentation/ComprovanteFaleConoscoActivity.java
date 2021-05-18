package com.santander.app.faleconosco.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import goj;
import hyz;
import iak;
import ial;
import iat;
import iau;

public class ComprovanteFaleConoscoActivity extends goj implements iak {
  private hyz A;
  
  private String a = "ComprovanteFaleConoscoActivity";
  
  private TextView b;
  
  private ImageView c;
  
  private TextView f;
  
  private LinearLayout g;
  
  private Button w;
  
  private ImageView x;
  
  private Activity y;
  
  private iat z;
  
  public void a() {
    this.x = (ImageView)findViewById(2131755251);
    this.b = (TextView)findViewById(2131756495);
    this.c = (ImageView)findViewById(2131755418);
    this.f = (TextView)findViewById(2131757777);
    this.g = (LinearLayout)findViewById(2131757779);
    this.w = (Button)findViewById(2131757780);
    this.w.setOnClickListener(f());
    this.z.a(this.A);
  }
  
  public void a(LinearLayout paramLinearLayout) {
    this.g.addView((View)paramLinearLayout);
  }
  
  public void b() {
    this.g.setVisibility(8);
  }
  
  public Activity c() {
    return this.y;
  }
  
  public String d() {
    return this.a;
  }
  
  public String e() {
    this.w.setVisibility(8);
    this.x.setVisibility(0);
    return a(2131757775);
  }
  
  View.OnClickListener f() {
    return (View.OnClickListener)new ial(this);
  }
  
  public void g() {
    this.w.setVisibility(0);
    this.x.setVisibility(8);
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968871);
    this.A = (hyz)getIntent().getSerializableExtra("comprovante");
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839072));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayHomeAsUpEnabled(true);
    actionBar.setHomeAsUpIndicator(getResources().getDrawable(2130839070));
    actionBar.setElevation(0.0F);
    this.y = (Activity)this;
    this.z = (iat)new iau(this.A, this);
    a();
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
        break;
    } 
    setResult(-1);
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
    return true;
  }
  
  protected void onResume() {
    super.onResume();
    g();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\faleconosco\presentation\ComprovanteFaleConoscoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */