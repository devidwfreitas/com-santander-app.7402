package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import mbd;
import mfg;
import mfk;

public class ButtonWithDialog extends LinearLayout implements mfk {
  private View a;
  
  private Context b;
  
  private LinearLayout c;
  
  private SegurosTextView d;
  
  private mfg e;
  
  public ButtonWithDialog(Context paramContext) {
    super(paramContext);
    a(paramContext);
    a();
  }
  
  public ButtonWithDialog(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    a();
  }
  
  public ButtonWithDialog(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
    a();
  }
  
  public ButtonWithDialog(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext);
    a();
  }
  
  private void a() {
    this.c = (LinearLayout)findViewById(2131756773);
    this.d = (SegurosTextView)findViewById(2131758654);
  }
  
  private void a(Context paramContext) {
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130969274, null);
    addView(this.a);
    this.b = paramContext;
  }
  
  private void b(FragmentManager paramFragmentManager) {
    this.e = mfg.a();
    this.e.a(this);
    this.e.show(paramFragmentManager, "dialog-coverage-values");
  }
  
  public void a(FragmentManager paramFragmentManager) {
    this.c.setOnClickListener((View.OnClickListener)new mbd(this, paramFragmentManager));
  }
  
  public void a(String paramString) {
    setTextName(paramString);
  }
  
  public void setTextName(String paramString) {
    this.d.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\ButtonWithDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */