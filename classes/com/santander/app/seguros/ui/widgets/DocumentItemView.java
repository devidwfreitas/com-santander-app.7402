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
import kwk;
import mbm;
import mbn;
import mzr;

public class DocumentItemView extends FrameLayout {
  private kwk a;
  
  private mbn b;
  
  private MultiStateLayout c;
  
  private ImageView d;
  
  private TextView e;
  
  private Button f;
  
  private View g;
  
  public DocumentItemView(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public DocumentItemView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a() {
    LayoutInflater.from(getContext()).inflate(2130969296, (ViewGroup)this);
    b();
  }
  
  private void b() {
    this.c = (MultiStateLayout)findViewById(2131755279);
    this.d = (ImageView)findViewById(2131758833);
    this.e = (TextView)findViewById(2131758649);
    this.f = (Button)findViewById(2131755118);
    this.g = findViewById(2131755848);
    this.f.setOnClickListener(null);
    this.f.setVisibility(8);
  }
  
  private void c() {
    this.f.setVisibility(0);
    this.f.setTextColor(getResources().getColor(2131624121));
    this.f.setBackgroundDrawable(getResources().getDrawable(2130837670));
  }
  
  private void d() {
    this.f.setVisibility(0);
    this.f.setTextColor(getResources().getColor(2131624121));
    this.f.setBackgroundDrawable(getResources().getDrawable(2130837660));
  }
  
  public void setDocument(kwk paramkwk) {
    this.a = paramkwk;
    this.e.setText(this.a.g());
    if (paramkwk.b()) {
      if (paramkwk.e().intValue() <= 0) {
        this.f.setVisibility(8);
      } else {
        d();
        this.f.setText(getResources().getString(2131299067));
      } 
      this.d.setImageResource(2130838637);
      return;
    } 
    if (paramkwk.a()) {
      boolean bool;
      Button button = this.f;
      if (!mzr.a()) {
        bool = true;
      } else {
        bool = false;
      } 
      button.setEnabled(bool);
      this.d.setImageResource(2130838667);
      if (paramkwk.d().a(new String[] { "E" })) {
        c();
        this.f.setText(getResources().getString(2131298540));
        return;
      } 
      if (paramkwk.e().intValue() <= 0) {
        this.f.setVisibility(8);
        return;
      } 
      c();
      this.f.setText(getResources().getString(2131298474));
      return;
    } 
    this.d.setImageResource(2130838667);
    this.f.setVisibility(8);
  }
  
  public void setListener(mbn parammbn) {
    if (this.f != null)
      this.f.setOnClickListener((View.OnClickListener)new mbm(this, parammbn)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\DocumentItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */