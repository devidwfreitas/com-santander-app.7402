package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import grs;
import java.io.File;
import knw;
import lqw;
import lqx;
import lqy;
import lqz;
import lra;
import lrb;
import lrc;
import lrd;
import lre;
import lrf;
import lwe;
import mhf;
import mhj;
import mij;
import mik;
import min;
import mio;

public class ScanDocumentActivity extends grs {
  public static final int a = 48035;
  
  public static final int b = 65456;
  
  public static final int c = 3089;
  
  public static final int d = 5081;
  
  public static final int e = 5698;
  
  private static final String g = "POST_IMAGE.jpg";
  
  private static final String w = "display-document-frag-tag";
  
  private static boolean x;
  
  private static mio y;
  
  private ImageButton A;
  
  private ImageButton B;
  
  private ImageButton C;
  
  private ImageButton D;
  
  private Button E;
  
  private Button F;
  
  private min G;
  
  private Uri H;
  
  private File I;
  
  public final int f = 4;
  
  private MultiStateLayout z;
  
  private void a(Bitmap paramBitmap, byte[] paramArrayOfbyte) {
    if (x) {
      y.j();
      if (paramArrayOfbyte == null || paramBitmap == null) {
        y.a(getResources().getString(2131297363));
        if (this.G != null)
          this.G.a(getResources().getString(2131297363)); 
        return;
      } 
      y.b(paramArrayOfbyte);
      y.b(paramBitmap);
      y.b(knw.JPG);
      if (this.G != null) {
        this.G.a(paramBitmap);
        return;
      } 
      return;
    } 
    y.k();
    if (paramArrayOfbyte == null || paramBitmap == null) {
      y.b(getResources().getString(2131297363));
      if (this.G != null) {
        this.G.a(getResources().getString(2131297363));
        return;
      } 
      return;
    } 
    y.a(paramArrayOfbyte);
    y.a(paramBitmap);
    y.a(knw.JPG);
    if (this.G != null) {
      this.G.a(paramBitmap);
      return;
    } 
  }
  
  private void a(Uri paramUri) {
    if (paramUri != null) {
      this.z.setState(aor.LOADING);
      (new mik(this)).a(paramUri, (mij)new lrf(this, paramUri), (mij)new lqx(this));
    } 
  }
  
  private void a(String paramString, byte[] paramArrayOfbyte) {
    if (x) {
      y.j();
      if (paramArrayOfbyte == null || TextUtils.isEmpty(paramString)) {
        y.a(getResources().getString(2131297376));
        if (this.G != null)
          this.G.b(getResources().getString(2131297376)); 
        return;
      } 
      y.b(paramArrayOfbyte);
      y.b(knw.PDF);
      y.a(paramString);
      if (this.G != null) {
        this.G.c(paramString);
        return;
      } 
      return;
    } 
    y.k();
    if (paramArrayOfbyte == null || TextUtils.isEmpty(paramString)) {
      y.b(getResources().getString(2131297376));
      if (this.G != null) {
        this.G.b(getResources().getString(2131297376));
        return;
      } 
      return;
    } 
    y.a(paramArrayOfbyte);
    y.a(knw.PDF);
    y.b(paramString);
    if (this.G != null) {
      this.G.c(paramString);
      return;
    } 
  }
  
  private void b(boolean paramBoolean) {
    this.C.setClickable(paramBoolean);
    this.D.setClickable(paramBoolean);
    this.B.setClickable(paramBoolean);
  }
  
  private void e() {
    this.z = (MultiStateLayout)findViewById(2131755279);
    this.A = (ImageButton)findViewById(2131756017);
    this.B = (ImageButton)findViewById(2131756020);
    this.C = (ImageButton)findViewById(2131756022);
    this.D = (ImageButton)findViewById(2131756021);
    this.E = (Button)findViewById(2131756023);
    this.F = (Button)findViewById(2131755733);
    f();
  }
  
  private void f() {
    this.A.setOnClickListener((View.OnClickListener)new lqw(this));
    this.C.setOnClickListener((View.OnClickListener)new lqy(this));
    this.B.setOnClickListener((View.OnClickListener)new lqz(this));
    this.D.setOnClickListener((View.OnClickListener)new lra(this));
    this.E.setOnClickListener((View.OnClickListener)new lrb(this));
    this.F.setOnClickListener((View.OnClickListener)new lrc(this));
  }
  
  private void g() {
    if (this.z.a() != aor.CONTENT)
      return; 
    mio mio1 = y;
    if (mio1 != null && (mio1.f() != null || mio1.g() != null))
      (new Handler()).postDelayed((Runnable)new lrd(this, mio1), 400L); 
    finish();
  }
  
  private void h() {
    this.E.setPaintFlags(this.E.getPaintFlags() | 0x8);
    if (y == null)
      y = mio.a(); 
    b();
  }
  
  private void i() {
    String[] arrayOfString = mhf.a((Context)this, false, new String[] { "android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE" });
    if (arrayOfString != null && arrayOfString.length > 0) {
      ActivityCompat.requestPermissions((Activity)this, arrayOfString, 48035);
      return;
    } 
    try {
      Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
      this.I = new File(getExternalCacheDir(), "POST_IMAGE.jpg");
      try {
        if (Build.VERSION.SDK_INT > 23) {
          this.H = FileProvider.getUriForFile(getApplicationContext(), "com.santander.app.provider", this.I);
        } else {
          this.H = Uri.fromFile(this.I);
        } 
      } catch (Exception exception) {}
      intent.putExtra("output", (Parcelable)this.H);
      startActivityForResult(intent, 3089);
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      mhj.c((Context)this, getResources().getString(2131297354));
      j();
      return;
    } 
  }
  
  private void j() {
    try {
      if (this.I != null) {
        this.I.delete();
        this.I = null;
      } 
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void k() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      ActivityCompat.requestPermissions((Activity)this, new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 65456);
      return;
    } 
    try {
      Intent intent = new Intent();
      intent.setAction("android.intent.action.GET_CONTENT");
      if (Build.VERSION.SDK_INT >= 19) {
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.MIME_TYPES", new String[] { "application/pdf", "image/*" });
      } else {
        intent.setType("application/pdf");
      } 
      startActivityForResult(Intent.createChooser(intent, "Documentos"), 5081);
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      mhj.c((Context)this, getResources().getString(2131297352));
      return;
    } 
  }
  
  private void n() {
    x = false;
    y = null;
  }
  
  public Bitmap a(Uri paramUri, File paramFile) {
    Bitmap bitmap = mhj.a(this, paramUri);
    try {
      switch ((new ExifInterface(paramFile.getPath())).getAttributeInt("Orientation", 0)) {
        case 6:
          return mhj.a(bitmap, 90.0F);
        case 3:
          return mhj.a(bitmap, 180.0F);
        case 8:
          return mhj.a(bitmap, 270.0F);
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return bitmap;
    } 
    return bitmap;
  }
  
  public mio a() {
    return y;
  }
  
  public void b() {
    lwe lwe = lwe.a(x);
    this.G = (min)lwe;
    getSupportFragmentManager();
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    if (!x) {
      fragmentTransaction.setCustomAnimations(2131034147, 2131034150, 2131034148, 2131034149);
    } else {
      fragmentTransaction.setCustomAnimations(2131034148, 2131034149, 2131034147, 2131034150);
    } 
    fragmentTransaction.replace(2131756019, (Fragment)lwe, "display-document-frag-tag").commit();
    b(false);
    (new Handler()).postDelayed((Runnable)new lre(this), 200L);
  }
  
  public void finish() {
    super.finish();
    n();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    if (paramInt2 == -1) {
      Bitmap bitmap;
      this.z.setState(aor.LOADING);
      if (paramInt1 == 3089) {
        if (this.H != null) {
          Uri uri = this.H;
          getContentResolver().notifyChange(uri, null);
          bitmap = a(uri, this.I);
          byte[] arrayOfByte = mhj.c(bitmap);
          j();
          a(bitmap, arrayOfByte);
        } 
        this.z.setState(aor.CONTENT);
      } else if (paramInt1 == 5081) {
        a(bitmap.getData());
      } else {
        this.z.setState(aor.CONTENT);
      } 
    } 
    j();
  }
  
  public void onBackPressed() {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968741);
    e();
    if (paramBundle != null && paramBundle.containsKey("verse-key"))
      x = paramBundle.getBoolean("verse-key"); 
    h();
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    switch (paramInt) {
      default:
        return;
      case 48035:
        if ((paramArrayOfint.length >= 2 && paramArrayOfint[0] == 0 && paramArrayOfint[1] == 0) || (paramArrayOfint.length >= 1 && paramArrayOfint[0] == 0)) {
          i();
          return;
        } 
        mhj.c((Context)this, getResources().getString(2131297378));
        return;
      case 65456:
        break;
    } 
    if (paramArrayOfint.length >= 1 && paramArrayOfint[0] == 0) {
      k();
      return;
    } 
    mhj.c((Context)this, getResources().getString(2131297378));
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle) {
    super.onRestoreInstanceState(paramBundle);
    if (paramBundle.containsKey("cameraImageUri")) {
      Log.e("restore", "onRestoreInstanceState");
      this.H = Uri.parse(paramBundle.getString("cameraImageUri"));
    } 
    if (paramBundle.containsKey("verse-key"))
      x = paramBundle.getBoolean("verse-key"); 
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    if (this.H != null) {
      Log.e("save", "onSaveInstanceState");
      paramBundle.putString("cameraImageUri", this.H.toString());
    } 
    if (!x)
      paramBundle.putBoolean("verse-key", x); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\ScanDocumentActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */