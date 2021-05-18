package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import eqe;
import ero;
import erp;
import erz;
import esa;
import ese;
import fco;
import fdj;
import fdo;
import fdp;
import fdq;
import fel;
import java.util.Map;
import java.util.Set;

public class DecoratedBarcodeView extends FrameLayout {
  private BarcodeView a;
  
  private ViewfinderView b;
  
  private TextView c;
  
  private fdo d;
  
  public DecoratedBarcodeView(Context paramContext) {
    super(paramContext);
    f();
  }
  
  public DecoratedBarcodeView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public DecoratedBarcodeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, ese.zxing_view);
    int i = typedArray.getResourceId(ese.zxing_view_zxing_scanner_layout, esa.zxing_barcode_scanner);
    typedArray.recycle();
    inflate(getContext(), i, (ViewGroup)this);
    this.a = (BarcodeView)findViewById(erz.zxing_barcode_surface);
    if (this.a == null)
      throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\"."); 
    this.a.a(paramAttributeSet);
    this.b = (ViewfinderView)findViewById(erz.zxing_viewfinder_view);
    if (this.b == null)
      throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\"."); 
    this.b.setCameraPreview(this.a);
    this.c = (TextView)findViewById(erz.zxing_status_view);
  }
  
  private void f() {
    a((AttributeSet)null);
  }
  
  public void a() {
    this.a.e();
  }
  
  public void a(Intent paramIntent) {
    Set set = ero.a(paramIntent);
    Map map = erp.a(paramIntent);
    fel fel = new fel();
    if (paramIntent.hasExtra("SCAN_CAMERA_ID")) {
      int i = paramIntent.getIntExtra("SCAN_CAMERA_ID", -1);
      if (i >= 0)
        fel.a(i); 
    } 
    String str2 = paramIntent.getStringExtra("PROMPT_MESSAGE");
    if (str2 != null)
      setStatusText(str2); 
    String str1 = paramIntent.getStringExtra("CHARACTER_SET");
    (new eqe()).a(map);
    this.a.setCameraSettings(fel);
    this.a.setDecoderFactory((fdj)new fdq(set, map, str1));
  }
  
  public void a(fco paramfco) {
    this.a.a((fco)new fdp(this, paramfco));
  }
  
  public void b() {
    this.a.j();
  }
  
  public void b(fco paramfco) {
    this.a.b((fco)new fdp(this, paramfco));
  }
  
  public BarcodeView c() {
    return (BarcodeView)findViewById(erz.zxing_barcode_surface);
  }
  
  public ViewfinderView d() {
    return this.b;
  }
  
  public TextView e() {
    return this.c;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    boolean bool = true;
    switch (paramInt) {
      default:
        bool = super.onKeyDown(paramInt, paramKeyEvent);
      case 27:
      case 80:
        return bool;
      case 25:
        setTorchOff();
        return true;
      case 24:
        break;
    } 
    setTorchOn();
    return true;
  }
  
  public void setStatusText(String paramString) {
    if (this.c != null)
      this.c.setText(paramString); 
  }
  
  public void setTorchListener(fdo paramfdo) {
    this.d = paramfdo;
  }
  
  public void setTorchOff() {
    this.a.setTorch(false);
    if (this.d != null)
      this.d.b(); 
  }
  
  public void setTorchOn() {
    this.a.setTorch(true);
    if (this.d != null)
      this.d.a(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\journeyapps\barcodescanner\DecoratedBarcodeView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */