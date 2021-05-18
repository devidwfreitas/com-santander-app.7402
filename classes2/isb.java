import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.security.KeyPairGeneratorSpec;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import com.santander.app.MinhaConta;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Calendar;
import javax.security.auth.x500.X500Principal;

public class isb implements isa {
  private static final String f = "santander-keystore";
  
  private static final String g = "TAG_ERROR_LOAD_KEYSTORE";
  
  private static final String h = "TAG_ERROR_NEW_KEYSTORE";
  
  private iuq a;
  
  private iun b;
  
  private Activity c;
  
  private boolean d = false;
  
  private Bundle e;
  
  public isb(Activity paramActivity, iun paramiun) {
    this.c = paramActivity;
    this.b = paramiun;
    this.a = new iur(this.c, this);
  }
  
  public void a() {
    this.b.a(this.a.d());
  }
  
  public void a(int paramInt) {
    miq miq = miq.C();
    gki gki = gki.a();
    switch (paramInt) {
      default:
        e();
        return;
      case 0:
        miq.c("https://mbbdes.santanderbr.pre.corp/");
        miq.d("https://esbapi.isbanbr.dev.corp");
        miq.e("37826a50a428013485b60050569009ca");
        gki.a("https://esd.paas.isbanbr.dev.corp");
        miq.a(il.DEV);
      case 1:
        miq.c("https://mbbpi.santanderbr.pre.corp/");
        miq.d("https://esbapi.isbanbr.pre.corp/");
        miq.e("37826a50a428013485b60050569009ca");
        gki.a("https://esd.paas.isbanbr.dev.corp");
        miq.a(il.PI);
      case 2:
        miq.c("https://mbbhk.santanderbr.pre.corp/");
        miq.d("https://esbapi.santanderbr.pre.corp/");
        miq.e("37826a50a428013485b60050569009ca");
        gki.a("https://esd.paas.santanderbr.pre.corp");
        miq.a(il.HK);
      case 3:
        miq.c("https://mbbhk.santander.com.br/");
        miq.d("https://esbapihi.santander.com.br/");
        miq.e("37826a50a428013485b60050569009ca");
        gki.a("https://chathomolog.santander.com.br");
        miq.a(il.HI);
      case 4:
        miq.c("https://mbbocu.santander.com.br/");
        miq.d("https://esbapi.santander.com.br/");
        miq.e("37826a50a428013485b60050569009ca");
        gki.a("https://esdblue.paas.santanderbr.corp");
        miq.a(il.MBBOCU);
      case 5:
        miq.c("https://m.santander.com.br/");
        miq.d("https://esbapi.santander.com.br/");
        miq.e("37826a50a428013485b60050569009ca");
        gki.a("https://chat.santander.com.br");
        miq.a(il.PROD);
      case 6:
        break;
    } 
    miq.c("https://mbbdeploy.santander.com.br/");
    miq.d("https://esbapi.santander.com.br/");
    miq.e("37826a50a428013485b60050569009ca");
    gki.a("https://esdblue.paas.santanderbr.corp");
    miq.a(il.MBBDEPLOY);
  }
  
  public void a(Bundle paramBundle) {
    this.e = paramBundle;
    if (this.e != null) {
      String str = this.e.getString("dlb-ticket");
      if (str != null && !str.isEmpty())
        this.d = true; 
    } 
  }
  
  public void a(foh paramfoh) {
    this.b.e();
    this.a.a(new isc(this, paramfoh));
  }
  
  public void b() {
    Bitmap bitmap = this.a.a();
    if (bitmap != null)
      this.b.a(bitmap); 
  }
  
  public void c() {
    String str = this.a.b();
    this.b.a(str);
  }
  
  public void d() {
    miq miq = miq.C();
    miq.b(true);
    gki gki = gki.a();
    if (miq.c()) {
      miq.c("https://m.santander.com.br/");
      gki.a("https://chat.santander.com.br");
      e();
      myn.a(this.c.getApplication(), this.c);
      return;
    } 
    this.b.f();
  }
  
  public void e() {
    boolean bool = true;
    if (this.d) {
      f();
      return;
    } 
    int i = this.a.e();
    int j = this.a.f();
    String str1 = MinhaConta.b().getSharedPreferences("novidadesSegmentada", 0).getString("segSecundario", "");
    String str2 = MinhaConta.b().getSharedPreferences("novidadesSegmentada", 0).getString("segPrimario", "");
    if (str1.equals("OT")) {
      if (str2.equals("VGUN") || str2.equals("JPUN"))
        bool = false; 
    } else if (str1.equals("UN") || str1.equals("JP")) {
      bool = false;
    } 
    if (j != 0) {
      if (i > j && bool) {
        this.a.g();
        this.b.g();
        return;
      } 
      f();
      return;
    } 
    this.a.g();
    this.b.h();
  }
  
  public void f() {
    miq miq = miq.C();
    myn.d(MinhaConta.a());
    myn.a(this.c.getApplication(), this.c);
    miq.e(false);
    miq.a(new fwv());
    if (this.d && this.e != null) {
      String str = this.e.getString("dlb-ticket");
      if (str != null && !str.isEmpty()) {
        miq.C().c(true);
        this.b.b(str);
      } 
    } 
  }
  
  public void g() {
    KeyStore keyStore = null;
    try {
      KeyStore keyStore1 = KeyStore.getInstance("AndroidKeyStore");
      keyStore = keyStore1;
      keyStore1.load(null);
      keyStore = keyStore1;
      try {
        if (!keyStore.containsAlias("santander-keystore")) {
          Calendar calendar1 = Calendar.getInstance();
          Calendar calendar2 = Calendar.getInstance();
          calendar2.add(1, 1);
          KeyPairGeneratorSpec keyPairGeneratorSpec = (new KeyPairGeneratorSpec.Builder(this.b.i())).setAlias("santander-keystore").setSubject(new X500Principal("CN=Santander Keystore, O=Santander SA")).setSerialNumber(BigInteger.ONE).setStartDate(calendar1.getTime()).setEndDate(calendar2.getTime()).build();
          KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
          keyPairGenerator.initialize((AlgorithmParameterSpec)keyPairGeneratorSpec);
          keyPairGenerator.generateKeyPair();
        } 
        return;
      } catch (Exception exception) {
        Log.e("TAG_ERROR_NEW_KEYSTORE", Log.getStackTraceString(exception));
        frq.d("TAG_ERROR_NEW_KEYSTORE", Log.getStackTraceString(exception));
      } 
    } catch (Exception exception1) {
      Log.e("TAG_ERROR_LOAD_KEYSTORE", exception1.getMessage());
      frq.d("TAG_ERROR_LOAD_KEYSTORE", exception1.getMessage());
      try {
        if (!exception.containsAlias("santander-keystore")) {
          Calendar calendar1 = Calendar.getInstance();
          Calendar calendar2 = Calendar.getInstance();
          calendar2.add(1, 1);
          KeyPairGeneratorSpec keyPairGeneratorSpec = (new KeyPairGeneratorSpec.Builder(this.b.i())).setAlias("santander-keystore").setSubject(new X500Principal("CN=Santander Keystore, O=Santander SA")).setSerialNumber(BigInteger.ONE).setStartDate(calendar1.getTime()).setEndDate(calendar2.getTime()).build();
          KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
          keyPairGenerator.initialize((AlgorithmParameterSpec)keyPairGeneratorSpec);
          keyPairGenerator.generateKeyPair();
        } 
        return;
      } catch (Exception exception2) {
        Log.e("TAG_ERROR_NEW_KEYSTORE", Log.getStackTraceString(exception2));
        frq.d("TAG_ERROR_NEW_KEYSTORE", Log.getStackTraceString(exception2));
      } 
    } 
  }
  
  public String h() {
    return this.a.c();
  }
  
  public void i() {
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission(MinhaConta.b(), "android.permission.READ_PHONE_STATE") != 0) {
        String[] arrayOfString = this.a.h();
        this.b.a(arrayOfString);
        return;
      } 
      this.b.m();
      return;
    } 
    this.b.m();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\isb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */