package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import flv;

public class BillingItem extends FrameLayout {
  private LinearLayout a;
  
  private View b;
  
  private View c;
  
  private CircleImageView d;
  
  private TextView e;
  
  private TextView f;
  
  public BillingItem(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public BillingItem(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  private void a() {
    LayoutInflater.from(getContext()).inflate(2130968810, (ViewGroup)this);
    b();
  }
  
  private void a(AttributeSet paramAttributeSet) {
    a();
    TypedArray typedArray = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, flv.BillingItem, 0, 0);
    this.e.setText(typedArray.getString(0));
    this.f.setText(typedArray.getString(1));
    Drawable drawable = typedArray.getDrawable(2);
    this.d.setImageDrawable(drawable);
    typedArray.recycle();
  }
  
  private void b() {
    this.a = (LinearLayout)findViewById(2131756275);
    this.b = findViewById(2131756276);
    this.c = findViewById(2131756278);
    this.d = (CircleImageView)findViewById(2131756277);
    this.e = (TextView)findViewById(2131755914);
    this.f = (TextView)findViewById(2131756279);
  }
  
  public void setDesc(String paramString) {
    this.e.setText(paramString);
  }
  
  public void setImage(Drawable paramDrawable) {
    this.d.setImageDrawable(paramDrawable);
  }
  
  public void setLineBilling1(int paramInt) {
    this.b.setVisibility(paramInt);
  }
  
  public void setLineBilling2(int paramInt) {
    this.c.setVisibility(paramInt);
  }
  
  public void setValue(String paramString) {
    this.f.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\BillingItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */