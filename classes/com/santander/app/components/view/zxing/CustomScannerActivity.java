package com.santander.app.components.view.zxing;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import fda;
import fdo;
import frq;
import gpu;
import grs;
import gup;

public class CustomScannerActivity extends grs implements fdo {
  private fda a;
  
  private DecoratedBarcodeView b;
  
  private ImageView c;
  
  private Button d;
  
  private boolean e = false;
  
  private boolean c() {
    return getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.camera.flash");
  }
  
  public void a() {
    this.c.setImageDrawable(getResources().getDrawable(2130838491));
    this.e = true;
  }
  
  public void b() {
    this.c.setImageDrawable(getResources().getDrawable(2130838492));
    this.e = false;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968659);
    ActionBar actionBar = getSupportActionBar();
    gpu.a(actionBar, "Leitor de Código de Barras");
    actionBar.getCustomView().findViewById(2131755202).setVisibility(4);
    actionBar.getCustomView().findViewById(2131755203).setVisibility(4);
    this.b = (DecoratedBarcodeView)findViewById(2131755631);
    this.b.setTorchListener(this);
    this.c = (ImageView)findViewById(2131755635);
    this.d = (Button)findViewById(2131756697);
    this.d.setOnClickListener((View.OnClickListener)new gup(this));
    if (!c())
      this.c.setVisibility(8); 
    this.a = new fda((Activity)this, this.b);
    this.a.a(getIntent(), paramBundle);
    this.a.b();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886097, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.a.e();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    return (this.b.onKeyDown(paramInt, paramKeyEvent) || super.onKeyDown(paramInt, paramKeyEvent));
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return true;
      case 2131759632:
        break;
    } 
    frq.d("Pagamentos_Pagamento_CodigoDeBarras_Acao", "FecharLeitorDeCodigoDeBarras");
    setResult(-2, new Intent());
    finish();
  }
  
  protected void onPause() {
    super.onPause();
    this.a.d();
  }
  
  protected void onResume() {
    super.onResume();
    this.a.c();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    this.a.a(paramBundle);
  }
  
  public void switchFlashlight(View paramView) {
    if (!this.e) {
      this.b.setTorchOn();
      return;
    } 
    this.b.setTorchOff();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\zxing\CustomScannerActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */