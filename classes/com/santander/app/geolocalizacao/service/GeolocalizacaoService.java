package com.santander.app.geolocalizacao.service;

import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.NotificationCompat;
import android.util.Base64;
import android.util.Log;
import android.widget.Toast;
import com.santander.app.homenaologada.presentation.HomeActivity;
import foh;
import ih;
import ilo;
import ils;
import ilv;
import ilx;
import ily;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Date;
import myu;
import mzl;
import mzt;
import nag;

public class GeolocalizacaoService extends Service {
  public static Activity a = null;
  
  public static String b = null;
  
  private static final String c = "GeolocalizacaoService";
  
  private static final int f = 3600000;
  
  private static final int g = 100;
  
  private LocationManager d;
  
  private LocationListener e;
  
  private ilo a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, mzl parammzl) {
    ilo ilo = new ilo();
    if (parammzl != null) {
      if (!mzt.a(parammzl.v()))
        ilo.a(parammzl.v()); 
      if (!mzt.a(parammzl.u()))
        ilo.b(parammzl.u()); 
      if (!mzt.a(parammzl.n()))
        ilo.e(parammzl.n()); 
      if (!mzt.a(parammzl.d()))
        ilo.f(parammzl.d()); 
    } 
    ilo.j(paramString1);
    ilo.c(paramString2);
    ilo.d(paramString3);
    ilo.i(paramString4);
    ilo.h(paramString5);
    ilo.g(paramString6);
    ilo.k(b);
    return ilo;
  }
  
  private String a() {
    String str = getApplicationContext().getSharedPreferences("SovereignBrasilProfile", 0).getString("l", "");
    if (!str.equalsIgnoreCase("")) {
      String str1 = str;
      try {
        String str2 = nag.b(str);
        str = str2;
        str1 = str2;
        if ("".equalsIgnoreCase(str2)) {
          str1 = str2;
          str = new String(Base64.decode(str2.getBytes("UTF-8"), 0), "UTF-8");
        } 
        try {
          return str.replace(".", "").replace("-", "");
        } catch (UnsupportedEncodingException unsupportedEncodingException1) {
          str1 = str;
          unsupportedEncodingException = unsupportedEncodingException1;
        } 
      } catch (UnsupportedEncodingException unsupportedEncodingException) {}
      Log.e("Error", unsupportedEncodingException.toString());
      return str1;
    } 
    return "";
  }
  
  private void a(ilo paramilo) {
    if (paramilo.m()) {
      ilx ilx = new ilx(this, paramilo);
      (new ils(getApplicationContext())).a(paramilo, (ih)ilx);
      return;
    } 
    Log.e("GeolocalizacaoService", "Parâmetros inválidos.");
  }
  
  private void a(String paramString) {
    Toast.makeText(getApplicationContext(), paramString, 1).show();
  }
  
  private void a(String paramString1, String paramString2) {}
  
  private foh b() {
    return (foh)new ilv(this);
  }
  
  private void b(String paramString1, String paramString2) {
    myu myu = myu.a();
    myu.a(true);
    myu.b(true);
    myu.b(paramString2, paramString1);
  }
  
  private void c() {
    if (this.d != null)
      try {
        this.d.removeUpdates(this.e);
        return;
      } catch (Exception exception) {
        Log.i("GeolocalizacaoService", "fail to remove location listners, ignore", exception);
        return;
      }  
  }
  
  private void c(String paramString1, String paramString2) {
    Intent intent = new Intent(getApplicationContext(), HomeActivity.class);
    PendingIntent pendingIntent = PendingIntent.getActivity(getApplicationContext(), 0, intent, 134217728);
    NotificationCompat.Builder builder = new NotificationCompat.Builder(getApplicationContext());
    builder.setAutoCancel(true).setDefaults(-1).setWhen(System.currentTimeMillis()).setSmallIcon(2130837612).setTicker("Hearty365").setContentTitle(paramString1).setContentText(paramString2).setDefaults(5).setContentIntent(pendingIntent).setContentInfo("Info");
    ((NotificationManager)getApplicationContext().getSystemService("notification")).notify(1, builder.build());
  }
  
  private void d() {
    if (this.d != null) {
      try {
        if (ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
          a("geoTest - " + DateFormat.getDateTimeInstance().format(new Date()), "Não enviou localização (Permissao)");
          return;
        } 
        if (this.d.isProviderEnabled("gps")) {
          this.d.requestLocationUpdates("network", 3600000L, 100.0F, this.e);
          return;
        } 
      } catch (Exception exception) {
        Log.i("GeolocalizacaoService", "fail to add location listners, ignore", exception);
        return;
      } 
      a("geoTest - " + DateFormat.getDateTimeInstance().format(new Date()), "Não enviou localização (GPS Desligado)");
    } 
  }
  
  @Nullable
  public IBinder onBind(Intent paramIntent) {
    return null;
  }
  
  public void onCreate() {
    Log.i("GeolocalizacaoService", "onCreate");
    this.d = (LocationManager)getApplicationContext().getSystemService("location");
    this.e = (LocationListener)new ily(this, b());
    try {
      d();
      return;
    } catch (SecurityException securityException) {
      Log.i("GeolocalizacaoService", "fail to request location update, ignore", securityException);
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      Log.d("GeolocalizacaoService", "network provider does not exist, " + illegalArgumentException.getMessage());
      return;
    } 
  }
  
  public void onDestroy() {
    Log.i("GeolocalizacaoService", "onDestroy");
    super.onDestroy();
    c();
    stopSelf();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    Log.i("GeolocalizacaoService", "onStartCommand");
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    return 2;
  }
  
  public void onTaskRemoved(Intent paramIntent) {
    Log.i("GeolocalizacaoService", "onTaskRemoved");
    super.onTaskRemoved(paramIntent);
    c();
    stopSelf();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\geolocalizacao\service\GeolocalizacaoService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */