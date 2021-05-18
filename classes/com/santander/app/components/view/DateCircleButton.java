package com.santander.app.components.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class DateCircleButton extends LinearLayout {
  private ImageView a;
  
  private TextView b;
  
  private TextView c;
  
  private LinearLayout d;
  
  public DateCircleButton(Context paramContext) {
    super(paramContext);
  }
  
  public DateCircleButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public DateCircleButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public String a() {
    return this.c.getText().toString();
  }
  
  public void a(Context paramContext) {
    View.inflate(paramContext, 2130968818, (ViewGroup)this);
    this.a = (ImageView)findViewById(2131756185);
    this.b = (TextView)findViewById(2131756328);
    this.c = (TextView)findViewById(2131756329);
    this.d = (LinearLayout)findViewById(2131756327);
  }
  
  public void a(Context paramContext, Drawable paramDrawable) {
    View.inflate(paramContext, 2130968818, (ViewGroup)this);
    this.a = (ImageView)findViewById(2131756185);
    this.b = (TextView)findViewById(2131756328);
    this.c = (TextView)findViewById(2131756329);
    this.d = (LinearLayout)findViewById(2131756327);
    this.d.setBackground(paramDrawable);
    setVisibilityImageViewCheck(8);
  }
  
  public void setBackgroundLinear(Drawable paramDrawable) {
    this.d.setBackground(paramDrawable);
  }
  
  public void setColorBlackTextViewDate() {
    this.c.setTextColor(getResources().getColor(2131624186));
  }
  
  public void setColorGrayTextViewDate() {
    this.c.setTextColor(getResources().getColor(2131624186));
  }
  
  public void setEnableDateCircleButton(boolean paramBoolean) {
    if (paramBoolean) {
      setVisibilityImageViewCheck(0);
      setColorBlackTextViewDate();
      return;
    } 
    setVisibilityImageViewCheck(8);
    setColorGrayTextViewDate();
  }
  
  public void setTextColor(int paramInt) {
    this.b.setTextColor(paramInt);
    this.c.setTextColor(paramInt);
  }
  
  public void setTextViewDate(String paramString) {
    if (!paramString.isEmpty()) {
      this.c.setVisibility(0);
      this.c.setText(paramString);
      return;
    } 
    this.c.setVisibility(8);
  }
  
  public void setTextViewInfo(String paramString) {
    this.b.setText(paramString);
  }
  
  public void setVisibilityImageViewCheck(int paramInt) {
    this.a.setVisibility(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\DateCircleButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */