import android.os.Handler;
import android.util.Log;
import com.facebook.share.model.ShareVideoContent;
import java.io.ByteArrayOutputStream;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public class bzn {
  private static final String a = "VideoUploader";
  
  private static final String b = "upload_phase";
  
  private static final String c = "start";
  
  private static final String d = "transfer";
  
  private static final String e = "finish";
  
  private static final String f = "title";
  
  private static final String g = "description";
  
  private static final String h = "ref";
  
  private static final String i = "file_size";
  
  private static final String j = "upload_session_id";
  
  private static final String k = "video_id";
  
  private static final String l = "start_offset";
  
  private static final String m = "end_offset";
  
  private static final String n = "video_file_chunk";
  
  private static final String o = "Video upload failed";
  
  private static final String p = "Unexpected error in server response";
  
  private static final int q = 8;
  
  private static final int r = 2;
  
  private static final int s = 5000;
  
  private static final int t = 3;
  
  private static boolean u;
  
  private static Handler v;
  
  private static bri w = new bri(8);
  
  private static Set<bzv> x = new HashSet<bzv>();
  
  private static bgz y;
  
  private static void a(bzv parambzv) {
    // Byte code:
    //   0: ldc bzn
    //   2: monitorenter
    //   3: getstatic bzn.x : Ljava/util/Set;
    //   6: aload_0
    //   7: invokeinterface remove : (Ljava/lang/Object;)Z
    //   12: pop
    //   13: ldc bzn
    //   15: monitorexit
    //   16: return
    //   17: astore_0
    //   18: ldc bzn
    //   20: monitorexit
    //   21: aload_0
    //   22: athrow
    // Exception table:
    //   from	to	target	type
    //   3	13	17	finally
  }
  
  private static void a(bzv parambzv, Runnable paramRunnable) {
    // Byte code:
    //   0: ldc bzn
    //   2: monitorenter
    //   3: aload_0
    //   4: getstatic bzn.w : Lbri;
    //   7: aload_1
    //   8: invokevirtual a : (Ljava/lang/Runnable;)Lbrk;
    //   11: putfield n : Lbrk;
    //   14: ldc bzn
    //   16: monitorexit
    //   17: return
    //   18: astore_0
    //   19: ldc bzn
    //   21: monitorexit
    //   22: aload_0
    //   23: athrow
    // Exception table:
    //   from	to	target	type
    //   3	14	18	finally
  }
  
  public static void a(ShareVideoContent paramShareVideoContent, bhl<bwo> parambhl) {
    // Byte code:
    //   0: ldc bzn
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc 'me'
    //   6: aload_1
    //   7: invokestatic a : (Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lbhl;)V
    //   10: ldc bzn
    //   12: monitorexit
    //   13: return
    //   14: astore_0
    //   15: ldc bzn
    //   17: monitorexit
    //   18: aload_0
    //   19: athrow
    // Exception table:
    //   from	to	target	type
    //   3	10	14	finally
  }
  
  public static void a(ShareVideoContent paramShareVideoContent, String paramString, bhl<bwo> parambhl) {
    // Byte code:
    //   0: ldc bzn
    //   2: monitorenter
    //   3: getstatic bzn.u : Z
    //   6: ifne -> 16
    //   9: invokestatic e : ()V
    //   12: iconst_1
    //   13: putstatic bzn.u : Z
    //   16: aload_0
    //   17: ldc 'videoContent'
    //   19: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;)V
    //   22: aload_1
    //   23: ldc 'graphNode'
    //   25: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;)V
    //   28: aload_0
    //   29: invokevirtual d : ()Lcom/facebook/share/model/ShareVideo;
    //   32: astore_3
    //   33: aload_3
    //   34: ldc 'videoContent.video'
    //   36: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;)V
    //   39: aload_3
    //   40: invokevirtual c : ()Landroid/net/Uri;
    //   43: ldc 'videoContent.video.localUrl'
    //   45: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;)V
    //   48: new bzv
    //   51: dup
    //   52: aload_0
    //   53: aload_1
    //   54: aload_2
    //   55: aconst_null
    //   56: invokespecial <init> : (Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lbhl;Lbzo;)V
    //   59: astore_0
    //   60: aload_0
    //   61: invokestatic a : (Lbzv;)V
    //   64: getstatic bzn.x : Ljava/util/Set;
    //   67: aload_0
    //   68: invokeinterface add : (Ljava/lang/Object;)Z
    //   73: pop
    //   74: aload_0
    //   75: iconst_0
    //   76: invokestatic c : (Lbzv;I)V
    //   79: ldc bzn
    //   81: monitorexit
    //   82: return
    //   83: astore_0
    //   84: ldc bzn
    //   86: monitorexit
    //   87: aload_0
    //   88: athrow
    // Exception table:
    //   from	to	target	type
    //   3	16	83	finally
    //   16	79	83	finally
  }
  
  private static void b(bzv parambzv, bhp parambhp, String paramString) {
    a(parambzv);
    bqq.a(parambzv.j);
    if (parambzv.g != null) {
      if (parambhp != null) {
        bze.a(parambzv.g, parambhp);
        return;
      } 
    } else {
      return;
    } 
    if (parambzv.m) {
      bze.b(parambzv.g);
      return;
    } 
    bze.b(parambzv.g, paramString);
  }
  
  private static void b(bzv parambzv, String paramString1, String paramString2, int paramInt) {
    a(parambzv, new bzt(parambzv, paramString1, paramString2, paramInt));
  }
  
  private static void b(Exception paramException, String paramString, Object... paramVarArgs) {
    Log.e("VideoUploader", String.format(Locale.ROOT, paramString, paramVarArgs), paramException);
  }
  
  private static byte[] b(bzv parambzv, String paramString1, String paramString2) {
    if (!bqq.a(paramString1, parambzv.l)) {
      b((Exception)null, "Error reading video chunk. Expected chunk '%s'. Requested chunk '%s'.", new Object[] { parambzv.l, paramString1 });
      return null;
    } 
    long l = Long.parseLong(paramString1);
    int i = (int)(Long.parseLong(paramString2) - l);
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[Math.min(8192, i)];
    while (true) {
      int j = parambzv.j.read(arrayOfByte);
      if (j != -1) {
        byteArrayOutputStream.write(arrayOfByte, 0, j);
        int k = i - j;
        if (k != 0) {
          i = k;
          if (k < 0) {
            b((Exception)null, "Error reading video chunk. Expected buffer length - '%d'. Actual - '%d'.", new Object[] { Integer.valueOf(k + j), Integer.valueOf(j) });
            return null;
          } 
          continue;
        } 
      } 
      parambzv.l = paramString2;
      return byteArrayOutputStream.toByteArray();
    } 
  }
  
  private static void c() {
    // Byte code:
    //   0: ldc bzn
    //   2: monitorenter
    //   3: getstatic bzn.x : Ljava/util/Set;
    //   6: invokeinterface iterator : ()Ljava/util/Iterator;
    //   11: astore_0
    //   12: aload_0
    //   13: invokeinterface hasNext : ()Z
    //   18: ifeq -> 43
    //   21: aload_0
    //   22: invokeinterface next : ()Ljava/lang/Object;
    //   27: checkcast bzv
    //   30: iconst_1
    //   31: putfield m : Z
    //   34: goto -> 12
    //   37: astore_0
    //   38: ldc bzn
    //   40: monitorexit
    //   41: aload_0
    //   42: athrow
    //   43: ldc bzn
    //   45: monitorexit
    //   46: return
    // Exception table:
    //   from	to	target	type
    //   3	12	37	finally
    //   12	34	37	finally
  }
  
  private static void c(bzv parambzv, int paramInt) {
    a(parambzv, new bzr(parambzv, paramInt));
  }
  
  private static Handler d() {
    // Byte code:
    //   0: ldc bzn
    //   2: monitorenter
    //   3: getstatic bzn.v : Landroid/os/Handler;
    //   6: ifnonnull -> 22
    //   9: new android/os/Handler
    //   12: dup
    //   13: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   16: invokespecial <init> : (Landroid/os/Looper;)V
    //   19: putstatic bzn.v : Landroid/os/Handler;
    //   22: getstatic bzn.v : Landroid/os/Handler;
    //   25: astore_0
    //   26: ldc bzn
    //   28: monitorexit
    //   29: aload_0
    //   30: areturn
    //   31: astore_0
    //   32: ldc bzn
    //   34: monitorexit
    //   35: aload_0
    //   36: athrow
    // Exception table:
    //   from	to	target	type
    //   3	22	31	finally
    //   22	26	31	finally
  }
  
  private static void d(bzv parambzv, int paramInt) {
    a(parambzv, new bzp(parambzv, paramInt));
  }
  
  private static void e() {
    y = new bzo();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */