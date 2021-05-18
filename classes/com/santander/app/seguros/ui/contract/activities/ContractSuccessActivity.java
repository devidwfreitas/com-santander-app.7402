package com.santander.app.seguros.ui.contract.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;
import com.santander.app.seguros.ui.widgets.SegurosTextView;
import frq;
import gpu;
import grs;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import ksj;
import ksy;
import kxl;
import kyp;
import ljg;
import ljh;
import lji;
import ljj;
import mgt;
import mhj;

public class ContractSuccessActivity extends grs {
  public static final String a = "family-key";
  
  public static final String b = "insurance-name-key";
  
  private static final int c = 45678;
  
  private String A;
  
  private String B;
  
  private kyp C;
  
  private String D;
  
  private MultiStateLayout d;
  
  private TextView e;
  
  private SegurosTextView f;
  
  private SegurosTextView g;
  
  private SegurosTextView w;
  
  private Button x;
  
  private RelativeLayout y;
  
  private Button z;
  
  private void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297580));
  }
  
  private void a(String paramString) {
    this.d.setState(aor.LOADING);
    this.C = new kyp();
    ksy ksy = new ksy(paramString);
    this.C.a(ksy, (kxl)new ljg(this), (kxl)new ljh(this));
  }
  
  private void a(ksj paramksj) {
    String str;
    if (mgt.d(this.D)) {
      frq.d("Seguros_Contratacao_Vida_Comprovante_Acao", "TelaComprovante");
    } else if (mgt.b(this.D)) {
      frq.d("Seguros_Contratacao_AP_Comprovante_Acao", "TelaComprovante");
    } 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (String str1 : paramksj.b().split("\\|")) {
      if (str1.contains(":")) {
        hashMap.put(str1.split(":")[0], str1.split(":")[1]);
      } else if (!str1.equals("")) {
        hashMap.put(str1.split(":")[0], "");
      } 
    } 
    if (hashMap.containsKey("Número da Proposta")) {
      str = (String)hashMap.get("Número da Proposta");
    } else {
      str = "";
    } 
    this.f.setText(str);
    this.e.setText(this.A);
    this.g.setText(mhj.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    this.w.setText(paramksj.d());
  }
  
  private void b() {
    this.e = (TextView)findViewById(2131755539);
    this.f = (SegurosTextView)findViewById(2131755540);
    this.g = (SegurosTextView)findViewById(2131755541);
    this.w = (SegurosTextView)findViewById(2131755542);
    this.x = (Button)findViewById(2131755544);
    this.d = (MultiStateLayout)findViewById(2131755535);
    this.y = (RelativeLayout)findViewById(2131755536);
    this.z = (Button)findViewById(2131755543);
    this.x.setOnClickListener((View.OnClickListener)new lji(this));
    this.z.setOnClickListener((View.OnClickListener)new ljj(this));
  }
  
  private void c() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      ActivityCompat.requestPermissions((Activity)this, new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 45678);
      return;
    } 
    File file = mhj.a((View)this.y, (Context)this);
    if (file != null) {
      mhj.a((Context)this, Uri.fromFile(file), getResources().getString(2131299065));
      return;
    } 
  }
  
  public void onBackPressed() {
    Intent intent = new Intent((Context)this, MyInsurancesV2Activity.class);
    intent.addFlags(335577088);
    startActivity(intent);
    mhj.b((Context)this);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968646);
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("family-key"))
      this.D = getIntent().getExtras().getString("family-key"); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("proposal-formalization-id"))
      this.B = getIntent().getExtras().getString("proposal-formalization-id"); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("insurance-name-key")) {
      this.A = getIntent().getExtras().getString("insurance-name-key");
    } else {
      this.A = "";
    } 
    b();
    a();
    a(this.B);
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    switch (paramInt) {
      default:
        return;
      case 45678:
        break;
    } 
    if (paramArrayOfint.length >= 1 && paramArrayOfint[0] == 0) {
      c();
      return;
    } 
    mhj.c((Context)this, getResources().getString(2131297378));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\contract\activities\ContractSuccessActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */