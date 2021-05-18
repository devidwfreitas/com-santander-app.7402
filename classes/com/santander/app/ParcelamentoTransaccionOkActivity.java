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
import fkd;
import fke;
import frq;
import ful;
import fum;
import goj;
import gpu;
import hau;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import naj;
import nak;

public class ParcelamentoTransaccionOkActivity extends goj {
  private final String a = "ParcelamentoTransaccionOkActivity";
  
  private ParcelamentoTransaccionOkActivity b;
  
  public String a() {
    return a(2131756334);
  }
  
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
    setContentView(2130969411);
    this.b = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298342));
    frq.a("Cartoes_ParcelamentoDeFatura");
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
    ((TextView)findViewById(2131756352)).setText(nak.l(ful.m()));
    ((TextView)findViewById(2131759173)).setText(naj.f((Float.parseFloat(ful.J().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759177)).setText(str3);
    ((TextView)findViewById(2131759198)).setText(str4);
    ((TextView)findViewById(2131759200)).setText(str2);
    ((TextView)findViewById(2131759202)).setText(naj.f((Float.parseFloat(ful.I().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759204)).setText(naj.f((Float.parseFloat(ful.F().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759206)).setText(naj.F(ful.B()));
    ((TextView)findViewById(2131759208)).setText(naj.F(ful.h().replace("+", "")));
    ((TextView)findViewById(2131756353)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    ((TextView)findViewById(2131759191)).setText(ful.z());
    TextView textView = (TextView)findViewById(2131756348);
    if (textView != null && textView.getText() != null && textView.getText().toString().length() > 0 && hau.a().z())
      textView.setText(textView.getText().toString().replace("realizad", "agendad")); 
    LinearLayout linearLayout1 = (LinearLayout)findViewById(2131755436);
    LinearLayout linearLayout2 = (LinearLayout)findViewById(2131755437);
    linearLayout1.setOnClickListener((View.OnClickListener)new fkd(this, linearLayout1, linearLayout2));
    linearLayout2.setOnClickListener((View.OnClickListener)new fke(this));
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\ParcelamentoTransaccionOkActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */