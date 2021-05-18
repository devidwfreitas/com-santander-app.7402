package com.santander.app.seguros.ui.cancellation.activities;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
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
import leo;
import lep;
import leq;
import ler;
import les;
import mhj;

public class SuccessCancellationActivity extends grs {
  public static final String a = "insurance_name_key";
  
  public static final String b = "family-id";
  
  public static final String c = "tag-name-key";
  
  private static final int d = 45678;
  
  private MultiStateLayout A;
  
  private String B;
  
  private String C;
  
  private String D;
  
  private String E;
  
  private TextView e;
  
  private SegurosTextView f;
  
  private SegurosTextView g;
  
  private Button w;
  
  private RelativeLayout x;
  
  private Button y;
  
  private kyp z;
  
  private void a() {
    try {
      ActionBar actionBar = getSupportActionBar();
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131296786));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void a(String paramString) {
    this.A.setState(aor.LOADING);
    this.z = new kyp();
    ksy ksy = new ksy(paramString);
    this.z.a(ksy, (kxl)new ler(this), (kxl)new les(this));
  }
  
  private void a(ksj paramksj) {
    String str;
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
    this.e.setText(this.E);
    this.g.setText(mhj.a(new Date(), "dd/MM/yyyy"));
    frq.d(String.format(this.C, new Object[] { "Produto" }), this.E);
    frq.d(String.format(this.C, new Object[] { "Data" }), mhj.a(new Date(), "ddMMaaaa"));
  }
  
  private void b() {
    this.A = (MultiStateLayout)findViewById(2131756082);
    this.e = (TextView)findViewById(2131755539);
    this.f = (SegurosTextView)findViewById(2131755540);
    this.g = (SegurosTextView)findViewById(2131755541);
    this.w = (Button)findViewById(2131755544);
    this.x = (RelativeLayout)findViewById(2131755536);
    this.y = (Button)findViewById(2131755543);
    this.w.setOnClickListener((View.OnClickListener)new leo(this));
    this.y.setOnClickListener((View.OnClickListener)new lep(this));
  }
  
  private void c() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      ActivityCompat.requestPermissions((Activity)this, new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 45678);
      return;
    } 
    File file = mhj.a((View)this.x, (Context)this);
    if (file != null) {
      mhj.a((Context)this, Uri.fromFile(file), getResources().getString(2131299065));
      return;
    } 
  }
  
  private void d() {
    Dialog dialog = new Dialog((Context)this.i);
    dialog.setContentView(2130968901);
    dialog.getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
    dialog.setCancelable(false);
    ((Button)dialog.findViewById(2131756701)).setOnClickListener((View.OnClickListener)new leq(this));
    dialog.show();
  }
  
  public void finish() {
    mhj.b((Context)this);
    super.finish();
    Intent intent = new Intent((Context)this, MyInsurancesV2Activity.class);
    intent.setFlags(67108864);
    startActivity(intent);
  }
  
  public void onBackPressed() {
    d();
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968747);
    overridePendingTransition(2131034137, 2131034138);
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("insurance_name_key")) {
      this.B = getIntent().getExtras().getString("insurance_name_key");
    } else {
      this.B = "";
    } 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("tag-name-key")) {
      this.C = getIntent().getExtras().getString("tag-name-key");
    } else {
      this.C = "%s";
    } 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("proposal-formalization-id"))
      this.D = getIntent().getExtras().getString("proposal-formalization-id"); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("family-id")) {
      this.E = getIntent().getExtras().getString("family-id");
    } else {
      this.E = "";
    } 
    frq.d(String.format(this.C, new Object[] { "Acao" }), "Comprovante");
    a();
    b();
    a(this.D);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\cancellation\activities\SuccessCancellationActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */