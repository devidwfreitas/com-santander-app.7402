package com.santander.app.pagamentos.titulos.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.santander.app.components.view.zxing.CustomScannerActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import evq;
import evr;
import gpu;
import grs;
import java.io.Serializable;
import jsr;
import jvf;
import jvg;
import jvh;
import jvi;
import jvj;
import jvk;
import jvl;
import jwf;
import jwg;
import mxn;

public class PagamentosCodigoBarrasActivity extends grs implements jvl {
  public static boolean b = false;
  
  public static boolean c = false;
  
  public Activity a;
  
  private LinearLayout d;
  
  private EditText e;
  
  private Button f;
  
  private jwf g;
  
  private boolean w = false;
  
  private void c() {
    this.d = (LinearLayout)findViewById(2131758300);
    this.e = (EditText)findViewById(2131758301);
    this.f = (Button)findViewById(2131757527);
    this.d.setOnClickListener((View.OnClickListener)new jvf(this));
    this.e.addTextChangedListener((TextWatcher)new jvg(this));
    this.e.setText("");
    this.e.setOnClickListener((View.OnClickListener)new jvh(this));
    this.f.setOnClickListener((View.OnClickListener)new jvi(this));
  }
  
  public void a() {
    evq evq = new evq((Activity)this);
    evq.b(false);
    evq.a(CustomScannerActivity.class);
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)this.a, "android.permission.CAMERA") != 0) {
        ActivityCompat.requestPermissions(this.a, new String[] { "android.permission.CAMERA" }, 2);
        return;
      } 
      evq.d();
      return;
    } 
    evq.d();
  }
  
  public void a(String paramString) {
    mxn.b(this.a, paramString);
  }
  
  public void a(String paramString, int paramInt) {
    this.w = true;
    this.e.setFilters(new InputFilter[] { (InputFilter)new jvj(this, paramInt) });
    this.e.setText(paramString);
    this.e.setSelection(this.e.getText().length());
    this.w = false;
  }
  
  public void a(jsr paramjsr) {
    Intent intent = new Intent((Context)this, FormaPagamentosActivity.class);
    intent.putExtra("consultaTitulos", (Serializable)paramjsr);
    startActivity(intent);
  }
  
  public void b() {
    if (!c) {
      c = true;
      Handler handler = new Handler();
      handler.postDelayed((Runnable)new jvk(this, handler), 1000L);
    } 
  }
  
  public void b(String paramString) {
    this.e.setText(paramString);
    this.g.a(paramString);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    evr evr = evq.a(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -2) {
      startActivity(new Intent((Context)this, HomeLogadaActivity.class));
      return;
    } 
    if (evr != null && evr.a() != null) {
      this.g.c(evr.a());
      this.g.a(this.e.getText().toString());
      return;
    } 
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    c = false;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968722);
    c(2131298956);
    this.a = (Activity)this;
    this.g = (jwf)new jwg(this, this.a);
    c();
    this.g.c();
    this.g.a((View)this.e);
  }
  
  protected void onResume() {
    boolean bool;
    super.onResume();
    this.g.a();
    Button button = this.f;
    if (!TextUtils.isEmpty(this.e.getText().toString())) {
      bool = true;
    } else {
      bool = false;
    } 
    button.setEnabled(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\pagamentos\titulos\presentation\PagamentosCodigoBarrasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */