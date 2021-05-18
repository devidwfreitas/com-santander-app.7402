package com.santander.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import fkc;
import ful;
import fum;
import gpu;
import grs;
import hau;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import naj;

public class ParcelamentoTransaccionErrorActivity extends grs {
  private final String a = "ParcelamentoTransaccionErrorActivity";
  
  private String b;
  
  private ParcelamentoTransaccionErrorActivity c;
  
  public boolean a(Context paramContext) {
    boolean bool = false;
    List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < list.size()) {
        if (((ActivityManager.RunningAppProcessInfo)list.get(i)).processName.equals("com.santander.app")) {
          onDestroy();
          Process.killProcess(Process.myPid());
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969410);
    this.c = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298342));
    ful ful = hau.a().v();
    String str3 = "";
    String str2 = "";
    String str1 = "";
    for (int i = 0; i < ful.K().size(); i++) {
      if (((fum)ful.K().get(i)).b().equals("true")) {
        String str5 = str2;
        String str6 = str3;
        try {
          float f = Float.parseFloat(((fum)ful.K().get(i)).c());
          str5 = str2;
          str6 = str3;
          Float float_ = Float.valueOf(Float.parseFloat(((fum)ful.K().get(i)).d()) / 100.0F);
          str5 = str2;
          str6 = str3;
          str3 = Float.valueOf(f).intValue() + "";
          str5 = str2;
          str6 = str3;
          str2 = naj.f(float_.toString());
          str5 = str2;
          str6 = str3;
          String str = naj.f(float_.toString());
          str1 = str;
        } catch (Exception exception) {
          str3 = str6;
          str2 = str5;
        } 
      } 
    } 
    String str4 = str1;
    if (ful.G() != null) {
      str4 = str1;
      if (ful.G().length() > 0) {
        str4 = str1;
        try {
          if (Float.parseFloat(ful.G()) > 0.0F)
            str4 = naj.s(ful.G()); 
        } catch (Exception exception) {
          str4 = ful.G();
        } 
      } 
    } 
    ((TextView)findViewById(2131756350)).setText(ful.w());
    ((TextView)findViewById(2131756352)).setText(ful.m());
    ((TextView)findViewById(2131759173)).setText(naj.f((Float.parseFloat(ful.J().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759177)).setText(str3);
    ((TextView)findViewById(2131759198)).setText(str4);
    ((TextView)findViewById(2131759200)).setText(str2);
    ((TextView)findViewById(2131759202)).setText(naj.f((Float.parseFloat(ful.I().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759204)).setText(naj.f((Float.parseFloat(ful.F().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759206)).setText(naj.F(ful.B()));
    ((TextView)findViewById(2131759208)).setText(naj.F(ful.h().replace("+", "")));
    ((TextView)findViewById(2131756353)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    ((LinearLayout)findViewById(2131758571)).setOnClickListener((View.OnClickListener)new fkc(this));
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      this.b = bundle.getString("errorMsg");
      if (this.b != null && this.b.length() > 0) {
        TextView textView = (TextView)findViewById(2131759232);
        textView.setText(this.b);
        textView.setVisibility(0);
      } 
    } 
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\ParcelamentoTransaccionErrorActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */