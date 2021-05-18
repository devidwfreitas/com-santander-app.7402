package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import br.com.zup.multistatelayout.MultiStateLayout;
import mzr;

public class DocumentAddItemView extends FrameLayout {
  private MultiStateLayout a;
  
  private ImageView b;
  
  private TextView c;
  
  private Button d;
  
  private View e;
  
  public DocumentAddItemView(@NonNull Context paramContext) {
    super(paramContext);
    a();
  }
  
  public DocumentAddItemView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a() {
    boolean bool;
    LayoutInflater.from(getContext()).inflate(2130969296, (ViewGroup)this);
    c();
    this.b.setImageResource(2130838386);
    this.c.setText(getResources().getString(2131297245));
    b();
    this.d.setText(getResources().getString(2131296386));
    Button button = this.d;
    if (!mzr.a()) {
      bool = true;
    } else {
      bool = false;
    } 
    button.setEnabled(bool);
  }
  
  private void b() {
    this.d.setVisibility(0);
    this.d.setTextColor(getResources().getColor(2131624121));
    this.d.setBackgroundDrawable(getResources().getDrawable(2130837670));
  }
  
  private void c() {
    this.a = (MultiStateLayout)findViewById(2131755279);
    this.b = (ImageView)findViewById(2131758833);
    this.c = (TextView)findViewById(2131758649);
    this.d = (Button)findViewById(2131755118);
    this.e = findViewById(2131755848);
  }
  
  public void setAddOnClickListener(View.OnClickListener paramOnClickListener) {
    this.d.setOnClickListener(paramOnClickListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\DocumentAddItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */