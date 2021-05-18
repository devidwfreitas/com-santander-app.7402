package com.santander.app;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import grs;

public class CalendarioActivity extends grs {
  private final String a = "CalendarioActivity";
  
  private View a() {
    LinearLayout linearLayout = new LinearLayout((Context)this);
    linearLayout.setOrientation(0);
    linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    linearLayout.setBackgroundDrawable(getResources().getDrawable(2130838151));
    ImageView imageView = new ImageView((Context)this);
    imageView.setImageDrawable(getResources().getDrawable(2130837593));
    linearLayout.addView((View)imageView);
    imageView = new ImageView((Context)this);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(1, -1);
    layoutParams.setMargins(10, 10, 10, 10);
    imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    imageView.setBackgroundColor(getResources().getColor(2131624186));
    linearLayout.addView((View)imageView);
    TextView textView = new TextView((Context)this);
    textView.setText("Calendario");
    textView.setTextColor(getResources().getColor(2131624186));
    linearLayout.addView((View)textView);
    linearLayout.setGravity(16);
    return (View)linearLayout;
  }
  
  public void close(View paramView) {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968828);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setCustomView(a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\CalendarioActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */