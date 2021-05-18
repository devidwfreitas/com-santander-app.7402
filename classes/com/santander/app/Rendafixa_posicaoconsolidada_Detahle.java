package com.santander.app;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.widget.TextView;
import fwi;
import gpu;
import grs;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import mzr;
import naj;
import nak;
import naq;

public class Rendafixa_posicaoconsolidada_Detahle extends grs {
  private final String a = "Rendafixa_posicaoconsolidada_Detahle";
  
  private String a(String paramString) {
    if (paramString.contains("-"));
    paramString = paramString.replaceAll("[+]", "").replaceAll("[-]", "").trim();
    return Integer.parseInt(paramString.substring(0, paramString.length() - 5), 10) + "," + paramString.substring(paramString.length() - 5);
  }
  
  private String b(String paramString) {
    try {
      if (paramString.equals("00000000"))
        return "0,00000"; 
      DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
      decimalFormatSymbols.setDecimalSeparator(',');
      decimalFormatSymbols.setMinusSign('-');
      return (new DecimalFormat("#,#####;-#,#####", decimalFormatSymbols)).format(Float.parseFloat(paramString));
    } catch (NumberFormatException numberFormatException) {
      Log.e("Error", numberFormatException.toString());
      return paramString;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    fwi fwi = (fwi)getIntent().getSerializableExtra("data");
    setContentView(2130969437);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    TextView textView1 = (TextView)findViewById(2131759319);
    TextView textView2 = (TextView)findViewById(2131758534);
    TextView textView3 = (TextView)findViewById(2131758580);
    TextView textView4 = (TextView)findViewById(2131759322);
    TextView textView5 = (TextView)findViewById(2131759323);
    TextView textView6 = (TextView)findViewById(2131758582);
    TextView textView7 = (TextView)findViewById(2131759325);
    TextView textView8 = (TextView)findViewById(2131757293);
    TextView textView9 = (TextView)findViewById(2131759327);
    TextView textView10 = (TextView)findViewById(2131759328);
    TextView textView11 = (TextView)findViewById(2131759329);
    TextView textView12 = (TextView)findViewById(2131759330);
    TextView textView13 = (TextView)findViewById(2131759331);
    TextView textView14 = (TextView)findViewById(2131759321);
    TextView textView15 = (TextView)findViewById(2131759324);
    if (fwi != null) {
      if (fwi.o() != null && !fwi.o().trim().equals("") && fwi.p() != null && !fwi.p().trim().equals("")) {
        textView1.setText(naq.c(fwi.o(), fwi.p()));
      } else {
        textView1.setText(naq.c(mzr.e(), mzr.f()));
      } 
      textView2.setText(nak.m(nak.a()));
      textView3.setText(fwi.e());
      textView4.setText(Integer.parseInt(fwi.g()) + " dias");
      textView5.setText(fwi.c());
      textView5.setText(a(fwi.f()));
      textView6.setText(b(fwi.n()));
      textView7.setText(nak.l(fwi.a()));
      textView8.setText(nak.l(fwi.b()));
      textView9.setText(naj.f(fwi.j()));
      textView10.setText(naj.f(fwi.h()));
      textView11.setText(naj.f(fwi.l()).replace("R$", ""));
      textView12.setText(naj.f(fwi.k()).replace("R$", ""));
      textView13.setText(naj.f(fwi.m()));
      textView14.setText(fwi.r());
      textView15.setText(fwi.s());
    } 
    gpu.a((Activity)this, actionBar, getString(2131298394));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\Rendafixa_posicaoconsolidada_Detahle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */