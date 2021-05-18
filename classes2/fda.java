import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

public class fda {
  private static final String a = fda.class.getSimpleName();
  
  private static int b = 250;
  
  private static final String f = "SAVED_ORIENTATION_LOCK";
  
  private Activity c;
  
  private DecoratedBarcodeView d;
  
  private int e = -1;
  
  private boolean g = false;
  
  private boolean h = false;
  
  private erq i;
  
  private erk j;
  
  private Handler k;
  
  private fco l = new fdb(this);
  
  private final fcz m = new fdd(this);
  
  private boolean n = false;
  
  public fda(Activity paramActivity, DecoratedBarcodeView paramDecoratedBarcodeView) {
    this.c = paramActivity;
    this.d = paramDecoratedBarcodeView;
    paramDecoratedBarcodeView.c().a(this.m);
    this.k = new Handler();
    this.i = new erq((Context)paramActivity, new fde(this));
    this.j = new erk(paramActivity);
  }
  
  public static Intent a(fcq paramfcq, String paramString) {
    Intent intent = new Intent("com.google.zxing.client.android.SCAN");
    intent.addFlags(524288);
    intent.putExtra("SCAN_RESULT", paramfcq.toString());
    intent.putExtra("SCAN_RESULT_FORMAT", paramfcq.g().toString());
    byte[] arrayOfByte = paramfcq.e();
    if (arrayOfByte != null && arrayOfByte.length > 0)
      intent.putExtra("SCAN_RESULT_BYTES", arrayOfByte); 
    Map<eqn, Object> map = paramfcq.h();
    if (map != null) {
      if (map.containsKey(eqn.UPC_EAN_EXTENSION))
        intent.putExtra("SCAN_RESULT_UPC_EAN_EXTENSION", map.get(eqn.UPC_EAN_EXTENSION).toString()); 
      Number number = (Number)map.get(eqn.ORIENTATION);
      if (number != null)
        intent.putExtra("SCAN_RESULT_ORIENTATION", number.intValue()); 
      String str = (String)map.get(eqn.ERROR_CORRECTION_LEVEL);
      if (str != null)
        intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", str); 
      Iterable iterable = (Iterable)map.get(eqn.BYTE_SEGMENTS);
      if (iterable != null) {
        int i = 0;
        for (byte[] arrayOfByte1 : iterable) {
          intent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i, arrayOfByte1);
          i++;
        } 
      } 
    } 
    if (paramString != null)
      intent.putExtra("SCAN_RESULT_IMAGE_PATH", paramString); 
    return intent;
  }
  
  public static void a(int paramInt) {
    b = paramInt;
  }
  
  private String b(fcq paramfcq) {
    File file = null;
    if (this.g) {
      Bitmap bitmap = paramfcq.b();
      try {
        file = File.createTempFile("barcodeimage", ".jpg", this.c.getCacheDir());
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        fileOutputStream.close();
        return file.getAbsolutePath();
      } catch (IOException iOException) {
        Log.w(a, "Unable to create temporary file and store bitmap! " + iOException);
        return null;
      } 
    } 
    return (String)file;
  }
  
  public static int h() {
    return b;
  }
  
  @TargetApi(23)
  private void j() {
    if (ContextCompat.checkSelfPermission((Context)this.c, "android.permission.CAMERA") == 0) {
      this.d.b();
      return;
    } 
    if (!this.n) {
      Activity activity = this.c;
      int i = b;
      ActivityCompat.requestPermissions(activity, new String[] { "android.permission.CAMERA" }, i);
      this.n = true;
      return;
    } 
  }
  
  private void k() {
    this.c.finish();
  }
  
  protected void a() {
    byte b = 0;
    if (this.e == -1) {
      byte b1;
      int i = this.c.getWindowManager().getDefaultDisplay().getRotation();
      int j = (this.c.getResources().getConfiguration()).orientation;
      if (j == 2) {
        b1 = b;
        if (i != 0)
          if (i == 1) {
            b1 = b;
          } else {
            b1 = 8;
          }  
      } else {
        b1 = b;
        if (j == 1)
          if (i == 0 || i == 3) {
            b1 = 1;
          } else {
            b1 = 9;
          }  
      } 
      this.e = b1;
    } 
    this.c.setRequestedOrientation(this.e);
  }
  
  public void a(int paramInt, String[] paramArrayOfString, int[] paramArrayOfint) {
    if (paramInt == b) {
      if (paramArrayOfint.length > 0 && paramArrayOfint[0] == 0) {
        this.d.b();
        return;
      } 
    } else {
      return;
    } 
    g();
  }
  
  public void a(Intent paramIntent, Bundle paramBundle) {
    this.c.getWindow().addFlags(128);
    if (paramBundle != null)
      this.e = paramBundle.getInt("SAVED_ORIENTATION_LOCK", -1); 
    if (paramIntent != null) {
      if (paramIntent.getBooleanExtra("SCAN_ORIENTATION_LOCKED", true))
        a(); 
      if ("com.google.zxing.client.android.SCAN".equals(paramIntent.getAction()))
        this.d.a(paramIntent); 
      if (!paramIntent.getBooleanExtra("BEEP_ENABLED", true))
        this.j.a(false); 
      if (paramIntent.hasExtra("TIMEOUT")) {
        fdf fdf = new fdf(this);
        this.k.postDelayed(fdf, paramIntent.getLongExtra("TIMEOUT", 0L));
      } 
      if (paramIntent.getBooleanExtra("BARCODE_IMAGE_ENABLED", false))
        this.g = true; 
    } 
  }
  
  public void a(Bundle paramBundle) {
    paramBundle.putInt("SAVED_ORIENTATION_LOCK", this.e);
  }
  
  protected void a(fcq paramfcq) {
    Intent intent = a(paramfcq, b(paramfcq));
    this.c.setResult(-1, intent);
    k();
  }
  
  public void b() {
    this.d.a(this.l);
  }
  
  public void c() {
    if (Build.VERSION.SDK_INT >= 23) {
      j();
    } else {
      this.d.b();
    } 
    this.i.b();
  }
  
  public void d() {
    this.d.a();
    this.i.c();
  }
  
  public void e() {
    this.h = true;
    this.i.c();
  }
  
  protected void f() {
    Intent intent = new Intent("com.google.zxing.client.android.SCAN");
    intent.putExtra("TIMEOUT", true);
    this.c.setResult(0, intent);
    k();
  }
  
  protected void g() {
    if (this.c.isFinishing() || this.h)
      return; 
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this.c);
    builder.setTitle(this.c.getString(esc.zxing_app_name));
    builder.setMessage(this.c.getString(esc.zxing_msg_camera_framework_bug));
    builder.setPositiveButton(esc.zxing_button_ok, new fdg(this));
    builder.setOnCancelListener(new fdh(this));
    builder.show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fda.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */