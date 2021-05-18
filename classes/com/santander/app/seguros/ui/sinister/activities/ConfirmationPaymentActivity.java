package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import ejm;
import gkw;
import gnp;
import gnv;
import gpu;
import grs;
import grz;
import ih;
import im;
import ir;
import is;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kts;
import ktt;
import kud;
import kue;
import kum;
import kun;
import kve;
import kwr;
import kxl;
import kze;
import kzf;
import lpt;
import lpu;
import lpw;
import lpx;
import lpy;
import lpz;
import lqa;
import lqc;
import lqd;
import lqe;
import lqf;
import lqg;
import lqh;
import lqi;
import lqj;
import lqk;
import mge;
import mhj;
import miq;
import mkq;
import mli;
import mlj;
import mqc;
import mzr;
import mzx;
import org.json.JSONException;
import org.json.JSONObject;

public class ConfirmationPaymentActivity extends grs {
  public static final String a = "sinister-code";
  
  public static final String b = "sinister-code";
  
  public static final String c = "bank-id";
  
  public static final String d = "details_certificate_key";
  
  public static final String e = "last-certificate-key";
  
  public static final String f = "033 - SANTANDER";
  
  private static final String g = "99999";
  
  private static final int w = 8888;
  
  private EditText A;
  
  private EditText B;
  
  private Button C;
  
  private MultiStateLayout D;
  
  private String E;
  
  private String F;
  
  private kum G;
  
  private kve H;
  
  private String I;
  
  private String J;
  
  private mli K;
  
  private ArrayList<kun> L;
  
  private mqc M;
  
  private mli N;
  
  private kze x;
  
  private AutoCompleteTextView y;
  
  private EditText z;
  
  private String a(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      String str = paramString;
      if (paramString.length() > 4)
        str = paramString.substring(0, 4); 
      str = mhj.x(str);
      paramString = str;
      if (str.length() < 4)
        paramString = mhj.a(str, '0', 4); 
      return paramString;
    } 
    return "";
  }
  
  private void a() {
    this.D = (MultiStateLayout)findViewById(2131755279);
    this.z = (EditText)findViewById(2131756555);
    this.A = (EditText)findViewById(2131756556);
    this.B = (EditText)findViewById(2131756558);
    this.C = (Button)findViewById(2131756561);
    this.y = (AutoCompleteTextView)findViewById(2131756554);
  }
  
  private void a(List<kue> paramList) {
    if (paramList != null && !TextUtils.isEmpty(this.J)) {
      Iterator<kue> iterator = paramList.iterator();
      while (true) {
        if (iterator.hasNext()) {
          kud kud = ((kue)iterator.next()).a();
          if (kud != null && kud.b() != null && kud.b().c() != null)
            try {
              if (kud.b().c().substring(13, kud.b().c().length()).replaceAll(" ", "").contains(this.J.replaceAll(" ", ""))) {
                this.F = kud.b().c();
                return;
              } 
            } catch (Exception exception) {
              exception.printStackTrace();
            }  
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void a(mli parammli) {
    if (parammli != null) {
      for (int i = 0; i < parammli.b().size(); i++) {
        if (parammli.b().get(i) != null) {
          kun kun = new kun();
          kun.b(((mkq)parammli.b().get(i)).e());
          kun.a(((mkq)parammli.b().get(i)).d());
          this.L.add(kun);
        } 
      } 
      Collections.sort(this.L, (Comparator<? super kun>)new lqk(this));
      ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 17367049, this.L);
      this.y.setAdapter((ListAdapter)arrayAdapter);
    } 
  }
  
  private String b(List<ktt> paramList) {
    Iterator<ktt> iterator = paramList.iterator();
    while (iterator.hasNext()) {
      for (kts kts : ((ktt)iterator.next()).f()) {
        if (!TextUtils.isEmpty(this.J) && kts.e().replaceAll(" ", "").equalsIgnoreCase(this.J.replaceAll(" ", "")))
          return kts.i().replaceAll(" ", ""); 
      } 
    } 
    return "";
  }
  
  private void b() {
    String str = a(this.y.getText().toString());
    this.G.g(this.z.getText().toString());
    if (!TextUtils.isEmpty(str))
      this.G.f(str); 
    this.G.d(this.H.c());
    this.G.b(this.H.d());
    this.G.i(mzr.m());
    this.G.e(this.H.e());
    this.G.h(this.A.getText().toString() + this.B.getText().toString());
    this.G.c(this.H.f());
    this.G.a(this.B.getText().toString());
    mge.INSTANCE.setCodeNameBank(this.y.getText().toString());
    mge.INSTANCE.setBankData(this.G);
  }
  
  private void b(mli parammli) {
    ArrayList arrayList = (ArrayList)parammli.a();
    Dialog dialog = new Dialog((Context)this);
    dialog.requestWindowFeature(1);
    dialog.setContentView(2130968904);
    ((TextView)dialog.findViewById(2131756026)).setText(this.y.getHint());
    LinearLayout linearLayout = (LinearLayout)dialog.findViewById(2131756713);
    EditText editText = (EditText)dialog.findViewById(2131756714);
    Window window = dialog.getWindow();
    WindowManager.LayoutParams layoutParams = window.getAttributes();
    window.setBackgroundDrawable((Drawable)new ColorDrawable(0));
    layoutParams.gravity = 17;
    layoutParams.width = -1;
    layoutParams.height = -2;
    window.setAttributes(layoutParams);
    dialog.setCancelable(false);
    ListView listView = (ListView)dialog.findViewById(2131756715);
    grz grz = new grz(parammli.a(), (Context)this);
    listView.setAdapter((ListAdapter)grz);
    listView.setOnItemClickListener((AdapterView.OnItemClickListener)new lpu(this, dialog));
    ((Button)dialog.findViewById(2131756700)).setOnClickListener((View.OnClickListener)new lpw(this, dialog));
    editText.addTextChangedListener((TextWatcher)new lpx(this, editText, grz));
    dialog.show();
  }
  
  private void c() {
    h();
    if (mge.INSTANCE.getBankData() != null) {
      String str = mge.INSTANCE.getBankData().h().substring(0, mge.INSTANCE.getBankData().h().length() - mge.INSTANCE.getBankData().a().length());
      this.z.setText(mge.INSTANCE.getBankData().g());
      this.A.setText(str);
      this.B.setText(mge.INSTANCE.getBankData().a());
      if (!TextUtils.isEmpty(this.I)) {
        this.y.setText(this.I);
        e();
      } else {
        this.y.setText(mge.INSTANCE.getCodeNameBank());
      } 
    } else if (TextUtils.isEmpty(this.J)) {
      g();
    } else {
      d();
    } 
    this.C.setOnClickListener((View.OnClickListener)new lpt(this));
    f();
  }
  
  private void d() {
    if (TextUtils.isEmpty(this.J))
      return; 
    this.D.setState(aor.LOADING);
    this.x.a((kxl)new lqc(this), (kxl)new lqd(this));
  }
  
  private void e() {
    this.D.setState(aor.LOADING);
    mlj mlj = new mlj();
    mlj.setConnUuid(miq.C().i());
    mlj.setTokenSessao(miq.C().j());
    this.M.a((gkw)new lqe(this), mlj);
  }
  
  private void f() {
    this.y.setOnClickListener((View.OnClickListener)new lqf(this));
    this.y.setOnFocusChangeListener((View.OnFocusChangeListener)new lqg(this));
  }
  
  private void g() {
    if (!TextUtils.isEmpty(this.F)) {
      this.D.setState(aor.LOADING);
      this.x.b(this.F, (kxl)new lqh(this), (kxl)new lqi(this));
      return;
    } 
    this.D.setState(aor.CONTENT);
  }
  
  private void h() {
    this.M.a((gkw)new lqj(this));
  }
  
  private void i() {
    if (j()) {
      b();
      this.D.setState(aor.LOADING);
      JSONObject jSONObject = new JSONObject();
      try {
        jSONObject.put("X-Application-Key", mzx.a().c().get("appKey"));
        jSONObject.put("Content-Type", "application/json");
      } catch (Exception exception) {
        exception.printStackTrace();
      } 
      try {
        JSONObject jSONObject1 = new JSONObject((new ejm()).b(kum.a(this.G)));
      } catch (JSONException jSONException) {
        jSONException.printStackTrace();
        jSONException = null;
      } 
      if (jSONException != null) {
        ir ir = gnp.a().a(kwr.SINISTER_BANK_DATA.getEndpoint(), im.PUT, jSONObject, (JSONObject)jSONException, true);
        gnv gnv = new gnv(p(), ir);
        if (gnp.a().b() != null)
          try {
            gnp.a().b().a(ir, (ih)gnv);
            return;
          } catch (Exception exception) {
            Log.e("ERROR_SERV", exception.getMessage());
            return;
          }  
      } 
    } 
  }
  
  private boolean j() {
    if (TextUtils.isEmpty(this.y.getText().toString())) {
      mhj.c((Context)this, getResources().getString(2131297381));
      return false;
    } 
    if (TextUtils.isEmpty(this.z.getText().toString())) {
      mhj.c((Context)this, getResources().getString(2131297351));
      return false;
    } 
    if (TextUtils.isEmpty(this.A.getText().toString())) {
      mhj.c((Context)this, getResources().getString(2131297355));
      return false;
    } 
    if (TextUtils.isEmpty(this.B.getText().toString())) {
      mhj.c((Context)this, getResources().getString(2131297350));
      return false;
    } 
    return true;
  }
  
  private void k() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839140));
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131298352);
    gpu.a((Activity)this, actionBar, getString(2131298352));
  }
  
  private gkw<is> n() {
    return (gkw<is>)new lpy(this);
  }
  
  private gkw<is> o() {
    return (gkw<is>)new lpz(this);
  }
  
  private gkw<is> p() {
    return (gkw<is>)new lqa(this);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    gpu.b((Activity)this);
    if (paramInt1 == 8888) {
      if (paramInt2 == -1) {
        mkq mkq = (mkq)paramIntent.getSerializableExtra("result");
        this.y.setText(mkq.d() + " - " + mkq.e());
        return;
      } 
    } else {
      return;
    } 
    if (paramInt2 == 0) {
      this.y.setText("");
      return;
    } 
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968874);
    this.x = (kze)new kzf();
    this.L = new ArrayList<kun>();
    this.G = new kum();
    this.K = new mli();
    this.M = new mqc((Activity)this);
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("sinister-code"))
      this.H = (kve)(new ejm()).a(getIntent().getExtras().getString("sinister-code"), kve.class); 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("bank-id"))
      this.I = (String)(new ejm()).a(getIntent().getExtras().getString("bank-id"), String.class); 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("details_certificate_key"))
      this.F = (String)(new ejm()).a(getIntent().getExtras().getString("details_certificate_key"), String.class); 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("last-certificate-key"))
      this.J = (String)(new ejm()).a(getIntent().getExtras().getString("last-certificate-key"), String.class); 
    k();
    a();
    c();
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\ConfirmationPaymentActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */