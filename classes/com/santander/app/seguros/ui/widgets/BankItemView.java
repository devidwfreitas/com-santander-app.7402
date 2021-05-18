package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import br.com.zup.multistatelayout.MultiStateLayout;
import kwh;
import kwi;

public class BankItemView extends FrameLayout {
  private ImageView a;
  
  private TextView b;
  
  private TextView c;
  
  private Button d;
  
  private View e;
  
  private MultiStateLayout f;
  
  public BankItemView(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public BankItemView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a() {
    LayoutInflater.from(getContext()).inflate(2130969272, (ViewGroup)this);
    b();
  }
  
  private void b() {
    this.a = (ImageView)findViewById(2131758648);
    this.b = (TextView)findViewById(2131755789);
    this.c = (TextView)findViewById(2131755914);
    this.d = (Button)findViewById(2131755118);
    this.e = findViewById(2131755848);
    this.f = (MultiStateLayout)findViewById(2131755279);
  }
  
  private void c() {
    this.d.setTextColor(getResources().getColor(2131624121));
    this.d.setBackgroundResource(2130837670);
  }
  
  private void d() {
    this.d.setTextColor(getResources().getColor(2131624121));
    this.d.setBackgroundResource(2130837660);
  }
  
  public void setButtonOnClick(View.OnClickListener paramOnClickListener) {
    this.d.setOnClickListener(paramOnClickListener);
  }
  
  public void setDesc(kwh paramkwh) {
    boolean bool;
    Button button = this.d;
    if (paramkwh.c()) {
      bool = true;
    } else {
      bool = false;
    } 
    button.setVisibility(bool);
    this.d.setEnabled(paramkwh.i());
    if (paramkwh.h()) {
      this.b.setVisibility(8);
      this.c.setText(getResources().getText(2131298353));
    } else {
      this.b.setVisibility(0);
      this.b.setText(getResources().getText(2131298353));
      this.c.setText(String.format(getResources().getString(2131297501), new Object[] { paramkwh.e(), paramkwh.f(), paramkwh.g() }));
    } 
    if (paramkwh.b() == kwi.SEND) {
      c();
      this.d.setText(getResources().getString(2131298540));
    } else {
      d();
      this.d.setText(getResources().getString(2131297268));
    } 
    if (paramkwh.a()) {
      this.a.setImageResource(2130838637);
      return;
    } 
    this.a.setImageResource(2130838667);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\BankItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */