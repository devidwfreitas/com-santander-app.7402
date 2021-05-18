package com.santander.app.transferencia.presentation;

import amr;
import amt;
import amy;
import anb;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.contacorrente.domain.Conta;
import gpu;
import grs;
import guj;
import hav;
import java.io.Serializable;
import java.util.List;
import mkw;
import mld;
import mlk;
import mlo;
import mor;
import mos;
import mot;
import mou;
import mov;
import mow;
import mox;
import moy;
import moz;
import mpa;
import mpb;
import mpe;
import mpm;
import mqa;
import mqb;
import naq;

public class TransferenciasActivity extends grs implements mpe {
  private static final int E = 1;
  
  private static final String a = "TransferenciasActivity";
  
  private static final int b = 1;
  
  private static final int c = 5;
  
  private static final int d = 10;
  
  private static final int e = 50;
  
  private static final int f = 100;
  
  private static final int g = 500;
  
  private static final String w = "CC";
  
  private static final String x = "PP";
  
  private Conta A;
  
  private mqa B;
  
  private RecyclerView C;
  
  private LinearLayout D;
  
  private mld F;
  
  private mkw G;
  
  private LinearLayout H;
  
  private Button I;
  
  private Button J;
  
  private LinearLayout K;
  
  private EditText L;
  
  private guj M;
  
  private Button N;
  
  private Button O;
  
  private Button P;
  
  private Button Q;
  
  private Button R;
  
  private Button S;
  
  private Button T;
  
  private String U;
  
  private TabHost y;
  
  private SantanderDropDownView z;
  
  private void a(mkw parammkw) {
    String str1;
    mkw mkw1;
    String str2;
    String str3;
    byte b2 = 8;
    if (parammkw != null) {
      mkw1 = parammkw;
    } else {
      mkw1 = null;
    } 
    this.G = mkw1;
    View view = this.D.findViewById(2131758417);
    if (parammkw != null) {
      b1 = 8;
    } else {
      b1 = 0;
    } 
    view.setVisibility(b1);
    LinearLayout linearLayout = this.H;
    byte b1 = b2;
    if (parammkw != null)
      b1 = 0; 
    linearLayout.setVisibility(b1);
    if (parammkw != null) {
      if (naq.l(this.G.c()) == 33.0D) {
        str3 = "CONTA SANTANDER";
        this.J.setAlpha(0.7F);
        this.I.setAlpha(0.7F);
        if (this.G.g().equalsIgnoreCase("01")) {
          this.I.setEnabled(true);
          this.J.setEnabled(false);
          g();
          str2 = str3;
        } else {
          str2 = str3;
          if (this.G.g().equalsIgnoreCase("03")) {
            this.I.setEnabled(false);
            this.J.setEnabled(true);
            h();
            str2 = str3;
          } 
        } 
      } else {
        str2 = this.G.l();
        this.I.setPressed(true);
        this.J.setEnabled(true);
        g();
      } 
      this.T.setEnabled(false);
      if (!TextUtils.isEmpty(this.L.getText().toString()) && !this.L.getText().toString().equals("0,00"))
        this.T.setEnabled(true); 
    } else {
      str2 = "";
    } 
    TextView textView3 = (TextView)this.H.findViewById(2131758420);
    if (parammkw != null) {
      str3 = this.G.h();
    } else {
      str3 = "";
    } 
    textView3.setText(str3);
    TextView textView2 = (TextView)this.H.findViewById(2131758421);
    if (parammkw == null)
      str2 = ""; 
    textView2.setText(str2);
    TextView textView1 = (TextView)this.H.findViewById(2131758422);
    if (parammkw != null) {
      str1 = "ag: " + this.G.d() + " - conta: " + this.G.e() + " - " + this.G.j();
    } else {
      str1 = "";
    } 
    textView1.setText(str1);
    this.F = null;
  }
  
  private void a(mld parammld) {
    String str1;
    byte b;
    mld mld1;
    String str2;
    if (parammld != null) {
      mld1 = parammld;
    } else {
      mld1 = null;
    } 
    this.F = mld1;
    View view = this.D.findViewById(2131758417);
    if (parammld != null) {
      b = 8;
    } else {
      b = 0;
    } 
    view.setVisibility(b);
    LinearLayout linearLayout = this.H;
    if (parammld != null) {
      b = 0;
    } else {
      b = 4;
    } 
    linearLayout.setVisibility(b);
    if (parammld != null) {
      if (naq.l(this.F.g()) == 33.0D) {
        this.F.i("CONTA SANTANDER");
        this.J.setAlpha(0.7F);
        this.I.setAlpha(0.7F);
        if (b(this.F)) {
          this.I.setEnabled(false);
          this.J.setEnabled(true);
          h();
        } else {
          this.I.setEnabled(true);
          this.J.setEnabled(false);
          g();
        } 
      } else {
        this.F.i();
        this.I.setPressed(true);
        this.I.setEnabled(true);
        this.J.setEnabled(true);
        g();
      } 
      this.T.setEnabled(false);
      if (!TextUtils.isEmpty(this.L.getText().toString()) && !this.L.getText().toString().equals("0,00"))
        this.T.setEnabled(true); 
    } 
    TextView textView2 = (TextView)this.H.findViewById(2131758420);
    if (parammld != null) {
      str2 = this.F.e();
    } else {
      str2 = "";
    } 
    textView2.setText(str2);
    textView2 = (TextView)this.H.findViewById(2131758421);
    if (parammld != null) {
      str2 = this.F.i();
    } else {
      str2 = "";
    } 
    textView2.setText(str2);
    TextView textView1 = (TextView)this.H.findViewById(2131758422);
    if (parammld != null) {
      StringBuilder stringBuilder = (new StringBuilder()).append("ag: ").append(this.F.h()).append(" - conta: ");
      if (naq.l(this.F.g()) == 33.0D) {
        str1 = naq.h(this.F.k());
      } else {
        str1 = this.F.k();
      } 
      str1 = stringBuilder.append(str1).toString();
    } else {
      str1 = "";
    } 
    textView1.setText(str1);
    this.G = null;
  }
  
  private View b(String paramString) {
    View view = getLayoutInflater().inflate(2130968906, null);
    ((TextView)view.findViewById(2131756716)).setText(paramString);
    return view;
  }
  
  private boolean b(mld parammld) {
    return "6".equals(Integer.valueOf(Integer.parseInt(parammld.k())).toString().substring(0, 1));
  }
  
  private void c() {
    this.z = (SantanderDropDownView)findViewById(2131755321);
    this.y = (TabHost)findViewById(16908306);
    this.C = (RecyclerView)findViewById(2131758200);
    this.D = (LinearLayout)findViewById(2131758416);
    this.H = (LinearLayout)findViewById(2131758419);
    this.L = (EditText)findViewById(2131758423);
    this.N = (Button)findViewById(2131758425);
    this.O = (Button)findViewById(2131758426);
    this.P = (Button)findViewById(2131758427);
    this.Q = (Button)findViewById(2131758428);
    this.R = (Button)findViewById(2131758429);
    this.S = (Button)findViewById(2131758430);
    this.I = (Button)findViewById(2131758431);
    this.J = (Button)findViewById(2131758432);
    this.K = (LinearLayout)findViewById(2131758424);
    this.T = (Button)findViewById(2131758414);
    this.M = new guj();
    this.M.a(this.L);
    this.L.addTextChangedListener((TextWatcher)this.M);
    this.L.addTextChangedListener((TextWatcher)new mor(this));
    this.D.setOnClickListener((View.OnClickListener)new mou(this));
    this.I.setOnClickListener((View.OnClickListener)new mov(this));
    this.J.setOnClickListener((View.OnClickListener)new mow(this));
    this.K.setOnClickListener((View.OnClickListener)new mox(this));
    this.T.setOnClickListener((View.OnClickListener)new moy(this));
    this.N.setOnClickListener(a(1));
    this.O.setOnClickListener(a(5));
    this.P.setOnClickListener(a(10));
    this.Q.setOnClickListener(a(50));
    this.R.setOnClickListener(a(100));
    this.S.setOnClickListener(a(500));
    a();
    this.I.callOnClick();
    this.B = (mqa)new mqb(this);
  }
  
  private mlo d() {
    mlo mlo = new mlo();
    mlo.a(this.A);
    mlo.a(this.F);
    mlo.a(this.G);
    mlo.a(this.L.getText().toString());
    mlo.b(this.U);
    return mlo;
  }
  
  private View.OnClickListener e() {
    return (View.OnClickListener)new mpa(this);
  }
  
  private View.OnLongClickListener f() {
    return (View.OnLongClickListener)new mpb(this);
  }
  
  private void g() {
    this.I.setPressed(true);
    this.I.setBackground(getResources().getDrawable(2130837643));
    this.I.setTextColor(getResources().getColor(2131623972));
    this.J.setPressed(false);
    this.J.setBackground(getResources().getDrawable(2130837644));
    this.J.setTextColor(getResources().getColor(2131624186));
    this.U = "CC";
  }
  
  private void h() {
    this.J.setPressed(true);
    this.J.setBackground(getResources().getDrawable(2130837646));
    this.J.setTextColor(getResources().getColor(2131623972));
    this.I.setPressed(false);
    this.I.setBackground(getResources().getDrawable(2130837641));
    this.I.setTextColor(getResources().getColor(2131624186));
    this.U = "PP";
  }
  
  public View.OnClickListener a(int paramInt) {
    return (View.OnClickListener)new mot(this, paramInt);
  }
  
  public void a() {
    this.y.setup();
    TabHost.TabSpec tabSpec1 = this.y.newTabSpec("tab1");
    tabSpec1.setIndicator(b(getString(2131299086)));
    tabSpec1.setContent(2131756573);
    TabHost.TabSpec tabSpec2 = this.y.newTabSpec("tab2");
    tabSpec2.setIndicator(b(getString(2131299087)));
    tabSpec2.setContent(2131756577);
    this.y.addTab(tabSpec1);
    this.y.addTab(tabSpec2);
    this.y.setCurrentTab(0);
    this.y.setOnTabChangedListener((TabHost.OnTabChangeListener)new moz(this));
  }
  
  public void a(String paramString) {
    hav.d((Activity)this, paramString);
  }
  
  public void a(List<anb> paramList) {
    this.z.setAdapter((amr)new amy(paramList));
    this.z.setOnItemSelectedListener((amt)new mos(this));
  }
  
  public void a(mlk parammlk) {
    if (parammlk == null || parammlk.a().isEmpty()) {
      ((TextView)findViewById(2131758201)).setVisibility(0);
      this.C.setVisibility(8);
      return;
    } 
    ((TextView)findViewById(2131758201)).setVisibility(8);
    this.C.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.C.setHasFixedSize(true);
    this.C.setAdapter((RecyclerView.Adapter)new mpm(parammlk.a(), e(), f()));
  }
  
  public void b() {
    mlo mlo = d();
    Intent intent = new Intent((Context)this.i, FormaTransferenciaActivity.class);
    intent.putExtra("transferencia", (Serializable)mlo);
    startActivity(intent);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    mld mld1 = null;
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    gpu.b((Activity)this);
    if (paramInt1 == 1) {
      if (paramInt2 == -1) {
        mkw mkw1;
        if (paramIntent.getSerializableExtra("result") instanceof mld) {
          mld1 = (mld)paramIntent.getSerializableExtra("result");
          paramIntent = null;
        } else {
          mkw1 = (mkw)paramIntent.getSerializableExtra("result");
        } 
        if (mld1 != null) {
          a(mld1);
          return;
        } 
        a(mkw1);
        return;
      } 
    } else {
      return;
    } 
    if (paramInt2 == 0) {
      a((mld)null);
      return;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969504);
    c(2131299085);
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transferencia\presentation\TransferenciasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */