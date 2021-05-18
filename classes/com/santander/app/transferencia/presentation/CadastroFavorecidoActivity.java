package com.santander.app.transferencia.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import br.com.santander.uisdk.SantanderSwitch;
import com.santander.app.components.view.ClickToSelectEditText;
import com.santander.app.contacorrente.domain.Conta;
import gpd;
import gpu;
import grs;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import mip;
import miq;
import mkq;
import mkw;
import mnj;
import mnk;
import mnl;
import mnm;
import mnn;
import mno;
import mpq;
import mpr;
import mxn;
import naj;
import nam;
import nap;

public class CadastroFavorecidoActivity extends grs implements mno {
  private static final String a = "CadastroFavorecidoActivity";
  
  private static final int b = 888;
  
  private SantanderSwitch A;
  
  private Button B;
  
  private mkq C;
  
  private mip D;
  
  private ArrayList<mkq> E;
  
  private mkw F;
  
  private mpq G;
  
  private Conta H;
  
  private TextWatcher I = (TextWatcher)new mnn(this);
  
  private LinearLayout c;
  
  private RelativeLayout d;
  
  private LinearLayout e;
  
  private ClickToSelectEditText f;
  
  private EditText g;
  
  private EditText w;
  
  private EditText x;
  
  private EditText y;
  
  private EditText z;
  
  private void d() {
    this.H = (Conta)getIntent().getExtras().getSerializable("contaSelecionada");
    this.c = (LinearLayout)findViewById(2131757705);
    this.c.setVisibility(8);
    this.d = (RelativeLayout)findViewById(2131757696);
    this.d.setVisibility(8);
    this.e = (LinearLayout)findViewById(2131757710);
    this.e.setVisibility(8);
    this.f = (ClickToSelectEditText)findViewById(2131757695);
    this.g = (EditText)findViewById(2131757698);
    this.g.setEnabled(false);
    this.w = (EditText)findViewById(2131757699);
    this.w.setEnabled(false);
    this.x = (EditText)findViewById(2131757701);
    this.x.setEnabled(false);
    this.y = (EditText)findViewById(2131757707);
    this.z = (EditText)findViewById(2131757709);
    this.A = (SantanderSwitch)findViewById(2131757711);
    this.D = (mip)miq.C();
    this.g.addTextChangedListener((TextWatcher)new mnj(this));
    this.w.addTextChangedListener((TextWatcher)new mnk(this));
    this.g.addTextChangedListener(this.I);
    this.w.addTextChangedListener(this.I);
    this.x.addTextChangedListener(this.I);
    this.y.addTextChangedListener(this.I);
    this.z.addTextChangedListener(this.I);
    this.z.addTextChangedListener(nam.a(this.z, nap.AUTO));
    this.B = (Button)findViewById(2131757692);
    this.B.setEnabled(true);
    this.B.setOnClickListener((View.OnClickListener)new mnl(this));
    this.B.setEnabled(false);
    this.f.setOnItemSelectedListener((gpd)new mnm(this));
    this.G = (mpq)new mpr(this);
    this.G.c();
  }
  
  private mkw e() {
    mkw mkw1 = new mkw();
    mkw1.setConnUuid(this.D.i());
    mkw1.setTokenSessao(this.D.j());
    mkw1.setTokenTransacao(this.D.f().m());
    if (this.C != null) {
      str = naj.a(this.C.a().trim(), 4);
    } else {
      str = "";
    } 
    mkw1.c(str);
    mkw1.k(this.f.getText().toString());
    mkw1.l(this.C.c());
    mkw1.a(this.H.getAgencia());
    mkw1.b(this.H.getCuenta());
    if (this.g.getText().toString() != null) {
      str = this.g.getText().toString().trim();
    } else {
      str = "";
    } 
    mkw1.d(str);
    if (this.w.getText().toString() != null) {
      str = this.w.getText().toString().trim();
    } else {
      str = "";
    } 
    mkw1.e(str);
    mkw1.b(h());
    if (this.x.getText().toString() != null) {
      str = this.x.getText().toString().trim();
    } else {
      str = "";
    } 
    mkw1.j(str);
    if (this.z.getText().toString() != null) {
      str = this.z.getText().toString().trim();
    } else {
      str = "";
    } 
    mkw1.f(str);
    if (this.y.getText().toString() != null) {
      str = this.y.getText().toString().trim();
    } else {
      str = "";
    } 
    mkw1.h(str);
    if (mkw1.m()) {
      str = "03";
      mkw1.g(str);
      mkw1.a(this.A.a());
      return mkw1;
    } 
    String str = "01";
    mkw1.g(str);
    mkw1.a(this.A.a());
    return mkw1;
  }
  
  private void f() {
    this.d.setVisibility(0);
    this.e.setVisibility(0);
    if (this.C.a().equals("033") || this.C.a().equals("0033")) {
      this.c.setVisibility(8);
      this.w.setFilters(new InputFilter[] { (InputFilter)new InputFilter.LengthFilter(8) });
      return;
    } 
    this.c.setVisibility(0);
    this.w.setFilters(new InputFilter[] { (InputFilter)new InputFilter.LengthFilter(11) });
  }
  
  private void g() {
    this.x.setText("");
    this.w.setText("");
    this.g.setText("");
    this.z.setText("");
    this.y.setText("");
  }
  
  private boolean h() {
    boolean bool = false;
    null = bool;
    if (this.C != null) {
      if ("".equals(this.w.getText().toString()) || !this.C.a().equals("033")) {
        null = bool;
        return this.C.a().equals("0033") ? "6".equalsIgnoreCase(this.w.getText().toString().substring(0, 1)) : null;
      } 
    } else {
      return null;
    } 
    return "6".equalsIgnoreCase(this.w.getText().toString().substring(0, 1));
  }
  
  private void i() {
    this.B.setEnabled(false);
    if (this.C.a().equals("033") || this.C.a().equals("0033")) {
      if (!TextUtils.isEmpty(this.f.getText().toString()) && !TextUtils.isEmpty(this.x.getText().toString()) && !TextUtils.isEmpty(this.w.getText().toString()) && !TextUtils.isEmpty(this.g.getText().toString()))
        this.B.setEnabled(true); 
      return;
    } 
    if (!TextUtils.isEmpty(this.f.getText().toString()) && !TextUtils.isEmpty(this.z.getText().toString()) && !TextUtils.isEmpty(this.y.getText().toString()) && !TextUtils.isEmpty(this.x.getText().toString()) && !TextUtils.isEmpty(this.w.getText().toString()) && !TextUtils.isEmpty(this.g.getText().toString())) {
      this.B.setEnabled(true);
      return;
    } 
  }
  
  public void a() {
    this.F = e();
    this.G.a(this.F, this.H.getIndexConta());
  }
  
  public void a(String paramString) {
    mxn.e((Activity)this, paramString);
  }
  
  public void a(String paramString, int paramInt) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: iload_2
    //   3: tableswitch default -> 40, 2131757697 -> 106, 2131757698 -> 40, 2131757699 -> 40, 2131757700 -> 106, 2131757701 -> 40, 2131757702 -> 106
    //   40: aload_0
    //   41: iload_2
    //   42: invokevirtual findViewById : (I)Landroid/view/View;
    //   45: checkcast android/support/design/widget/TextInputLayout
    //   48: astore #5
    //   50: ldc_w ''
    //   53: aload_1
    //   54: invokevirtual equals : (Ljava/lang/Object;)Z
    //   57: ifne -> 184
    //   60: aload_1
    //   61: astore #4
    //   63: aload #5
    //   65: aload #4
    //   67: invokevirtual setError : (Ljava/lang/CharSequence;)V
    //   70: aload_0
    //   71: iload_2
    //   72: invokevirtual findViewById : (I)Landroid/view/View;
    //   75: checkcast android/support/design/widget/TextInputLayout
    //   78: astore #4
    //   80: ldc_w ''
    //   83: aload_1
    //   84: invokevirtual equals : (Ljava/lang/Object;)Z
    //   87: ifne -> 192
    //   90: aload #4
    //   92: iload_3
    //   93: invokevirtual setErrorEnabled : (Z)V
    //   96: aload_0
    //   97: iload_2
    //   98: invokevirtual findViewById : (I)Landroid/view/View;
    //   101: invokevirtual requestFocus : ()Z
    //   104: pop
    //   105: return
    //   106: aload_0
    //   107: ldc_w 2131757703
    //   110: invokevirtual findViewById : (I)Landroid/view/View;
    //   113: checkcast android/support/design/widget/TextInputLayout
    //   116: astore #5
    //   118: ldc_w ''
    //   121: aload_1
    //   122: invokevirtual equals : (Ljava/lang/Object;)Z
    //   125: ifne -> 171
    //   128: aload_1
    //   129: astore #4
    //   131: aload #5
    //   133: aload #4
    //   135: invokevirtual setError : (Ljava/lang/CharSequence;)V
    //   138: aload_0
    //   139: ldc_w 2131757703
    //   142: invokevirtual findViewById : (I)Landroid/view/View;
    //   145: checkcast android/support/design/widget/TextInputLayout
    //   148: astore #4
    //   150: ldc_w ''
    //   153: aload_1
    //   154: invokevirtual equals : (Ljava/lang/Object;)Z
    //   157: ifne -> 179
    //   160: iconst_1
    //   161: istore_3
    //   162: aload #4
    //   164: iload_3
    //   165: invokevirtual setErrorEnabled : (Z)V
    //   168: goto -> 96
    //   171: ldc_w ''
    //   174: astore #4
    //   176: goto -> 131
    //   179: iconst_0
    //   180: istore_3
    //   181: goto -> 162
    //   184: ldc_w ''
    //   187: astore #4
    //   189: goto -> 63
    //   192: iconst_0
    //   193: istore_3
    //   194: goto -> 90
  }
  
  public void a(ArrayList<mkq> paramArrayList) {
    this.E = paramArrayList;
    b();
  }
  
  public void a(List<mkq> paramList) {
    this.f.setItems(paramList);
  }
  
  public void b() {
    Intent intent = new Intent((Context)this, ListagemTodosBancosActivity.class);
    intent.putExtra("todosBancos", this.E);
    startActivityForResult(intent, 888);
  }
  
  public void b(String paramString) {
    if (paramString != null && !paramString.isEmpty())
      this.F.h(paramString); 
    Intent intent = new Intent();
    intent.putExtra("result", (Serializable)this.F);
    setResult(-1, intent);
    finish();
  }
  
  public void c() {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    gpu.b((Activity)this);
    if (paramInt1 == 888) {
      if (paramInt2 == -1) {
        mkq mkq1 = (mkq)paramIntent.getSerializableExtra("result");
        this.C = mkq1;
        this.f.setText(mkq1.e());
        f();
        return;
      } 
    } else {
      return;
    } 
    if (paramInt2 == 0) {
      this.C = null;
      this.f.setText("");
      return;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968826);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131299085));
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transferencia\presentation\CadastroFavorecidoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */