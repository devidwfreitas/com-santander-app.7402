package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

public class DocumentView extends FrameLayout {
  private TextView a;
  
  private ImageView b;
  
  private ImageButton c;
  
  private ImageButton d;
  
  public DocumentView(Context paramContext) {
    super(paramContext, null);
  }
  
  public DocumentView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  private void c() {
    LayoutInflater.from(getContext()).inflate(2130969297, (ViewGroup)this);
    d();
    b();
  }
  
  private void d() {
    this.a = (TextView)findViewById(2131758834);
    this.b = (ImageView)findViewById(2131758835);
    this.c = (ImageButton)findViewById(2131758836);
    this.d = (ImageButton)findViewById(2131756263);
  }
  
  public void a() {
    this.b.setImageBitmap(null);
  }
  
  public void b() {
    a();
    this.a.setText("");
  }
  
  public void setPhoto(Bitmap paramBitmap) {
    if (paramBitmap != null) {
      this.b.setImageBitmap(paramBitmap);
      this.a.setText("");
    } 
  }
  
  public void setTextCenter(String paramString) {
    this.a.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\DocumentView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */