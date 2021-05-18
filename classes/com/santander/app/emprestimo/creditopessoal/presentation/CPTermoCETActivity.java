package com.santander.app.emprestimo.creditopessoal.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import gky;
import grs;
import java.util.ArrayList;
import mzu;

public class CPTermoCETActivity extends grs {
  protected static final String a = "EXTRA_TERMO";
  
  public static String b = "textFooter";
  
  private LinearLayout a(gky paramgky) {
    String str2;
    int i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    int j = (int)TypedValue.applyDimension(1, 180.0F, getResources().getDisplayMetrics());
    LinearLayout linearLayout = new LinearLayout((Context)this);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
    layoutParams.topMargin = i;
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    linearLayout.setOrientation(0);
    if (paramgky.d()) {
      linearLayout.setOrientation(1);
      linearLayout.setPadding(5, 15, 0, 0);
    } else {
      linearLayout.setPadding(5, 15, 0, 0);
      linearLayout.setOrientation(0);
    } 
    ViewGroup.LayoutParams layoutParams1 = new ViewGroup.LayoutParams(j, -2);
    ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -2);
    TextView textView2 = new TextView((Context)this);
    textView2.setLayoutParams(layoutParams1);
    textView2.setTypeface(mzu.a((Context)this, 0));
    if (paramgky.b().equalsIgnoreCase(b)) {
      str2 = "";
    } else {
      str2 = paramgky.b();
    } 
    textView2.setText(str2);
    textView2.setGravity(8388611);
    TextView textView1 = new TextView((Context)this);
    textView1.setLayoutParams(layoutParams2);
    textView1.setTypeface(mzu.a((Context)this, 1));
    if (paramgky.b().equalsIgnoreCase(b)) {
      str1 = "";
      textView1.setText(str1);
      textView1.setGravity(8388613);
      linearLayout.addView((View)textView2);
      linearLayout.addView((View)textView1);
      return linearLayout;
    } 
    String str1 = str1.c();
    textView1.setText(str1);
    textView1.setGravity(8388613);
    linearLayout.addView((View)textView2);
    linearLayout.addView((View)textView1);
    return linearLayout;
  }
  
  public static void a(Context paramContext, ArrayList<gky> paramArrayList) {
    Intent intent = new Intent(paramContext, CPTermoCETActivity.class);
    intent.putExtra("EXTRA_TERMO", paramArrayList);
    paramContext.startActivity(intent);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968751);
    c(2131297053);
    LinearLayout linearLayout = (LinearLayout)findViewById(2131756105);
    TextView textView = (TextView)findViewById(2131756106);
    for (gky gky : getIntent().getSerializableExtra("EXTRA_TERMO")) {
      if (gky.b().equalsIgnoreCase(b))
        textView.setText(gky.c()); 
      linearLayout.addView((View)a(gky));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\CPTermoCETActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */