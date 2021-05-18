package com.santander.app.novidades.view;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.widget.PagerIndicator;
import java.util.List;
import jrv;
import jsc;
import jsd;
import jsi;
import jsj;
import jsk;
import jsl;
import jsm;
import jsn;

public class NovidadesActivity extends AppCompatActivity implements jsn {
  public static final String a = "extra_segment";
  
  public static final int b = 2;
  
  private Button c;
  
  private Button d;
  
  private ViewPager e;
  
  private TextView f;
  
  private jsc g;
  
  private PagerIndicator h;
  
  private boolean i = false;
  
  private int j;
  
  private ViewPager.SimpleOnPageChangeListener d() {
    return (ViewPager.SimpleOnPageChangeListener)new jsi(this);
  }
  
  private View.OnClickListener d(String paramString) {
    return (View.OnClickListener)new jsj(this);
  }
  
  private View.OnClickListener e() {
    return (View.OnClickListener)new jsl(this);
  }
  
  private View.OnClickListener e(String paramString) {
    return (View.OnClickListener)new jsk(this);
  }
  
  public void a() {
    this.j = ContextCompat.getColor((Context)this, 2131623961);
    this.f.setTextColor(this.j);
    this.h.setBackgroundColor(this.j);
    this.h.setIndicatorDrawable(2130838959);
  }
  
  public void a(int paramInt) {
    this.f.setText(paramInt);
  }
  
  public void a(String paramString) {
    this.f.setText(paramString);
  }
  
  public void a(List<jrv> paramList) {
    this.e.setAdapter((PagerAdapter)new jsm((Context)this, paramList, this.j));
    this.h.setIndicatorCount(paramList.size());
  }
  
  public void b() {
    this.j = ContextCompat.getColor((Context)this, 2131623998);
    this.f.setTextColor(this.j);
    this.h.setBackgroundColor(this.j);
    this.h.setIndicatorDrawable(2130838961);
  }
  
  public void b(String paramString) {
    this.d.setVisibility(0);
    this.d.setText("Pular");
    this.d.setOnClickListener(e(paramString));
    this.c.setVisibility(0);
    this.c.setText("Continuar");
    this.c.setOnClickListener(d(paramString));
  }
  
  public void c() {
    this.j = ContextCompat.getColor((Context)this, 2131623937);
    this.f.setTextColor(this.j);
    this.h.setBackgroundColor(this.j);
    this.h.setIndicatorDrawable(2130838960);
  }
  
  public void c(String paramString) {
    this.d.setVisibility(4);
    this.c.setVisibility(0);
    this.c.setText("Fechar");
    this.c.setOnClickListener(e());
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968719);
    if (getSupportActionBar() != null)
      getSupportActionBar().hide(); 
    this.j = ContextCompat.getColor((Context)this, 2131623961);
    this.c = (Button)findViewById(2131755966);
    this.d = (Button)findViewById(2131755965);
    this.e = (ViewPager)findViewById(2131755968);
    this.f = (TextView)findViewById(2131755967);
    this.h = (PagerIndicator)findViewById(2131755969);
    this.e.setOnPageChangeListener((ViewPager.OnPageChangeListener)d());
    this.g = (jsc)new jsd(this);
    this.g.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\novidades\view\NovidadesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */