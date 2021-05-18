import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class bux implements LocationListener, buw {
  private static final long a = 100L;
  
  private static final float b = 0.0F;
  
  private Context c;
  
  private LocationManager d;
  
  private but e;
  
  private Location f;
  
  private final Object g = new Object();
  
  private List<String> h;
  
  public bux(Context paramContext, but parambut) {
    this.c = paramContext;
    this.e = parambut;
    this.d = (LocationManager)paramContext.getSystemService("location");
  }
  
  private Location a(String paramString) {
    Location location = this.d.getLastKnownLocation(paramString);
    if (location != null) {
      long l = location.getTime();
      if (System.currentTimeMillis() - l < this.e.e())
        return location; 
    } 
    return null;
  }
  
  private Location c() {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: putfield f : Landroid/location/Location;
    //   5: new android/os/HandlerThread
    //   8: dup
    //   9: ldc 'LocationScanner'
    //   11: invokespecial <init> : (Ljava/lang/String;)V
    //   14: astore_1
    //   15: aload_1
    //   16: invokevirtual start : ()V
    //   19: aload_0
    //   20: getfield h : Ljava/util/List;
    //   23: invokeinterface iterator : ()Ljava/util/Iterator;
    //   28: astore_2
    //   29: aload_2
    //   30: invokeinterface hasNext : ()Z
    //   35: ifeq -> 84
    //   38: aload_2
    //   39: invokeinterface next : ()Ljava/lang/Object;
    //   44: checkcast java/lang/String
    //   47: astore_3
    //   48: aload_0
    //   49: getfield d : Landroid/location/LocationManager;
    //   52: aload_3
    //   53: ldc2_w 100
    //   56: fconst_0
    //   57: aload_0
    //   58: aload_1
    //   59: invokevirtual getLooper : ()Landroid/os/Looper;
    //   62: invokevirtual requestLocationUpdates : (Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    //   65: goto -> 29
    //   68: astore_2
    //   69: aload_0
    //   70: getfield d : Landroid/location/LocationManager;
    //   73: aload_0
    //   74: invokevirtual removeUpdates : (Landroid/location/LocationListener;)V
    //   77: aload_1
    //   78: invokevirtual quit : ()Z
    //   81: pop
    //   82: aload_2
    //   83: athrow
    //   84: aload_0
    //   85: getfield g : Ljava/lang/Object;
    //   88: astore_2
    //   89: aload_2
    //   90: monitorenter
    //   91: aload_0
    //   92: getfield g : Ljava/lang/Object;
    //   95: aload_0
    //   96: getfield e : Lbut;
    //   99: invokevirtual d : ()J
    //   102: invokevirtual wait : (J)V
    //   105: aload_2
    //   106: monitorexit
    //   107: aload_0
    //   108: getfield d : Landroid/location/LocationManager;
    //   111: aload_0
    //   112: invokevirtual removeUpdates : (Landroid/location/LocationListener;)V
    //   115: aload_1
    //   116: invokevirtual quit : ()Z
    //   119: pop
    //   120: aload_0
    //   121: getfield f : Landroid/location/Location;
    //   124: ifnonnull -> 147
    //   127: new buy
    //   130: dup
    //   131: getstatic buz.TIMEOUT : Lbuz;
    //   134: invokespecial <init> : (Lbuz;)V
    //   137: athrow
    //   138: astore_3
    //   139: aload_2
    //   140: monitorexit
    //   141: aload_3
    //   142: athrow
    //   143: astore_2
    //   144: goto -> 107
    //   147: aload_0
    //   148: getfield f : Landroid/location/Location;
    //   151: areturn
    // Exception table:
    //   from	to	target	type
    //   15	29	68	finally
    //   29	65	68	finally
    //   84	91	143	java/lang/Exception
    //   84	91	68	finally
    //   91	107	138	finally
    //   139	141	138	finally
    //   141	143	143	java/lang/Exception
    //   141	143	68	finally
  }
  
  public void a() {
    if (!bqx.d(this.c))
      throw new buy(buz.PERMISSION_DENIED); 
    this.h = new ArrayList<String>((this.e.b()).length);
    for (String str : this.e.b()) {
      if (this.d.isProviderEnabled(str))
        this.h.add(str); 
    } 
    if (this.h.isEmpty())
      throw new buy(buz.DISABLED); 
  }
  
  public Location b() {
    Iterator<String> iterator = this.h.iterator();
    while (iterator.hasNext()) {
      Location location = a(iterator.next());
      if (location != null)
        return location; 
    } 
    return c();
  }
  
  public void onLocationChanged(Location paramLocation) {
    if (this.f == null && paramLocation.getAccuracy() < this.e.c())
      synchronized (this.g) {
        this.f = paramLocation;
        this.g.notify();
        return;
      }  
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bux.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */