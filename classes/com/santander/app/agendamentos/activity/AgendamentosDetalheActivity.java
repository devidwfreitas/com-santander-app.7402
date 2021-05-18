package com.santander.app.agendamentos.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import fqs;
import fra;
import frb;
import gpu;
import grs;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import naq;

@SuppressLint({"SimpleDateFormat"})
public class AgendamentosDetalheActivity extends grs {
  private final String a = "DetalheAgendamentosActivity";
  
  private ListView b;
  
  private Conta c;
  
  private List<Conta> d;
  
  private String e;
  
  private ListAdapter f;
  
  private int g;
  
  private View a() {
    this.d = this.v.f().q().a();
    if (this.d.size() > 0)
      this.c = this.d.get(this.g); 
    View view = getLayoutInflater().inflate(2130968800, null);
    if (view != null) {
      TextView textView = (TextView)view.findViewById(2131756242);
      if (this.e != null && !this.e.isEmpty())
        try {
          Date date = (new SimpleDateFormat("yyyyMMdd")).parse(this.e);
          String str3 = (new SimpleDateFormat("dd/MM/yyyy")).format(date);
          String str1 = str3.substring(0, 2);
          String str2 = str3.substring(3, 5);
          str3 = str3.substring(6, 10);
          textView.setText(getResources().getString(2131297166) + " " + str1 + " " + getResources().getString(2131297118) + " " + a(str2) + " " + getResources().getString(2131297118) + " " + str3);
        } catch (ParseException parseException) {
          Log.e("Error", parseException.toString());
        }  
      textView = (TextView)view.findViewById(2131756243);
      if (textView != null)
        textView.setText(naq.c(this.c.getAgencia(), this.c.getCuenta())); 
    } 
    return view;
  }
  
  private String a(String paramString) {
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return "";
          case 0:
            return getResources().getString(2131297810);
          case 1:
            return getResources().getString(2131297443);
          case 2:
            return getResources().getString(2131298120);
          case 3:
            return getResources().getString(2131296343);
          case 4:
            return getResources().getString(2131298118);
          case 5:
            return getResources().getString(2131297812);
          case 6:
            return getResources().getString(2131297811);
          case 7:
            return getResources().getString(2131296403);
          case 8:
            return getResources().getString(2131298545);
          case 9:
            return getResources().getString(2131298322);
          case 10:
            return getResources().getString(2131298277);
          case 11:
            break;
        } 
        return getResources().getString(2131297163);
      case 1537:
        if (paramString.equals("01"))
          b = 0; 
      case 1538:
        if (paramString.equals("02"))
          b = 1; 
      case 1539:
        if (paramString.equals("03"))
          b = 2; 
      case 1540:
        if (paramString.equals("04"))
          b = 3; 
      case 1541:
        if (paramString.equals("05"))
          b = 4; 
      case 1542:
        if (paramString.equals("06"))
          b = 5; 
      case 1543:
        if (paramString.equals("07"))
          b = 6; 
      case 1544:
        if (paramString.equals("08"))
          b = 7; 
      case 1545:
        if (paramString.equals("09"))
          b = 8; 
      case 1567:
        if (paramString.equals("10"))
          b = 9; 
      case 1568:
        if (paramString.equals("11"))
          b = 10; 
      case 1569:
        break;
    } 
    if (paramString.equals("12"))
      b = 11; 
  }
  
  private View b() {
    RelativeLayout relativeLayout = new RelativeLayout((Context)this);
    relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    relativeLayout.setBackgroundDrawable(getResources().getDrawable(2130838151));
    ImageView imageView = new ImageView((Context)this);
    imageView.setImageDrawable(getResources().getDrawable(2130837593));
    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
    layoutParams.addRule(15);
    layoutParams.setMargins(10, 10, 10, 10);
    imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    relativeLayout.addView((View)imageView);
    imageView = new ImageView((Context)this);
    layoutParams = new RelativeLayout.LayoutParams(1, -1);
    layoutParams.addRule(1, 1);
    layoutParams.setMargins(10, 10, 10, 10);
    imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    imageView.setBackgroundColor(getResources().getColor(2131624186));
    relativeLayout.addView((View)imageView);
    imageView = new ImageView((Context)this);
    imageView.setImageDrawable(getResources().getDrawable(2130837592));
    layoutParams = new RelativeLayout.LayoutParams(-2, -2);
    layoutParams.addRule(11);
    layoutParams.addRule(15);
    layoutParams.setMargins(10, 10, 10, 10);
    imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    relativeLayout.addView((View)imageView);
    relativeLayout.setGravity(16);
    return (View)relativeLayout;
  }
  
  private List<frb> c() {
    List<frb> list = new ArrayList();
    if (getIntent().getExtras() != null) {
      list = (List)getIntent().getExtras().get("agendamentos");
      this.e = ((frb)list.get(0)).J();
    } 
    return list;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968799);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    this.i = (Activity)this;
    actionBar.setCustomView(b());
    findViewById(2131756230).requestFocus();
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131296402));
    if (getIntent().getExtras() != null)
      this.g = getIntent().getExtras().getInt("indexConta"); 
    List<frb> list = c();
    if (list != null) {
      this.b = (ListView)findViewById(2131756241);
      this.f = (ListAdapter)new fra((Context)this, 2130968801, list);
      this.b.addHeaderView(a());
      this.b.setAdapter(this.f);
      this.b.setOnItemClickListener((AdapterView.OnItemClickListener)new fqs(this));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\agendamentos\activity\AgendamentosDetalheActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */