import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanResult;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

@TargetApi(21)
public class bug implements buf {
  private static final String a = "BleScannerImpl";
  
  private BluetoothAdapter b;
  
  private BluetoothLeScanner c;
  
  private but d;
  
  private int e;
  
  private final List<bul> f = new ArrayList<bul>();
  
  private boolean g;
  
  private buj h;
  
  private Context i;
  
  bug(Context paramContext, but parambut) {
    this.i = paramContext;
    this.d = parambut;
  }
  
  private static String a(byte[] paramArrayOfbyte) {
    return (paramArrayOfbyte == null || paramArrayOfbyte.length == 0) ? null : a(paramArrayOfbyte, b(paramArrayOfbyte));
  }
  
  private static String a(byte[] paramArrayOfbyte, int paramInt) {
    // Byte code:
    //   0: new java/lang/StringBuffer
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_3
    //   8: iload_1
    //   9: iflt -> 20
    //   12: iload_1
    //   13: istore_2
    //   14: iload_1
    //   15: aload_0
    //   16: arraylength
    //   17: if_icmple -> 23
    //   20: aload_0
    //   21: arraylength
    //   22: istore_2
    //   23: iconst_0
    //   24: istore_1
    //   25: iload_1
    //   26: iload_2
    //   27: if_icmpge -> 60
    //   30: aload_3
    //   31: ldc '%02x'
    //   33: iconst_1
    //   34: anewarray java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: aload_0
    //   40: iload_1
    //   41: baload
    //   42: invokestatic valueOf : (B)Ljava/lang/Byte;
    //   45: aastore
    //   46: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   49: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   52: pop
    //   53: iload_1
    //   54: iconst_1
    //   55: iadd
    //   56: istore_1
    //   57: goto -> 25
    //   60: aload_3
    //   61: invokevirtual toString : ()Ljava/lang/String;
    //   64: areturn
  }
  
  private void a(long paramLong) {
    try {
      synchronized (new Object()) {
        (new Handler(Looper.getMainLooper())).post(new buh(this, null));
        null.wait(paramLong);
        return;
      } 
    } catch (Exception exception) {
      b("Exception waiting for main looper", exception);
      return;
    } 
  }
  
  private static int b(byte[] paramArrayOfbyte) {
    for (int i = 0; i < paramArrayOfbyte.length; i += b + 1) {
      byte b = paramArrayOfbyte[i];
      if (b == 0)
        return i; 
      if (b < 0)
        return paramArrayOfbyte.length; 
    } 
    return paramArrayOfbyte.length;
  }
  
  private static bul b(ScanResult paramScanResult) {
    return new bul(a(paramScanResult.getScanRecord().getBytes()), paramScanResult.getRssi());
  }
  
  private static void b(String paramString, Exception paramException) {
    if (bhv.d())
      Log.e("BleScannerImpl", paramString, paramException); 
  }
  
  public void a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic android/os/Build$VERSION.SDK_INT : I
    //   5: bipush #21
    //   7: if_icmpge -> 26
    //   10: new buy
    //   13: dup
    //   14: getstatic buz.NOT_SUPPORTED : Lbuz;
    //   17: invokespecial <init> : (Lbuz;)V
    //   20: athrow
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: athrow
    //   26: aload_0
    //   27: getfield i : Landroid/content/Context;
    //   30: invokestatic e : (Landroid/content/Context;)Z
    //   33: ifne -> 47
    //   36: new buy
    //   39: dup
    //   40: getstatic buz.PERMISSION_DENIED : Lbuz;
    //   43: invokespecial <init> : (Lbuz;)V
    //   46: athrow
    //   47: aload_0
    //   48: getfield i : Landroid/content/Context;
    //   51: invokestatic d : (Landroid/content/Context;)Z
    //   54: ifne -> 68
    //   57: new buy
    //   60: dup
    //   61: getstatic buz.PERMISSION_DENIED : Lbuz;
    //   64: invokespecial <init> : (Lbuz;)V
    //   67: athrow
    //   68: aload_0
    //   69: invokestatic getDefaultAdapter : ()Landroid/bluetooth/BluetoothAdapter;
    //   72: putfield b : Landroid/bluetooth/BluetoothAdapter;
    //   75: aload_0
    //   76: getfield b : Landroid/bluetooth/BluetoothAdapter;
    //   79: ifnull -> 92
    //   82: aload_0
    //   83: getfield b : Landroid/bluetooth/BluetoothAdapter;
    //   86: invokevirtual isEnabled : ()Z
    //   89: ifne -> 103
    //   92: new buy
    //   95: dup
    //   96: getstatic buz.DISABLED : Lbuz;
    //   99: invokespecial <init> : (Lbuz;)V
    //   102: athrow
    //   103: aload_0
    //   104: aload_0
    //   105: getfield b : Landroid/bluetooth/BluetoothAdapter;
    //   108: invokevirtual getBluetoothLeScanner : ()Landroid/bluetooth/le/BluetoothLeScanner;
    //   111: putfield c : Landroid/bluetooth/le/BluetoothLeScanner;
    //   114: aload_0
    //   115: getfield c : Landroid/bluetooth/le/BluetoothLeScanner;
    //   118: ifnonnull -> 132
    //   121: new buy
    //   124: dup
    //   125: getstatic buz.UNKNOWN_ERROR : Lbuz;
    //   128: invokespecial <init> : (Lbuz;)V
    //   131: athrow
    //   132: aload_0
    //   133: monitorexit
    //   134: return
    // Exception table:
    //   from	to	target	type
    //   2	21	21	finally
    //   26	47	21	finally
    //   47	68	21	finally
    //   68	92	21	finally
    //   92	103	21	finally
    //   103	132	21	finally
  }
  
  public void b() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield g : Z
    //   6: ifeq -> 25
    //   9: new buy
    //   12: dup
    //   13: getstatic buz.SCAN_ALREADY_IN_PROGRESS : Lbuz;
    //   16: invokespecial <init> : (Lbuz;)V
    //   19: athrow
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: athrow
    //   25: aload_0
    //   26: new buj
    //   29: dup
    //   30: aload_0
    //   31: aconst_null
    //   32: invokespecial <init> : (Lbug;Lbuh;)V
    //   35: putfield h : Lbuj;
    //   38: aload_0
    //   39: iconst_1
    //   40: putfield g : Z
    //   43: aload_0
    //   44: iconst_0
    //   45: putfield e : I
    //   48: aload_0
    //   49: getfield f : Ljava/util/List;
    //   52: astore_1
    //   53: aload_1
    //   54: monitorenter
    //   55: aload_0
    //   56: getfield f : Ljava/util/List;
    //   59: invokeinterface clear : ()V
    //   64: aload_1
    //   65: monitorexit
    //   66: aload_0
    //   67: getfield c : Landroid/bluetooth/le/BluetoothLeScanner;
    //   70: ifnonnull -> 89
    //   73: new buy
    //   76: dup
    //   77: getstatic buz.UNKNOWN_ERROR : Lbuz;
    //   80: invokespecial <init> : (Lbuz;)V
    //   83: athrow
    //   84: astore_2
    //   85: aload_1
    //   86: monitorexit
    //   87: aload_2
    //   88: athrow
    //   89: new android/bluetooth/le/ScanSettings$Builder
    //   92: dup
    //   93: invokespecial <init> : ()V
    //   96: astore_1
    //   97: aload_1
    //   98: iconst_2
    //   99: invokevirtual setScanMode : (I)Landroid/bluetooth/le/ScanSettings$Builder;
    //   102: pop
    //   103: aload_1
    //   104: lconst_0
    //   105: invokevirtual setReportDelay : (J)Landroid/bluetooth/le/ScanSettings$Builder;
    //   108: pop
    //   109: aload_0
    //   110: getfield c : Landroid/bluetooth/le/BluetoothLeScanner;
    //   113: aconst_null
    //   114: aload_1
    //   115: invokevirtual build : ()Landroid/bluetooth/le/ScanSettings;
    //   118: aload_0
    //   119: getfield h : Lbuj;
    //   122: invokevirtual startScan : (Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    //   125: aload_0
    //   126: iconst_1
    //   127: putfield g : Z
    //   130: aload_0
    //   131: monitorexit
    //   132: return
    //   133: astore_1
    //   134: new buy
    //   137: dup
    //   138: getstatic buz.UNKNOWN_ERROR : Lbuz;
    //   141: invokespecial <init> : (Lbuz;)V
    //   144: athrow
    // Exception table:
    //   from	to	target	type
    //   2	20	20	finally
    //   25	55	20	finally
    //   55	66	84	finally
    //   66	84	20	finally
    //   85	87	84	finally
    //   87	89	20	finally
    //   89	130	133	java/lang/Exception
    //   89	130	20	finally
    //   134	145	20	finally
  }
  
  public void c() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield c : Landroid/bluetooth/le/BluetoothLeScanner;
    //   6: aload_0
    //   7: getfield h : Lbuj;
    //   10: invokevirtual flushPendingScanResults : (Landroid/bluetooth/le/ScanCallback;)V
    //   13: aload_0
    //   14: getfield c : Landroid/bluetooth/le/BluetoothLeScanner;
    //   17: aload_0
    //   18: getfield h : Lbuj;
    //   21: invokevirtual stopScan : (Landroid/bluetooth/le/ScanCallback;)V
    //   24: aload_0
    //   25: aload_0
    //   26: getfield d : Lbut;
    //   29: invokevirtual n : ()J
    //   32: invokespecial a : (J)V
    //   35: aload_0
    //   36: iconst_0
    //   37: putfield g : Z
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Exception table:
    //   from	to	target	type
    //   2	40	43	finally
  }
  
  public int d() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield e : I
    //   6: istore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: iload_1
    //   10: ireturn
    //   11: astore_2
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_2
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally
  }
  
  public List<bul> e() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield f : Ljava/util/List;
    //   6: astore_3
    //   7: aload_3
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield d : Lbut;
    //   13: invokevirtual o : ()I
    //   16: istore_1
    //   17: aload_0
    //   18: getfield f : Ljava/util/List;
    //   21: invokeinterface size : ()I
    //   26: iload_1
    //   27: if_icmple -> 82
    //   30: new java/util/ArrayList
    //   33: dup
    //   34: iload_1
    //   35: invokespecial <init> : (I)V
    //   38: astore_2
    //   39: new bui
    //   42: dup
    //   43: aload_0
    //   44: invokespecial <init> : (Lbug;)V
    //   47: astore #4
    //   49: aload_0
    //   50: getfield f : Ljava/util/List;
    //   53: aload #4
    //   55: invokestatic sort : (Ljava/util/List;Ljava/util/Comparator;)V
    //   58: aload_2
    //   59: aload_0
    //   60: getfield f : Ljava/util/List;
    //   63: iconst_0
    //   64: iload_1
    //   65: invokeinterface subList : (II)Ljava/util/List;
    //   70: invokeinterface addAll : (Ljava/util/Collection;)Z
    //   75: pop
    //   76: aload_3
    //   77: monitorexit
    //   78: aload_0
    //   79: monitorexit
    //   80: aload_2
    //   81: areturn
    //   82: new java/util/ArrayList
    //   85: dup
    //   86: aload_0
    //   87: getfield f : Ljava/util/List;
    //   90: invokeinterface size : ()I
    //   95: invokespecial <init> : (I)V
    //   98: astore_2
    //   99: aload_2
    //   100: aload_0
    //   101: getfield f : Ljava/util/List;
    //   104: invokeinterface addAll : (Ljava/util/Collection;)Z
    //   109: pop
    //   110: goto -> 76
    //   113: astore_2
    //   114: aload_3
    //   115: monitorexit
    //   116: aload_2
    //   117: athrow
    //   118: astore_2
    //   119: aload_0
    //   120: monitorexit
    //   121: aload_2
    //   122: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	118	finally
    //   9	76	113	finally
    //   76	78	113	finally
    //   82	110	113	finally
    //   114	116	113	finally
    //   116	118	118	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bug.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */