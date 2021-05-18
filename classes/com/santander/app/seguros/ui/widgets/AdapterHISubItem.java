package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.Spannable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

public class AdapterHISubItem extends FrameLayout {
  private ImageView a;
  
  private TextView b;
  
  private View c;
  
  public AdapterHISubItem(@NonNull Context paramContext) {
    super(paramContext);
    a();
  }
  
  public AdapterHISubItem(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a() {
    LayoutInflater.from(getContext()).inflate(2130969447, (ViewGroup)this);
    b();
  }
  
  private void b() {
    this.a = (ImageView)findViewById(2131756408);
    this.b = (TextView)findViewById(2131759340);
    this.c = findViewById(2131755351);
  }
  
  public void setLineVisible(int paramInt) {
    this.c.setVisibility(paramInt);
  }
  
  public void setText(Spannable paramSpannable) {
    this.b.setText((CharSequence)paramSpannable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\AdapterHISubItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */