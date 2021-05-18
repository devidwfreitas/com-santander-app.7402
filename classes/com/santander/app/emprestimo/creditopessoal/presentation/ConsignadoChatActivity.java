package com.santander.app.emprestimo.creditopessoal.presentation;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import grs;
import hqz;
import hra;
import hrb;
import mxn;

public class ConsignadoChatActivity extends grs {
  public static final int a = 100;
  
  private LinearLayout b;
  
  private void a() {
    this.b = (LinearLayout)findViewById(2131755520);
    this.b.setOnClickListener((View.OnClickListener)new hqz(this));
  }
  
  private void a(String paramString) {
    b(paramString);
  }
  
  private void b(String paramString) {
    Dialog dialog = new Dialog((Context)this.i, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText(getString(2131296619));
    hra hra = new hra(this, dialog, paramString);
    button1.setText(getString(2131296618));
    hrb hrb = new hrb(this, dialog);
    mxn.a(this.i, dialog, getString(2131298988), getString(2131296563), (View.OnClickListener)hra, (View.OnClickListener)hrb);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968639);
    c(2131298974);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\ConsignadoChatActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */