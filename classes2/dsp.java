import android.os.SystemClock;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;

public class dsp implements drv {
  protected static final boolean a = dsm.b;
  
  private static int d = 3000;
  
  private static int e = 4096;
  
  protected final dsz b;
  
  protected final dsq c;
  
  public dsp(dsz paramdsz) {
    this(paramdsz, new dsq(e));
  }
  
  public dsp(dsz paramdsz, dsq paramdsq) {
    this.b = paramdsz;
    this.c = paramdsq;
  }
  
  protected static Map<String, String> a(Header[] paramArrayOfHeader) {
    TreeMap<String, Object> treeMap = new TreeMap<String, Object>(String.CASE_INSENSITIVE_ORDER);
    for (int i = 0; i < paramArrayOfHeader.length; i++)
      treeMap.put(paramArrayOfHeader[i].getName(), paramArrayOfHeader[i].getValue()); 
    return (Map)treeMap;
  }
  
  private void a(long paramLong, dsa<?> paramdsa, byte[] paramArrayOfbyte, StatusLine paramStatusLine) {
    if (a || paramLong > d) {
      String str;
      if (paramArrayOfbyte != null) {
        Integer integer = Integer.valueOf(paramArrayOfbyte.length);
      } else {
        str = "null";
      } 
      dsm.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", new Object[] { paramdsa, Long.valueOf(paramLong), str, Integer.valueOf(paramStatusLine.getStatusCode()), Integer.valueOf(paramdsa.o().b()) });
    } 
  }
  
  private static void a(String paramString, dsa<?> paramdsa, dsl paramdsl) {
    dsi dsi = paramdsa.o();
    int i = paramdsa.n();
    try {
      dsi.a(paramdsl);
      paramdsa.b(String.format("%s-retry [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      return;
    } catch (dsl dsl1) {
      paramdsa.b(String.format("%s-timeout-giveup [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      throw dsl1;
    } 
  }
  
  private void a(Map<String, String> paramMap, dps paramdps) {
    if (paramdps != null) {
      if (paramdps.b != null)
        paramMap.put("If-None-Match", paramdps.b); 
      if (paramdps.d > 0L) {
        paramMap.put("If-Modified-Since", DateUtils.formatDate(new Date(paramdps.d)));
        return;
      } 
    } 
  }
  
  private byte[] a(HttpEntity paramHttpEntity) {
    // Byte code:
    //   0: new ddb
    //   3: dup
    //   4: aload_0
    //   5: getfield c : Ldsq;
    //   8: aload_1
    //   9: invokeinterface getContentLength : ()J
    //   14: l2i
    //   15: invokespecial <init> : (Ldsq;I)V
    //   18: astore #5
    //   20: aconst_null
    //   21: astore #4
    //   23: aload #4
    //   25: astore_3
    //   26: aload_1
    //   27: invokeinterface getContent : ()Ljava/io/InputStream;
    //   32: astore #6
    //   34: aload #6
    //   36: ifnonnull -> 74
    //   39: aload #4
    //   41: astore_3
    //   42: new dsj
    //   45: dup
    //   46: invokespecial <init> : ()V
    //   49: athrow
    //   50: astore #4
    //   52: aload_1
    //   53: invokeinterface consumeContent : ()V
    //   58: aload_0
    //   59: getfield c : Ldsq;
    //   62: aload_3
    //   63: invokevirtual a : ([B)V
    //   66: aload #5
    //   68: invokevirtual close : ()V
    //   71: aload #4
    //   73: athrow
    //   74: aload #4
    //   76: astore_3
    //   77: aload_0
    //   78: getfield c : Ldsq;
    //   81: sipush #1024
    //   84: invokevirtual a : (I)[B
    //   87: astore #4
    //   89: aload #4
    //   91: astore_3
    //   92: aload #6
    //   94: aload #4
    //   96: invokevirtual read : ([B)I
    //   99: istore_2
    //   100: iload_2
    //   101: iconst_m1
    //   102: if_icmpeq -> 120
    //   105: aload #4
    //   107: astore_3
    //   108: aload #5
    //   110: aload #4
    //   112: iconst_0
    //   113: iload_2
    //   114: invokevirtual write : ([BII)V
    //   117: goto -> 89
    //   120: aload #4
    //   122: astore_3
    //   123: aload #5
    //   125: invokevirtual toByteArray : ()[B
    //   128: astore #6
    //   130: aload_1
    //   131: invokeinterface consumeContent : ()V
    //   136: aload_0
    //   137: getfield c : Ldsq;
    //   140: aload #4
    //   142: invokevirtual a : ([B)V
    //   145: aload #5
    //   147: invokevirtual close : ()V
    //   150: aload #6
    //   152: areturn
    //   153: astore_1
    //   154: ldc 'Error occured when calling consumingContent'
    //   156: iconst_0
    //   157: anewarray java/lang/Object
    //   160: invokestatic a : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   163: goto -> 136
    //   166: astore_1
    //   167: ldc 'Error occured when calling consumingContent'
    //   169: iconst_0
    //   170: anewarray java/lang/Object
    //   173: invokestatic a : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   176: goto -> 58
    // Exception table:
    //   from	to	target	type
    //   26	34	50	finally
    //   42	50	50	finally
    //   52	58	166	java/io/IOException
    //   77	89	50	finally
    //   92	100	50	finally
    //   108	117	50	finally
    //   123	130	50	finally
    //   130	136	153	java/io/IOException
  }
  
  public dry a(dsa<?> paramdsa) {
    long l = SystemClock.elapsedRealtime();
    while (true) {
      IOException iOException1;
      IOException iOException3;
      byte[] arrayOfByte;
      Map<String, String> map1 = null;
      Map<?, ?> map = Collections.emptyMap();
      try {
        HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
        a((Map)hashMap, paramdsa.e());
        HttpResponse httpResponse = this.b.a(paramdsa, (Map)hashMap);
        Map<?, ?> map2 = map;
        try {
          byte[] arrayOfByte1;
          arrayOfByte = (byte[])httpResponse.getStatusLine();
          map2 = map;
          int i = arrayOfByte.getStatusCode();
          map2 = map;
          map1 = a(httpResponse.getAllHeaders());
          if (i == 304) {
            map2 = map1;
            dps dps = paramdsa.e();
            if (dps == null) {
              map2 = map1;
              return new dry(304, null, map1, true, SystemClock.elapsedRealtime() - l);
            } 
            map2 = map1;
            dps.g.putAll(map1);
            map2 = map1;
            return new dry(304, dps.a, dps.g, true, SystemClock.elapsedRealtime() - l);
          } 
          map2 = map1;
          if (httpResponse.getEntity() != null) {
            map2 = map1;
            byte[] arrayOfByte2 = a(httpResponse.getEntity());
            arrayOfByte1 = arrayOfByte2;
          } else {
            map2 = map1;
            byte[] arrayOfByte2 = new byte[0];
            arrayOfByte1 = arrayOfByte2;
          } 
          try {
            a(SystemClock.elapsedRealtime() - l, paramdsa, arrayOfByte1, (StatusLine)arrayOfByte);
            if (i < 200 || i > 299)
              throw new IOException(); 
            return new dry(i, arrayOfByte1, map1, false, SystemClock.elapsedRealtime() - l);
          } catch (IOException iOException) {
            HttpResponse httpResponse1 = httpResponse;
            iOException2 = iOException;
            byte[] arrayOfByte2 = arrayOfByte1;
            Map<String, String> map3 = map1;
          } 
        } catch (IOException iOException4) {
          arrayOfByte = null;
          iOException3 = iOException2;
          iOException2 = iOException4;
        } 
      } catch (SocketTimeoutException null) {
        a("socket", paramdsa, new dsk());
        continue;
      } catch (ConnectTimeoutException connectTimeoutException) {
        a("connection", paramdsa, new dsk());
        continue;
      } catch (MalformedURLException null) {
        throw new RuntimeException("Bad URL " + paramdsa.c(), iOException1);
      } catch (IOException iOException2) {
        arrayOfByte = null;
        iOException1 = iOException3;
        iOException3 = iOException4;
      } 
      if (iOException3 != null) {
        int i = iOException3.getStatusLine().getStatusCode();
        dsm.c("Unexpected response code %d for %s", new Object[] { Integer.valueOf(i), paramdsa.c() });
        if (arrayOfByte != null) {
          dry dry = new dry(i, arrayOfByte, (Map<String, String>)iOException1, false, SystemClock.elapsedRealtime() - l);
          if (i == 401 || i == 403) {
            a("auth", paramdsa, new dae(dry));
            continue;
          } 
          if (i >= 400 && i <= 499)
            throw new drq(dry); 
          if (i >= 500 && i <= 599)
            throw new dsj(dry); 
          throw new dsj(dry);
        } 
      } else {
        throw new drz(iOException2);
      } 
      a("network", paramdsa, new drx());
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */