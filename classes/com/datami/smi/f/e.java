package com.datami.smi.f;

import android.util.Base64;
import android.util.Log;
import com.datami.smi.SmiIntentService;
import com.datami.smi.a.d;
import com.datami.smi.b.d;
import com.datami.smi.b.m;
import com.datami.smi.c.t;
import com.datami.smi.d.a;
import com.datami.smi.d.c;
import com.datami.smi.d.d;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;

public class e implements d {
  public static String a;
  
  public static final int b = 1412;
  
  public static final int c = 391;
  
  public static final int d = 136;
  
  public static final int e = 68;
  
  private static final String t = "proxytfd.mobile.att.net";
  
  private static final int u = 8080;
  
  private static final byte[] v = new byte[] { 
      53, -79, 71, 107, 6, -3, -25, -3, -6, -26, 
      -7, 45, -42, -51, -6, -7, 2, -5, -24, 77, 
      -89, 6, -19, -11, 9, -21, -8, 77, -90, -8, 
      -5, 49, 19, -81, -16, -3, -6, 71, -83, 0, 
      -16, 0, -20, 5, 65, -33, 19, -5, -7, 9, 
      -42, -51, -6, -7, 2, -5, -24, 8, -6, -27, 
      -6, 5, 65, -87, 8, -9, -15, -1, -22, 77, 
      -73, -20, 4, -28, 82, -83, 0, -16, 71, -33, 
      19, -12, -15, 14, -18, -4, -2, 61, -72, -27, 
      -6, 5, 52, -74, 8, -9, -15, -1, -22, 77, 
      -89, 6, -21, -4, -6, -6, -12, 7, -48, 4, 
      -22, -14, 2, -11, 4, -12, 0, 64, -90, 3, 
      -5, -14, 6, -26, -8, -4, 6, 7, -24, -51, 
      -13, 2, 1, 61, -85, -8, -12, 77, -74, -19, 
      -6, -7, 2, -5, -24, 77, -91, -2, 72, -73, 
      -30, -2, 8, -21, -54, 6, -3, -26, 4, -12, 
      0, 64, -90, 7, -20, -11, 10, -20, 75, -90, 
      -3, 5, -15, -1, -22, 77, -91, -2, 72, -12, 
      -85, 76, -33, 19, -12, -70, -26, -5, -9, -11, 
      -20, 10, -6, 61, -42, -16, 0, -3, -24, -20, 
      21, -5, -9, -12, -4, -27, -6, 5, 52, -74, 
      8, -9, -15, -1, -22, 77, -80, -12, -2, -18, 
      4, 1, -18, 69, -89, 6, -21, -4, -6, -6, 
      -12, 7, 62, -83, 0, -16, 45, 19, -90, 3, 
      -5, -14, 6, -26, -8, -4, 6, 62, -83, 0, 
      -16, 0, -20, 5, 65, -33, 19, -19, -6, -7, 
      2, -5, -24, 45, -12, -85, 50, 14, -70, 61, 
      -47, -19, -7, -3, 26, -9, -4, -10, 29, -4, 
      -69, -46, -11, -8, 51, 14, -85, 50, 14, -70, 
      80, -4, -85, 36, -46, -25, 50, -27, -41, -7, 
      -9, -21, -7, 50, -70, 13, -21, 95, -4, -10, 
      -4, -51, -13, 2, 1, 61, -85, -8, -12, 77, 
      -87, -9, -4, 5, -9, -21, -7, 76, -74, -19, 
      -6, -7, 2, -5, -24, 4, -13, -6, 71, -77, 
      -16, -10, 75, -74, -16, -4, -3, -16, -13, 77, 
      -15, -4, -70, 52, 2, -72, -20, 3, 61, -90, 
      7, -20, -11, 10, -20, 67, -4, -70, 33, 8, 
      -24, 18, -70, 52, -9, -4, -16, -8, -2, 7, 
      -5, 47, -70, -9, 6, -14, -10, 0, 48, -58, 
      -26, -7, 63, -71, 2, -22, -5, -7, 9, -54, 
      -3, -16, -16, -3, 5, 0, -12, 0, 64, -91, 
      8, -21, -8, 77, -91, 4, -11, 1, 62, -76, 
      -26, 1, 0, -16, 6, -6, 61, -90, -3, 72, 
      -80, -12, -2, -18, 4, 1, -26, 4, -12, 0, 
      64, -85, 2, -25, 80, -87, 0, -12, 0, 64, 
      -91, 8, -21, -8, -14, -27, -6, 5, 52, -74, 
      8, -9, -15, -1, -22, 77, -89, 6, -21, -4, 
      -6, -6, -12, 7, 36, 19, -51, -13, 2, 1, 
      61, -85, -8, -12, 77, -74, -16, -10, -11, 7, 
      62, -74, -12, 0, -20, -7, 2, -14, 69, -87, 
      -9, -4, -8, 4, -20, -1, -20, 82, -77, -16, 
      -10, 75, -90, 1, -16, 77, -27, -6, 5, 65, 
      -87, 8, -9, -15, -1, -22, 77, -90, 7, -16, 
      -13, 77, -90, -9, 11, -7, -9, -21, -7, 6, 
      -22, 2, -7, -20, 82, -77, -16, -10, 75, -74, 
      -16, -4, -3, -16, -13, 77, -90, -3, 5, -15, 
      -1, -22, 51, 19, -30, -2, 8, -21, 76, -89, 
      6, -3, -10, 61, -77, -19, -4, -5, 70, -90, 
      7, -20, -11, 10, -20, 75, -90, -3, 5, -15, 
      -1, -22, 51, 19, -27, -6, 5, 52, -74, -2, 
      -16, 64, -76, 6, -21, -4, 47, 19, -58, 14, 
      -9, -18, -11, 4, -13, -6, 71, -33, 19, -8, 
      72, -72, -27, -6, 5, 52, -74, 8, -9, -15, 
      -1, -22, 77, -89, 6, -21, -4, -6, -6, -12, 
      7, -6, 7, 18, -18, 6, -3, -10, -12, -12, 
      0, 64, -7, -40, -26, -7, 45, -42, -51, -6, 
      -7, 2, -5, -24, 77, -89, 6, -21, -4, -6, 
      -6, -12, 7, 48, -7, -7, -54, 6, -3, -26, 
      8, -6, 61, -90, 7, -20, -11, 10, -20, 75, 
      -90, -3, 5, -15, -1, -22, 77, -91, -2, 72, 
      -12, -85, 76, -33, 19, -12, -70, 3, -5, -14, 
      6, -26, -8, -4, 6, 62, -33, 19, -58, 14, 
      -9, -18, -11, 4, -13, -6, 71, -80, -12, 71, 
      -90, 7, -16, 3, -12, -12, 0, 64, -40, -26, 
      -7, 45, -42, -51, -6, -7, 2, -5, -24, 77, 
      -94, 7, -18, 5, 65, -90, 1, -16, 74, -4, 
      -34, -15, -10, 0, -6, 61, -91, -2, 72, -74, 
      -19, -6, -7, 2, -5, -24, 77, -93, 6, 1, 
      58, -7, -40, -26, -7, 45, -12, -85, 50, 14, 
      -70, 5, -76, -20, -7, -2, -13, 5, 38, 19, 
      -54, 6, -3, -26, 8, -6, 61, -90, -3, 5, 
      -15, -1, -22, 77, -74, -12, 0, -20, -7, 2, 
      -20, -1, 69, -91, -2, 72, -7, 8, -15, -10, 
      -12, 4, -19, -5, -10, -3, 0, -22, 8, 62, 
      -72, -27, -6, 5, 52, -74, 8, -9, -15, -1, 
      -22, 77, -89, 6, -21, -4, -6, -6, -12, 7, 
      -44, 0, -20, -7, 2, -14, 69, -94, 15, -25, 
      76, -74, -16, -10, -11, 7, -6, 61, -73, -30, 
      82, -74, -16, -4, -3, -16, -13, 77, -15, -4, 
      -70, 52, 2, -86, -10, 75, -90, 7, -20, -11, 
      10, -20, 67, -4, -70, 33, 8, -24, 18, -70, 
      52, -26, -7, 45, -42, -51, -6, -7, 2, -5, 
      -24, 77, -89, 6, -19, -11, 9, -21, -8, 77, 
      -80, -17, 76, -90, 7, -16, -13, 77, -90, -9, 
      11, -7, -9, -21, -7, 6, -22, 2, -7, -20 };
  
  private static int w = 116;
  
  private final b f = new b(true);
  
  private final b g = new b(false);
  
  private final SocketChannel h;
  
  private m i = null;
  
  private Selector j;
  
  private SocketChannel k;
  
  private int l = -1;
  
  private int m = -1;
  
  private int n = -1;
  
  private String o = "";
  
  private long p = 0L;
  
  private long q = 0L;
  
  private long r = 0L;
  
  private boolean s = false;
  
  static {
    a = a(v[72], -v[6], 397) + e.class.getSimpleName();
  }
  
  public e(SocketChannel paramSocketChannel, m paramm) {
    d.a().b();
    this.h = paramSocketChannel;
    this.l = paramSocketChannel.socket().getPort();
    this.i = paramm;
    if (!paramm.p()) {
      this.o = m.h() + a(v[39], v[578], v[19]) + m.c();
    } else {
      this.o = m.c();
    } 
    this.p = System.currentTimeMillis();
  }
  
  public static f a(SocketChannel paramSocketChannel, m paramm, boolean paramBoolean) {
    String str1;
    short s1;
    short s2;
    byte b2;
    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(paramSocketChannel.socket().getOutputStream());
    byte b1 = d.g;
    String str2 = m.h();
    int i = m.I();
    boolean bool = false;
    if (paramBoolean)
      bool = true; 
    long l = System.currentTimeMillis();
    if (i > 0) {
      b1 = d.h;
      l = System.currentTimeMillis() - paramm.i();
      byte b5 = v[72];
      String str = Base64.encodeToString(str2.getBytes(a(b5, b5 | 0x1B, w | 0x209)), 0);
      s1 = (short)str.length();
      str1 = str + l + com.datami.smi.c.e.b;
      if (2 == i) {
        a(v[32], v[381], 104);
        str1 = t.a(m.h() + l + com.datami.smi.c.e.b);
      } 
      b2 = (short)str1.length();
      s2 = (short)(s1 + 5 + 8 + b2);
      str2 = str1;
      str1 = str;
    } else {
      byte b5 = v[119];
      byte b6 = v[39];
      String str = a(b5, b6, b6 | 0x337);
      b2 = 4;
      s1 = (short)str2.length();
      s2 = (short)(s1 + 4 + 4);
      str1 = str2;
      str2 = str;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    byte b3 = v[534];
    byte b4 = v[132];
    stringBuilder.append(a(b3, b4, b4 | 0x2BE)).append(str2).append(a(v[32], w & 0x1DF, 234)).append(b2);
    stringBuilder = new StringBuilder();
    b3 = -v[68];
    b4 = v[32];
    stringBuilder.append(a(b3, b4, b4 | 0x24)).append(s2);
    ByteBuffer byteBuffer = ByteBuffer.allocate(s2 + 3);
    byteBuffer.put(b1);
    byteBuffer.putShort(s2);
    if (i > 0)
      byteBuffer.put(bool); 
    byteBuffer.putShort(s1);
    byteBuffer.put(str1.getBytes());
    if (i > 0)
      byteBuffer.putLong(l); 
    byteBuffer.putShort(b2);
    byteBuffer.put(str2.getBytes());
    bufferedOutputStream.write(byteBuffer.array());
    bufferedOutputStream.flush();
    a(v[388], v[32], 512);
    return paramBoolean ? b(paramSocketChannel) : f.b;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt3 + 4;
    byte[] arrayOfByte2 = v;
    paramInt3 = 116 - paramInt2;
    int j = paramInt1 + 1;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt1 = i;
      i = j;
    } else {
      paramInt1 = i;
      paramInt2 = paramInt3;
      paramInt3 = 0;
      byte b2 = (byte)paramInt2;
      int n = paramInt3 + 1;
      arrayOfByte1[paramInt3] = b2;
    } 
    paramInt1++;
    i = -paramInt3 + i - 7;
    paramInt3 = paramInt2;
    paramInt2 = i;
    byte b1 = (byte)paramInt2;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt3] = b1;
  }
  
  public static SocketChannel a(String paramString, int paramInt, boolean paramBoolean) {
    StringBuilder stringBuilder;
    String.format(a(w & 0xA8, v[31], 150), new Object[] { paramString, Integer.valueOf(paramInt) });
    if (paramBoolean) {
      SocketChannel socketChannel2 = SocketChannel.open(new InetSocketAddress(a(-v[68], v[72], 370), 8080));
      SocketChannel socketChannel1 = socketChannel2;
      if (!a(socketChannel2.socket(), paramString, paramInt))
        throw new Exception(String.format(a(31, -v[281], w | 0x280), new Object[] { a(-v[68], v[72], 370), Integer.valueOf(8080) })); 
    } else {
      try {
        SocketChannel socketChannel = SocketChannel.open(new InetSocketAddress(paramString, paramInt));
        String.format(a(31, v[31], 672), new Object[] { paramString, Integer.valueOf(paramInt) });
        return socketChannel;
      } catch (Error error) {
        Properties properties = new Properties();
        String str = a(v[43], v[16], v[39]);
        if (error.getMessage() != null) {
          String str1 = error.getMessage();
          properties.put(str, str1);
          byte b3 = v[16];
          byte b4 = v[132];
          properties.put(a(b3, b4, b4 | 0x7A), a.a(c.c));
          m.b(a.a(d.f), properties);
          StringBuilder stringBuilder1 = new StringBuilder();
          b3 = -v[42];
          b4 = v[31];
          paramString = stringBuilder1.append(a(b3, b4, b4 | 0x4C)).append(paramString).append(a(v[39], v[780], 104)).append(paramInt).toString();
          Log.i(a, paramString);
          throw new Exception(error.getMessage());
        } 
        Class<?> clazz = error.getClass();
        properties.put(str, clazz);
        byte b1 = v[16];
        byte b2 = v[132];
        properties.put(a(b1, b2, b2 | 0x7A), a.a(c.c));
        m.b(a.a(d.f), properties);
        stringBuilder = new StringBuilder();
        b1 = -v[42];
        b2 = v[31];
        paramString = stringBuilder.append(a(b1, b2, b2 | 0x4C)).append(paramString).append(a(v[39], v[780], 104)).append(paramInt).toString();
        Log.i(a, paramString);
        throw new Exception(error.getMessage());
      } catch (Exception exception) {
        exception.getMessage();
        throw exception;
      } 
    } 
    String.format(a(31, v[31], 672), new Object[] { exception, Integer.valueOf(paramInt) });
    return (SocketChannel)stringBuilder;
  }
  
  private static void a(String paramString) {
    try {
      m.a((new JSONObject(paramString)).getString(a(v[132], v[534], 450)));
      return;
    } catch (JSONException jSONException) {
      (new StringBuilder()).append(a(v[534], v[381], 604)).append(jSONException.getMessage());
      m.a("");
      return;
    } 
  }
  
  private static void a(SocketChannel paramSocketChannel) {
    if (paramSocketChannel != null) {
      int i = paramSocketChannel.socket().getPort();
      try {
        paramSocketChannel.close();
        return;
      } catch (IOException iOException) {
        (new StringBuilder()).append(a(-v[653], v[31], 472)).append(i);
        return;
      } 
    } 
  }
  
  private static boolean a(Socket paramSocket, String paramString, int paramInt) {
    boolean bool = false;
    byte b1 = -v[154];
    byte b2 = v[31];
    String str = String.format(a(b1, b2, b2 | 0xCC), new Object[] { paramString, Integer.valueOf(paramInt), paramString, Integer.valueOf(paramInt) });
    (new StringBuilder()).append(a(-v[18], v[284], v[43])).append(str);
    try {
      BufferedInputStream bufferedInputStream = new BufferedInputStream(paramSocket.getInputStream());
      BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(paramSocket.getOutputStream());
      bufferedOutputStream.write(str.getBytes());
      bufferedOutputStream.flush();
      a(v[798] + 1, v[284], 907);
      byte[] arrayOfByte = new byte[4096];
      a(31, v[16], 641);
      paramInt = bufferedInputStream.read(arrayOfByte);
      (new StringBuilder()).append(a(-v[150], v[371], 560)).append(paramInt);
      String str1 = new String(arrayOfByte);
      if (!str1.contains(a(v[43], v[365] - 1, 392))) {
        boolean bool1 = str1.contains(a(-v[81], v[365] - 1, 43));
        return bool1 ? true : bool;
      } 
      return true;
    } catch (IOException iOException) {
      (new StringBuilder()).append(a(-v[12], v[381], 714)).append(paramSocket.getPort()).append(a(v[24], v[148], 787)).append(iOException.getMessage());
      return false;
    } 
  }
  
  private static f b(SocketChannel paramSocketChannel) {
    f f2 = f.b;
    ByteBuffer byteBuffer = ByteBuffer.allocate(3);
    int j = paramSocketChannel.read(byteBuffer);
    (new StringBuilder()).append(a(v[368], v[32], 201)).append(j).append(a(v[43], w & 0x1DF, 145));
    if (j == -1) {
      String str = a;
      byte b1 = -v[68];
      j = v[4];
      Log.i(str, a(b1, j, j | 0x261));
      return f.a;
    } 
    if (j <= 0) {
      Log.i(a, a(-v[150], v[534], 826));
      return f.a;
    } 
    int i = byteBuffer.get(0) & 0xFF;
    Log.i(a, a(v[83], v[32], 590) + i);
    if (3 == j) {
      j = byteBuffer.getShort(1);
      (new StringBuilder()).append(a(v[200], v[32], 451)).append(i).append(a(v[83], w & 0x1DF, v[278])).append(j);
      if (j > 0) {
        byteBuffer = ByteBuffer.allocate(j);
        paramSocketChannel.read(byteBuffer);
        a(new String(byteBuffer.array()));
      } 
    } 
    if (i == d.f) {
      String str = a;
      i = v[32];
      j = -v[760];
      Log.i(str, a(i, j, j | 0x94));
      if (m.S())
        SmiIntentService.sendClearCacheEventIntent(); 
      return f.c;
    } 
    f f1 = f2;
    if (i != d.e) {
      Log.i(a, a(-v[59], v[534], v[19]));
      return f.a;
    } 
    return f1;
  }
  
  private void b() {
    this.g.a(this.h);
    if (this.g.a())
      f(); 
  }
  
  private void c() {
    if (this.f.a(this.k) > 0) {
      long l = System.currentTimeMillis();
      if (this.r == 0L && this.q > 0L)
        d.a().a(l - this.q); 
      this.r = l;
    } 
    if (this.f.a())
      f(); 
  }
  
  private void d() {
    this.f.b(this.h);
    if (this.f.b())
      f(); 
  }
  
  private void e() {
    this.g.b(this.k);
    if (this.g.b())
      f(); 
  }
  
  private void f() {
    byte b1;
    boolean bool = true;
    if (this.g.b()) {
      b1 = 1;
    } else {
      b1 = 0;
    } 
    int i = b1;
    if (this.f.a())
      i = b1 | 0x4; 
    this.h.register(this.j, i, this);
    if (this.f.b()) {
      b1 = bool;
    } else {
      b1 = 0;
    } 
    i = b1;
    if (this.g.a())
      i = b1 | 0x4; 
    this.k.register(this.j, i, this);
  }
  
  public final void a() {
    if (this.s)
      g.a(68); 
    a(this.h);
    a(this.k);
  }
  
  public final void a(SelectionKey paramSelectionKey) {
    try {
      if (paramSelectionKey.channel() == this.h) {
        if (paramSelectionKey.isValid() && paramSelectionKey.isReadable()) {
          this.g.a(this.h);
          if (this.g.a())
            f(); 
        } 
        if (paramSelectionKey.isValid() && paramSelectionKey.isWritable()) {
          this.f.b(this.h);
          if (this.f.b())
            f(); 
        } 
      } 
      if (paramSelectionKey.channel() == this.k) {
        if (paramSelectionKey.isValid() && paramSelectionKey.isReadable()) {
          if (this.f.a(this.k) > 0) {
            long l = System.currentTimeMillis();
            if (this.r == 0L && this.q > 0L)
              d.a().a(l - this.q); 
            this.r = l;
          } 
          if (this.f.a())
            f(); 
        } 
        if (paramSelectionKey.isValid() && paramSelectionKey.isWritable()) {
          this.g.b(this.k);
          if (this.g.b())
            f(); 
        } 
      } 
      return;
    } catch (ClosedChannelException closedChannelException) {
      if (this.s)
        g.a(68); 
      a(this.h);
      a(this.k);
      String.format(a(v[284], v[31], 856), new Object[] { Integer.valueOf(this.l), Integer.valueOf(this.n), Integer.valueOf(this.m) });
      return;
    } catch (IOException iOException) {
      if (this.s)
        g.a(68); 
      a(this.h);
      a(this.k);
      byte b1 = v[392];
      byte b2 = v[31];
      String.format(a(b1, b2, b2 | 0x102), new Object[] { Integer.valueOf(this.l), Integer.valueOf(this.n), Integer.valueOf(this.m) });
      return;
    } 
  }
  
  public final void a(Selector paramSelector) {
    this.j = paramSelector;
    try {
      if (!this.i.p())
        m.t(); 
      this.h.configureBlocking(false);
      long l = System.currentTimeMillis();
      this.k = a(this.o, this.i.d(), this.i.D());
      this.q = System.currentTimeMillis();
      d.a().b(this.q - l);
      this.m = this.k.socket().getPort();
      this.n = this.k.socket().getLocalPort();
      if (!this.i.p()) {
        if (!this.i.a() && System.currentTimeMillis() > m.k) {
          a(v[31], v[72], 401);
          SmiIntentService.sendGwPingTestIntent(this.i);
          m.a(this.i.b());
        } 
        a(this.k, this.i, false);
      } 
      this.k.configureBlocking(false);
      (new StringBuilder()).append(a(-v[59], v[31], 796)).append(this.o).append(a(v[39], v[780], 104)).append(this.i.d());
      f();
      this.s = true;
      g.a(391);
      return;
    } catch (Exception exception) {
      String str1;
      Class<?> clazz;
      Properties properties = new Properties();
      String str2 = a(v[43], v[16], v[39]);
      if (exception.getMessage() != null) {
        str1 = exception.getMessage();
      } else {
        clazz = str1.getClass();
      } 
      properties.put(str2, clazz);
      byte b1 = v[16];
      byte b2 = v[132];
      properties.put(a(b1, b2, b2 | 0x7A), a.a(c.c));
      m.b(a.a(d.f), properties);
      if (this.s)
        g.a(68); 
      a(this.h);
      a(this.k);
      StringBuilder stringBuilder = new StringBuilder();
      b1 = -v[42];
      b2 = v[31];
      stringBuilder.append(a(b1, b2, b2 | 0x4C)).append(this.o).append(a(v[39], v[780], 104)).append(this.i.d());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */