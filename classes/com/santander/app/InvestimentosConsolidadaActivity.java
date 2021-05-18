package com.santander.app;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.DatePicker;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.SegmentImageView;
import fii;
import fij;
import fik;
import fil;
import fim;
import fin;
import fwa;
import fwb;
import fwg;
import fwk;
import gpu;
import grs;
import hau;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Vector;
import jdc;
import jdd;
import mzr;
import naj;
import nak;
import naq;

public class InvestimentosConsolidadaActivity extends grs implements DatePickerDialog.OnDateSetListener, Serializable {
  private static final long c = 1L;
  
  public Dialog a = null;
  
  private final String b = "InvestimentosConsolidadaActivity";
  
  private int d = -1;
  
  private fwb e;
  
  private Activity f;
  
  private fwa g;
  
  private fin w;
  
  private String x;
  
  private String y;
  
  private TextView z;
  
  private boolean a() {
    Float float_1 = Float.valueOf(0.0F);
    Float float_2 = float_1;
    if (this.v.f().r().c() != null) {
      float_2 = float_1;
      if (this.v.f().r().c().size() > 0) {
        for (jdd jdd : this.v.f().r().c()) {
          float f = float_1.floatValue();
          float_1 = Float.valueOf(Float.parseFloat(jdd.e()) + f);
        } 
        float_2 = float_1;
      } 
    } 
    return (float_2.floatValue() == 0.0F);
  }
  
  private void b() {
    LinearLayout linearLayout = (LinearLayout)findViewById(2131758517);
    Vector<fwk> vector = new Vector();
    for (int i = 0; i < vector.size(); i++) {
      View view1 = getLayoutInflater().inflate(2130969235, null);
      fwk fwk = vector.get(i);
      view1.findViewById(2131758490).setOnClickListener((View.OnClickListener)new fik(this));
      View view2 = view1.findViewById(2131755118);
      view2.setTag(fwk);
      view2.setOnClickListener((View.OnClickListener)new fil(this));
      linearLayout.addView(view1);
    } 
  }
  
  private void c() {
    LinearLayout linearLayout = (LinearLayout)findViewById(2131758503);
    linearLayout.removeAllViews();
    if (this.g != null && this.g.a() != null && this.g.a().size() > 0) {
      ((TextView)findViewById(2131758502)).setVisibility(8);
      int i = 0;
      while (true) {
        if (i < this.g.a().size()) {
          View view = LayoutInflater.from((Context)this).inflate(2130969230, null);
          ((TextView)view.findViewById(2131758519)).setText(((fwg)this.g.a().get(i)).e().toString());
          ((TextView)view.findViewById(2131758511)).setText(naj.f(((fwg)this.g.a().get(i)).f()));
          ((TextView)view.findViewById(2131758516)).setText(naj.f(((fwg)this.g.a().get(i)).g()));
          try {
            ((ImageView)view.findViewById(2131758518)).setBackgroundColor(Color.parseColor("#" + ((fwg)this.g.a().get(i)).a().toString()));
          } catch (Exception exception) {}
          view.setTag(i + "av");
          view.setOnClickListener((View.OnClickListener)new fim(this));
          linearLayout.addView(view);
          i++;
          continue;
        } 
        return;
      } 
    } 
    TextView textView = (TextView)findViewById(2131758502);
    textView.setVisibility(0);
    textView.setText(getResources().getString(2131297722));
  }
  
  protected void onCreate(Bundle paramBundle) {
    TextView textView2;
    TextView textView3;
    TextView textView4;
    TextView textView5;
    TextView textView6;
    TextView textView7;
    super.onCreate(paramBundle);
    this.d = getIntent().getIntExtra("type", -1);
    this.f = (Activity)this;
    switch (this.d) {
      default:
        setContentView(2130969233);
        actionBar = getSupportActionBar();
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayShowTitleEnabled(false);
        gpu.a((Activity)this, actionBar, getString(2131298394));
        return;
      case 0:
        setContentView(2130969233);
        actionBar = getSupportActionBar();
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayShowTitleEnabled(false);
        this.e = hau.a().j();
        textView2 = (TextView)findViewById(2131758506);
        textView3 = (TextView)findViewById(2131758507);
        textView4 = (TextView)findViewById(2131758533);
        textView5 = (TextView)findViewById(2131758535);
        textView6 = (TextView)findViewById(2131758516);
        textView7 = (TextView)findViewById(2131758534);
        textView2.setText(naq.c(mzr.e(), mzr.f()));
        textView3.setText(nak.m(nak.a()));
        textView4.setText(naj.f(this.e.a()));
        textView5.setText(naj.f(this.e.b()));
        textView6.setText(naj.f(this.e.d()));
        textView7.setText(naj.f(this.e.c()));
        gpu.a((Activity)this, actionBar, getString(2131298394));
        b();
        return;
      case 1:
        setContentView(2130969231);
        actionBar = getSupportActionBar();
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayShowTitleEnabled(false);
        textView2 = (TextView)findViewById(2131758506);
        textView3 = (TextView)findViewById(2131758507);
        textView2.setText(naq.c(mzr.e(), mzr.f()));
        textView3.setText(nak.m(nak.a()));
        gpu.a((Activity)this, actionBar, getString(2131298394));
        return;
      case 2:
        break;
    } 
    setContentView(2130969226);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    this.z = (TextView)findViewById(2131758501);
    this.y = nak.l(nak.a());
    this.z.setText(nak.l(nak.a()));
    gpu.a((Activity)this, actionBar, getString(2131298394));
    if (!a()) {
      ((TextView)findViewById(2131758502)).setVisibility(8);
      LinearLayout linearLayout = (LinearLayout)findViewById(2131758503);
      Iterator<jdd> iterator = this.v.f().r().c().iterator();
      while (true) {
        if (iterator.hasNext()) {
          jdd jdd = iterator.next();
          if (!jdd.e().equals("0")) {
            String str;
            View view = LayoutInflater.from((Context)this).inflate(2130969230, null);
            textView6 = (TextView)view.findViewById(2131758519);
            if (jdd.c() != null) {
              str = jdd.c().toString();
            } else {
              str = "";
            } 
            textView6.setText(str);
            ((TextView)view.findViewById(2131758511)).setText(naj.f(jdd.d()));
            ((TextView)view.findViewById(2131758516)).setText(naj.f(jdd.e()));
            try {
              ((ImageView)view.findViewById(2131758518)).setBackgroundColor(Color.parseColor("#" + jdd.a().toString()));
            } catch (Exception exception) {}
            view.setOnClickListener((View.OnClickListener)new fii(this, jdd));
            linearLayout.addView(view);
          } 
          continue;
        } 
        if (this.v.f().r().d() != null) {
          LinearLayout linearLayout1 = (LinearLayout)findViewById(2131758504);
          Iterator<jdc> iterator1 = this.v.f().r().d().iterator();
          while (true) {
            if (iterator1.hasNext()) {
              jdc jdc = iterator1.next();
              View view = LayoutInflater.from((Context)this).inflate(2130969225, null);
              ((TextView)view.findViewById(2131758500)).setText(jdc.b().toString());
              try {
                ((ImageView)view.findViewById(2131758499)).setBackgroundColor(Color.parseColor("#" + jdc.a().toString()));
              } catch (Exception exception) {}
              linearLayout1.addView(view);
              continue;
            } 
            ((SegmentImageView)findViewById(2131756718)).setOnClickListener((View.OnClickListener)new fij(this));
            return;
          } 
          break;
        } 
        continue;
      } 
    } 
    TextView textView1 = (TextView)findViewById(2131758502);
    textView1.setVisibility(0);
    textView1.setText(getResources().getString(2131297722));
    ((SegmentImageView)findViewById(2131756718)).setOnClickListener((View.OnClickListener)new fij(this));
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(1, paramInt1);
    calendar.set(2, paramInt2);
    calendar.set(5, paramInt3);
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
    this.z.setText(nak.l(nak.q(simpleDateFormat.format(calendar.getTime()))));
    this.y = nak.l(nak.q(simpleDateFormat.format(calendar.getTime())));
    if (paramDatePicker.isShown()) {
      this.x = simpleDateFormat.format(calendar.getTime());
      this.w = new fin(this, null);
      this.w.execute((Object[])new Void[0]);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\InvestimentosConsolidadaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */