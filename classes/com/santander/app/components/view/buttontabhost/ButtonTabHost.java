package com.santander.app.components.view.buttontabhost;

import android.content.Context;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import gsu;
import gsv;
import gsw;

public class ButtonTabHost extends LinearLayout {
  private gsw a;
  
  private Button b;
  
  private Button c;
  
  public ButtonTabHost(Context paramContext) {
    super(paramContext);
  }
  
  public ButtonTabHost(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public ButtonTabHost(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  @RequiresApi(api = 16)
  public void a(Context paramContext, gsw paramgsw) {
    this.a = paramgsw;
    View.inflate(paramContext, 2130969128, (ViewGroup)this);
    this.b = (Button)findViewById(2131757690);
    this.b.setText(paramgsw.c());
    this.b.setOnClickListener((View.OnClickListener)new gsu(this, paramgsw));
    this.c = (Button)findViewById(2131757691);
    this.c.setText(paramgsw.d());
    this.c.setOnClickListener((View.OnClickListener)new gsv(this, paramgsw));
    setSelectedButtonTab1();
  }
  
  @RequiresApi(api = 16)
  public void setSelectedButtonTab1() {
    this.b.setBackground(getResources().getDrawable(2130838144));
    this.b.setTextColor(getResources().getColor(2131623972));
    this.c.setBackgroundColor(getResources().getColor(2131623968));
    this.c.setTextColor(getResources().getColor(2131623961));
  }
  
  @RequiresApi(api = 16)
  public void setSelectedButtonTab2() {
    this.c.setBackground(getResources().getDrawable(2130838144));
    this.c.setTextColor(getResources().getColor(2131623972));
    this.b.setBackgroundColor(getResources().getColor(2131623968));
    this.b.setTextColor(getResources().getColor(2131623961));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\buttontabhost\ButtonTabHost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */