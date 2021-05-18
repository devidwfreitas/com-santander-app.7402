package com.santander.app.emprestimo.creditopessoal.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import gky;
import grs;
import java.util.ArrayList;
import java.util.Iterator;
import mzu;

public class CPTermosCondicoesActivity extends grs {
  protected static final String a = "EXTRA_TERMO";
  
  private LinearLayout a(gky paramgky) {
    LinearLayout linearLayout = new LinearLayout((Context)this);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    linearLayout.setOrientation(1);
    if (paramgky.d()) {
      linearLayout.setOrientation(1);
      linearLayout.setPadding(5, 15, 0, 0);
    } else {
      linearLayout.setPadding(5, 15, 0, 0);
      linearLayout.setOrientation(0);
    } 
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    TextView textView = new TextView((Context)this);
    textView.setLayoutParams(layoutParams);
    textView.setTypeface(mzu.a((Context)this, 0));
    if (Build.VERSION.SDK_INT >= 24) {
      str = String.valueOf(Html.fromHtml(paramgky.c(), 0));
      textView.setText(str);
      linearLayout.addView((View)textView);
      return linearLayout;
    } 
    String str = String.valueOf(Html.fromHtml(str.c()));
    textView.setText(str);
    linearLayout.addView((View)textView);
    return linearLayout;
  }
  
  public static void a(Context paramContext, ArrayList<gky> paramArrayList) {
    Intent intent = new Intent(paramContext, CPTermosCondicoesActivity.class);
    intent.putExtra("EXTRA_TERMO", paramArrayList);
    paramContext.startActivity(intent);
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968754);
    c(2131297067);
    LinearLayout linearLayout = (LinearLayout)findViewById(2131756112);
    Iterator<gky> iterator = ((ArrayList)getIntent().getSerializableExtra("EXTRA_TERMO")).iterator();
    while (iterator.hasNext())
      linearLayout.addView((View)a(iterator.next())); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\CPTermosCondicoesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */