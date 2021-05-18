package com.santander.app.faleconosco.presentation;

import amr;
import amt;
import amy;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.ClickToSelectEditText;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import ghu;
import gmy;
import gpd;
import gpu;
import grs;
import hat;
import hze;
import hzp;
import hzt;
import iam;
import ian;
import iao;
import iap;
import iaq;
import iar;
import ias;
import iav;
import iaw;
import ibo;
import java.util.List;
import mxn;
import nai;
import nar;

public class FormularioFaleConoscoActivity extends grs implements iam {
  private RelativeLayout A;
  
  private LinearLayout B;
  
  private Dialog C;
  
  private iav D;
  
  private Activity E;
  
  private ibo F;
  
  private hzt G;
  
  private hze H;
  
  private boolean I = false;
  
  private SantanderDropDownView J;
  
  private ghu K;
  
  private RelativeLayout L;
  
  private RelativeLayout M;
  
  private hzp N;
  
  private ClickToSelectEditText O;
  
  private hze P;
  
  private ClickToSelectEditText Q;
  
  private TextInputLayout R;
  
  private hzp S;
  
  private TextView a;
  
  private ImageView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private Button w;
  
  private EditText x;
  
  private EditText y;
  
  private EditText z;
  
  private void F() {
    this.O.setOnItemSelectedListener((gpd)new ian(this));
  }
  
  private void G() {
    this.Q.setOnItemSelectedListener((gpd)new iao(this));
  }
  
  public boolean A() {
    return this.F.a().equalsIgnoreCase("9");
  }
  
  View.OnClickListener B() {
    return (View.OnClickListener)new iap(this);
  }
  
  View.OnClickListener C() {
    return (View.OnClickListener)new iaq(this);
  }
  
  public TextWatcher D() {
    return (TextWatcher)new iar(this);
  }
  
  public void E() {
    this.O.setVisibility(0);
    this.z.setVisibility(0);
    this.g.setVisibility(0);
    this.A.setVisibility(0);
    this.f.setVisibility(0);
    this.e.setVisibility(0);
  }
  
  public void a() {
    this.a = (TextView)findViewById(2131758162);
    this.b = (ImageView)findViewById(2131758161);
    this.c = (TextView)findViewById(2131758104);
    this.d = (TextView)findViewById(2131756191);
    this.J = (SantanderDropDownView)findViewById(2131755321);
    this.A = (RelativeLayout)findViewById(2131758120);
    this.g = (TextView)findViewById(2131758118);
    this.e = (TextView)findViewById(2131758119);
    this.x = (EditText)findViewById(2131758109);
    this.y = (EditText)findViewById(2131758111);
    this.z = (EditText)findViewById(2131758116);
    this.f = (TextView)findViewById(2131758123);
    this.B = (LinearLayout)findViewById(2131758124);
    this.w = (Button)findViewById(2131757773);
    this.L = (RelativeLayout)findViewById(2131757322);
    this.M = (RelativeLayout)findViewById(2131757323);
    this.Q = (ClickToSelectEditText)findViewById(2131758113);
    this.R = (TextInputLayout)findViewById(2131758112);
    this.g.setVisibility(8);
    this.e.setVisibility(8);
    this.f.setVisibility(8);
    this.B.setVisibility(8);
    this.a.setText(this.F.d());
    this.b.setImageResource(getResources().getIdentifier(this.F.c(), "drawable", getPackageName()));
    this.x.addTextChangedListener(nar.a(this.x));
    this.D.a(this.F.a());
    this.w.setOnClickListener(B());
    this.A.setOnClickListener(C());
    this.c.setText(nai.c(this.D.d()));
    this.z.addTextChangedListener(D());
    this.O = (ClickToSelectEditText)findViewById(2131756151);
    F();
    this.D.g();
    if (A())
      G(); 
  }
  
  public void a(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, false, "OK");
  }
  
  public void a(List<hze> paramList) {
    this.O.setItems(paramList);
  }
  
  public void b() {
    hat.d().a((Activity)this, null, true, false);
  }
  
  public void b(String paramString) {
    this.d.setText(paramString);
  }
  
  public void b(List<hzp> paramList) {
    this.Q.setItems(paramList);
  }
  
  public void c() {
    this.C = mxn.b((Activity)this);
  }
  
  public void d() {
    if (this.C != null && this.C.isShowing()) {
      this.C.dismiss();
      this.C.cancel();
      this.C = null;
    } 
  }
  
  public Activity e() {
    return this.E;
  }
  
  public String f() {
    return this.F.a();
  }
  
  public String g() {
    return this.z.getText().toString();
  }
  
  public hze h() {
    return this.H;
  }
  
  public TextView h_() {
    return this.f;
  }
  
  public String i() {
    return this.x.getText().toString();
  }
  
  public String j() {
    return this.y.getText().toString();
  }
  
  public String k() {
    return this.d.getText().toString();
  }
  
  public LinearLayout l() {
    return this.B;
  }
  
  public ibo n() {
    return this.F;
  }
  
  public hzt o() {
    return this.G;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    if (paramIntent != null) {
      this.B.setVisibility(0);
      this.D.a(paramInt1, paramInt1, paramIntent, (Context)this);
      this.f.setVisibility(0);
      this.f.setText("Anexos (" + this.D.e() + ")");
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969049);
    this.F = (ibo)getIntent().getSerializableExtra("faq_motivo");
    this.G = (hzt)getIntent().getSerializableExtra("verificar_sistema_response");
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839072));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayHomeAsUpEnabled(true);
    actionBar.setHomeAsUpIndicator(getResources().getDrawable(2130838704));
    actionBar.setElevation(0.0F);
    this.D = (iav)new iaw(this);
    this.E = (Activity)this;
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
        setResult(-1);
        startActivity(new Intent((Context)this, HomeLogadaActivity.class));
        return true;
      case 16908332:
        break;
    } 
    onBackPressed();
    return true;
  }
  
  public hzp p() {
    return this.N;
  }
  
  public EditText q() {
    return this.z;
  }
  
  public TextView r() {
    return this.g;
  }
  
  public RelativeLayout s() {
    return this.A;
  }
  
  public TextView t() {
    return this.e;
  }
  
  public Context u() {
    return (Context)this;
  }
  
  public ghu v() {
    return this.K;
  }
  
  public void w() {
    amy amy = gmy.g();
    this.J.setAdapter((amr)amy);
    this.J.setOnItemSelectedListener((amt)new ias(this));
  }
  
  public ClickToSelectEditText x() {
    return this.O;
  }
  
  public ClickToSelectEditText y() {
    return this.Q;
  }
  
  public TextInputLayout z() {
    return this.R;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\faleconosco\presentation\FormularioFaleConoscoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */