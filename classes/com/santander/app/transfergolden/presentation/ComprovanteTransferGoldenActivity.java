package com.santander.app.transfergolden.presentation;

import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.LinearLayout;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import msq;
import msr;

public class ComprovanteTransferGoldenActivity extends ComprovanteBaseActivity {
  public void d() {
    this.a.setVisibility(0);
    this.b.setVisibility(0);
  }
  
  public void onBackPressed() {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null)
      actionBar.hide(); 
    this.b.setOnClickListener((View.OnClickListener)new msq(this));
    this.f.addOnLayoutChangeListener((View.OnLayoutChangeListener)new msr(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transfergolden\presentation\ComprovanteTransferGoldenActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */