package com.santander.app.components.view.zxing;

import android.app.Activity;
import android.os.Bundle;
import android.text.Html;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import fda;
import grs;
import gum;
import gun;
import guo;
import guq;

public class CustomQrScannerActivity extends grs {
  public static guq a;
  
  private fda b;
  
  private DecoratedBarcodeView c;
  
  private ImageView d;
  
  private TextView e;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getWindow().requestFeature(8);
    getSupportActionBar().hide();
    setContentView(2130968658);
    this.e = (TextView)findViewById(2131755632);
    if (a != null) {
      switch (guo.a[a.ordinal()]) {
        default:
          this.c = (DecoratedBarcodeView)findViewById(2131755631);
          this.d = (ImageView)findViewById(2131755634);
          this.d.setOnClickListener((View.OnClickListener)new gun(this));
          this.b = new fda((Activity)this, this.c);
          this.b.a(getIntent(), paramBundle);
          this.b.b();
          return;
        case 1:
          this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131299042)));
          findViewById(2131755633).setOnClickListener((View.OnClickListener)new gum(this));
          findViewById(2131755633).setVisibility(0);
        case 2:
          break;
      } 
      this.e.setText((CharSequence)Html.fromHtml(getResources().getString(2131299048)));
      findViewById(2131755633).setVisibility(8);
    } 
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.b.e();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    return (this.c.onKeyDown(paramInt, paramKeyEvent) || super.onKeyDown(paramInt, paramKeyEvent));
  }
  
  protected void onPause() {
    super.onPause();
    this.b.d();
  }
  
  protected void onResume() {
    super.onResume();
    this.b.c();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    this.b.a(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\zxing\CustomQrScannerActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */