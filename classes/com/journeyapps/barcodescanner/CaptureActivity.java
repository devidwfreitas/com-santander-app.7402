package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.KeyEvent;
import com.ca.android.app.CaMDOActivity;
import erz;
import esa;
import fda;

public class CaptureActivity extends CaMDOActivity {
  private fda a;
  
  private DecoratedBarcodeView b;
  
  protected DecoratedBarcodeView a() {
    setContentView(esa.zxing_capture);
    return (DecoratedBarcodeView)findViewById(erz.zxing_barcode_scanner);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.b = a();
    this.a = new fda((Activity)this, this.b);
    this.a.a(getIntent(), paramBundle);
    this.a.b();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.a.e();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    return (this.b.onKeyDown(paramInt, paramKeyEvent) || super.onKeyDown(paramInt, paramKeyEvent));
  }
  
  protected void onPause() {
    super.onPause();
    this.a.d();
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    this.a.a(paramInt, paramArrayOfString, paramArrayOfint);
  }
  
  protected void onResume() {
    super.onResume();
    this.a.c();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    this.a.a(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\journeyapps\barcodescanner\CaptureActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */