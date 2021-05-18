import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class bvd implements bvc {
  private Context a;
  
  private WifiManager b;
  
  private bvf c;
  
  private final Object d = new Object();
  
  private final but e;
  
  bvd(Context paramContext, but parambut) {
    this.a = paramContext;
    this.e = parambut;
  }
  
  private static List<ScanResult> a(List<ScanResult> paramList, long paramLong) {
    ArrayList<ScanResult> arrayList = new ArrayList();
    if (paramList != null) {
      if (Build.VERSION.SDK_INT < 17) {
        arrayList.addAll(paramList);
        return arrayList;
      } 
    } else {
      return arrayList;
    } 
    long l = SystemClock.elapsedRealtime();
    Iterator<ScanResult> iterator = paramList.iterator();
    while (true) {
      if (iterator.hasNext()) {
        ScanResult scanResult = iterator.next();
        long l2 = l - scanResult.timestamp / 1000L;
        long l1 = l2;
        if (l2 < 0L)
          l1 = System.currentTimeMillis() - scanResult.timestamp; 
        if (l1 < paramLong)
          arrayList.add(scanResult); 
        continue;
      } 
      return arrayList;
    } 
  }
  
  private static void a(List<ScanResult> paramList, int paramInt) {
    if (paramList.size() > paramInt) {
      Collections.sort(paramList, new bve());
      paramList.subList(paramInt, paramList.size()).clear();
    } 
  }
  
  private boolean e() {
    return (Build.VERSION.SDK_INT >= 18) ? this.b.isScanAlwaysAvailable() : false;
  }
  
  private List<bvb> f() {
    try {
      List<ScanResult> list = a(this.b.getScanResults(), this.e.g());
      a(list, this.e.h());
      ArrayList<bvb> arrayList = new ArrayList(list.size());
      for (ScanResult scanResult : list) {
        bvb bvb = new bvb();
        bvb.b = scanResult.BSSID;
        bvb.a = scanResult.SSID;
        bvb.c = scanResult.level;
        bvb.d = scanResult.frequency;
        arrayList.add(bvb);
      } 
    } catch (Exception exception) {
      throw new buy(buz.UNKNOWN_ERROR, exception);
    } 
    return (List<bvb>)exception;
  }
  
  private List<bvb> g() {
    Object<bvb> object = null;
    null = object;
    try {
      if (bqx.c(this.a)) {
        h();
        boolean bool = this.b.startScan();
        null = object;
        if (bool) {
          try {
            synchronized (this.d) {
              this.d.wait(this.e.i());
              null = (Object<bvb>)f();
              return (List<bvb>)null;
            } 
          } catch (InterruptedException interruptedException) {}
        } else {
          return (List<bvb>)interruptedException;
        } 
      } else {
        return (List<bvb>)interruptedException;
      } 
      return f();
    } catch (Exception exception) {
      return null;
    } finally {
      i();
    } 
  }
  
  private void h() {
    if (this.c != null)
      i(); 
    this.c = new bvf(this, null);
    IntentFilter intentFilter = new IntentFilter();
    intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
    this.a.registerReceiver(this.c, intentFilter);
  }
  
  private void i() {
    if (this.c != null) {
      try {
        this.a.unregisterReceiver(this.c);
      } catch (Exception exception) {}
      this.c = null;
    } 
  }
  
  public void a() {
    if (!this.a.getPackageManager().hasSystemFeature("android.hardware.wifi"))
      throw new buy(buz.NOT_SUPPORTED); 
    if (!bqx.b(this.a))
      throw new buy(buz.PERMISSION_DENIED); 
    if (this.b == null)
      this.b = (WifiManager)this.a.getSystemService("wifi"); 
    if (!e() && !this.b.isWifiEnabled())
      throw new buy(buz.DISABLED); 
  }
  
  public bvb b() {
    try {
      WifiInfo wifiInfo = this.b.getConnectionInfo();
      if (wifiInfo == null || TextUtils.isEmpty(wifiInfo.getBSSID()) || wifiInfo.getSupplicantState() != SupplicantState.COMPLETED)
        return null; 
      bvb bvb2 = new bvb();
      bvb2.b = wifiInfo.getBSSID();
      bvb2.a = wifiInfo.getSSID();
      bvb2.c = wifiInfo.getRssi();
      bvb bvb1 = bvb2;
      if (Build.VERSION.SDK_INT >= 21) {
        bvb2.d = wifiInfo.getFrequency();
        return bvb2;
      } 
    } catch (Exception exception) {
      throw new buy(buz.UNKNOWN_ERROR, exception);
    } 
    return (bvb)exception;
  }
  
  public boolean c() {
    try {
      a();
      boolean bool = bqx.d(this.a);
      if (bool)
        return true; 
    } catch (buy buy) {}
    return false;
  }
  
  public List<bvb> d() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore_2
    //   4: aload_0
    //   5: getfield e : Lbut;
    //   8: invokevirtual k : ()Z
    //   11: ifne -> 19
    //   14: aload_0
    //   15: invokespecial f : ()Ljava/util/List;
    //   18: astore_2
    //   19: aload_2
    //   20: ifnull -> 82
    //   23: aload_2
    //   24: invokeinterface isEmpty : ()Z
    //   29: ifeq -> 72
    //   32: goto -> 82
    //   35: aload_0
    //   36: getfield e : Lbut;
    //   39: invokevirtual k : ()Z
    //   42: ifne -> 63
    //   45: aload_2
    //   46: astore_3
    //   47: aload_0
    //   48: getfield e : Lbut;
    //   51: invokevirtual j : ()Z
    //   54: ifeq -> 68
    //   57: aload_2
    //   58: astore_3
    //   59: iload_1
    //   60: ifeq -> 68
    //   63: aload_0
    //   64: invokespecial g : ()Ljava/util/List;
    //   67: astore_3
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_3
    //   71: areturn
    //   72: iconst_0
    //   73: istore_1
    //   74: goto -> 35
    //   77: astore_2
    //   78: aload_0
    //   79: monitorexit
    //   80: aload_2
    //   81: athrow
    //   82: iconst_1
    //   83: istore_1
    //   84: goto -> 35
    // Exception table:
    //   from	to	target	type
    //   4	19	77	finally
    //   23	32	77	finally
    //   35	45	77	finally
    //   47	57	77	finally
    //   63	68	77	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bvd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */