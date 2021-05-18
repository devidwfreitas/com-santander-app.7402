package com.santander.app.investimentos.fundos.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.santander.app.components.view.buttontabhost.ButtonTabHost;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import frq;
import gpu;
import grs;
import gsw;
import gtg;
import gti;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import jdm;
import jdq;
import jdv;
import jdw;
import jem;
import jhb;
import jhc;
import jhd;
import jhe;
import jhf;
import jhg;
import jhh;
import jhi;
import jhj;
import jhk;
import jhw;
import jie;
import jix;
import nat;

public class ListagemFundosActivity extends grs implements jhk {
  private gtg A;
  
  private jdw B;
  
  private String C;
  
  private Intent D;
  
  private LinearLayout E;
  
  private ImageView F;
  
  private TextView G;
  
  private LinearLayout H;
  
  private Dialog I;
  
  private TextView J;
  
  private Button K;
  
  private MenuItem L;
  
  private boolean M;
  
  private ScrollView N;
  
  private LinearLayout O;
  
  private TextView P;
  
  private jix a;
  
  private ButtonTabHost b;
  
  private LinearLayout c;
  
  private LinearLayout d;
  
  private Button e;
  
  private ExpandableListView f;
  
  private Activity g;
  
  private TextView w;
  
  private LinearLayout x;
  
  private LinearLayout y;
  
  private jhw z;
  
  private void a(ExpandableListView paramExpandableListView) {
    jhw jhw1 = (jhw)paramExpandableListView.getExpandableListAdapter();
    int k = 0;
    int j = 0;
    int i;
    for (i = 0; k < jhw1.getGroupCount(); i = m) {
      View view = jhw1.getGroupView(k, true, null, (ViewGroup)paramExpandableListView);
      view.measure(0, 0);
      int n = j + view.getMeasuredHeight();
      j = n;
      int m = i;
      if (paramExpandableListView.isGroupExpanded(k)) {
        j = n;
        m = 0;
        while (m < jhw1.getChildrenCount(k)) {
          view = jhw1.getChildView(k, m, false, null, (ViewGroup)paramExpandableListView);
          view.measure(0, 0);
          n = view.getMeasuredHeight();
          i = view.getMeasuredHeight();
          m++;
          j = n + j;
        } 
        m = i;
      } 
      k++;
    } 
    ViewGroup.LayoutParams layoutParams = paramExpandableListView.getLayoutParams();
    k = paramExpandableListView.getDividerHeight();
    layoutParams.height = (jhw1.getGroupCount() - 1) * k + j + i;
    paramExpandableListView.setLayoutParams(layoutParams);
    paramExpandableListView.requestLayout();
  }
  
  private void a(jdv paramjdv) {
    frq.d("Investimentos_Fundos_Acao", "TodosOsFundos");
    if (this.z != null)
      this.z.a(); 
    if (this.L != null)
      this.L.setVisible(true); 
    this.d.setVisibility(0);
    this.c.setVisibility(8);
    this.a.c();
    this.a.a(paramjdv);
  }
  
  private void d() {
    if (this.D.getExtras() != null) {
      if (this.D.getExtras().getBoolean("crm_fundos")) {
        this.b.setSelectedButtonTab2();
        this.a.a();
        return;
      } 
      if (this.D.getExtras().getBoolean("todos_fundos")) {
        this.b.setSelectedButtonTab2();
        a((jdv)null);
        return;
      } 
      g();
      return;
    } 
    g();
  }
  
  private void e() {
    this.I = new Dialog((Context)this, 2131427876);
    this.I.setContentView(2130968962);
    this.I.setCancelable(true);
    this.J = (TextView)this.I.findViewById(2131756912);
    this.K = (Button)this.I.findViewById(2131756913);
    this.K.setText(getString(2131296665));
    this.I.findViewById(2131756030).setOnClickListener((View.OnClickListener)new jhc(this));
    this.I.findViewById(2131756034).setOnClickListener((View.OnClickListener)new jhd(this));
    this.K.setOnClickListener((View.OnClickListener)new jhe(this));
  }
  
  private void f() {
    this.g = (Activity)this;
    this.b = (ButtonTabHost)findViewById(2131758219);
    this.b.a((Context)this, (gsw)new jhf(this));
    this.N = (ScrollView)findViewById(2131758202);
    this.x = (LinearLayout)findViewById(2131758221);
    this.w = (TextView)findViewById(2131758222);
    this.O = (LinearLayout)findViewById(2131758223);
    this.P = (TextView)findViewById(2131757573);
    this.c = (LinearLayout)findViewById(2131758220);
    this.d = (LinearLayout)findViewById(2131758226);
    this.E = (LinearLayout)findViewById(2131758227);
    this.F = (ImageView)findViewById(2131758229);
    this.E.setOnClickListener((View.OnClickListener)new jhg(this));
    this.H = (LinearLayout)findViewById(2131758230);
    this.G = (TextView)findViewById(2131758228);
    this.y = (LinearLayout)findViewById(2131758224);
    this.e = (Button)findViewById(2131758225);
    this.e.setOnClickListener((View.OnClickListener)new jhh(this));
    this.f = (ExpandableListView)findViewById(2131758231);
    this.A = new gtg(this.g, (gti)new jhi(this));
  }
  
  private void g() {
    frq.d("Investimentos_Fundos_Acao", "MeusFundos");
    if (this.z != null)
      this.z.a(); 
    if (this.L != null)
      this.L.setVisible(false); 
    this.c.setVisibility(0);
    this.d.setVisibility(8);
    this.a.a();
  }
  
  private jie h() {
    return (jie)new jhj(this);
  }
  
  public void a() {
    a(getString(2131298186));
    this.I.findViewById(2131756030).setVisibility(8);
    this.I.show();
  }
  
  public void a(String paramString) {
    this.J.setText((CharSequence)Html.fromHtml(paramString));
  }
  
  public void a(String paramString1, String paramString2) {
    if (paramString1 != null && paramString2 != null) {
      this.x.setVisibility(0);
      this.w.setText(paramString1);
      this.O.setVisibility(0);
      this.P.setText(paramString2);
      this.y.setVisibility(8);
      return;
    } 
    this.y.setVisibility(0);
  }
  
  public void a(jdm paramjdm, jem paramjem) {
    ArrayList<?> arrayList = new ArrayList(paramjdm.d());
    Collections.copy(arrayList, paramjdm.d());
    this.z = new jhw((Context)this, arrayList, h(), paramjem);
    this.f.setAdapter((ExpandableListAdapter)this.z);
    a(this.f);
    this.N.scrollTo(5, 10);
    this.B = null;
  }
  
  public void a(jdq paramjdq) {
    if (paramjdq.a()) {
      this.E.setVisibility(0);
      this.H.setVisibility(8);
      this.E.setEnabled(false);
      this.F.setVisibility(4);
      this.G.setText("Recusado");
      return;
    } 
    if (paramjdq.d()) {
      String str;
      this.E.setVisibility(0);
      this.H.setVisibility(8);
      TextView textView = this.G;
      if (paramjdq.c() != null) {
        str = paramjdq.c();
      } else {
        str = "";
      } 
      textView.setText(str);
      return;
    } 
    this.E.setVisibility(8);
    this.H.setVisibility(0);
    this.M = true;
  }
  
  public void b() {
    a("Para novas contratações fale agora com nossa assessoria especializada. <br/>Escolha sua opção:");
    this.I.findViewById(2131756030).setVisibility(0);
    this.I.show();
  }
  
  public void c() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.USUARIO_CONSULTIVO);
    startActivity(intent);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    if (paramInt2 == -1) {
      if (paramIntent.hasExtra("filtro")) {
        this.B = (jdw)paramIntent.getSerializableExtra("filtro");
        this.b.setSelectedButtonTab2();
        a(this.B.c());
        return;
      } 
    } else {
      return;
    } 
    this.b.setSelectedButtonTab2();
    a((jdv)null);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968704);
    this.D = getIntent();
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getResources().getString(2131297925));
    } 
    this.a = new jix(this);
    f();
    d();
    this.b.setOnClickListener((View.OnClickListener)new jhb(this));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886090, paramMenu);
    this.L = paramMenu.getItem(0);
    this.L.setIcon(2130837916);
    this.L.setVisible(false);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return true;
      case 2131759625:
        break;
    } 
    frq.d("Investimentos_Fundos_Acao", "Filtrar");
    this.D = new Intent((Context)this.g, FiltroFundosActivity.class);
    startActivityForResult(this.D, 1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\fundos\presentation\ListagemFundosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */