package com.datami.smi.f;

import com.datami.smi.b.m;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.nio.channels.ServerSocketChannel;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class g {
  public static String a;
  
  public static final String b = "127.0.0.1";
  
  private static final int d = 5;
  
  private static final int e = 128;
  
  private static i l;
  
  private static String m;
  
  private static BlockingQueue n;
  
  private static long o;
  
  private static long p;
  
  private static long q;
  
  private static int r;
  
  private static volatile long s;
  
  private static long t;
  
  private static long u;
  
  private static final byte[] v = new byte[] { 
      93, -69, -32, 93, -66, -12, -7, 12, 3, -4, 
      -22, 88, -67, -4, -1, -10, 77, -84, 10, -14, 
      0, 15, -12, -9, 8, -10, -10, 3, 11, 9, 
      -27, 3, 28, -36, 11, 1, -12, -78, 24, -28, 
      -2, -6, 4, 45, -56, 4, 14, -15, 82, -88, 
      13, -12, 11, 71, -78, 23, -31, 13, 0, 33, 
      -56, 4, 14, -15, 82, -2, -6, 8, -3, 1, 
      -3, 1, -4, -45, -7, 8, 7, -11, 70, -78, 
      83, -74, -6, 10, -16, 12, -9, 7, -10, -7, 
      83, -86, 1, 17, -7, 1, 68, -68, -13, -7, 
      6, -7, 82, -74, -11, 82, -84, 10, -14, 0, 
      15, -12, -9, 8, -29, 6, 3, -19, 13, 68, 
      -84, 10, -14, 0, 15, -12, -9, 8, 77, -68, 
      -13, 0, -1, 8, 1, -18, 4, -4, 80, -52, 
      20, -3, -12, -5, 10, -7, 0, 77, -74, -6, 
      77, -68, -16, 12, 3, -20, 10, -6, 6, 70, 
      -84, 13, -14, -5, 16, -14, 81, -84, 3, 11, 
      -9, 5, -16, 57, 25, -34, 18, -18, -3, 10, 
      -6, 6, 70, -84, -2, 18, -18, -3, 14, 0, 
      -78, 26, -20, -12, 10, 3, -20, -88, 7, -4, 
      6, 5, -14, -2, 4, 11, 2, -20, 14, 0, 
      67, -66, -21, 0, 11, -78, 32, -26, -2, -15, 
      49, -56, 4, 14, -15, 82, -27, 3, 28, -36, 
      11, 1, -12, 27, -35, 2, -10, -2, 88, -84, 
      13, -14, -5, 16, -14, 81, -80, 0, 77, -81, 
      0, -4, -3, 83, -34, 18, -18, -3, 10, -6, 
      6, 70, -84, 10, -14, 0, 15, -12, -9, 8, 
      77, 1, -12, -1, 2, -6, 6, 70, -84, 13, 
      -16, 50, -53, 0, 11, 71, -78, 24, -28, -6, 
      18, -12, 23, -31, 16, -14, -6, 12, 0, -14, 
      -1, 12, 0, 33, -56, 4, 0, 13, 68, -52, 
      20, -3, -12, -5, 10, -7, 0, 77, -74, -6, 
      77, -84, 13, -16, -1, 10, -6, 6, 70, -17, 
      15, -85, 4, 78, -54, -31, 17, -7, 1, 68, 
      -46, -35, 0, 4, -12, 4, -4, 81 };
  
  private static int w = 69;
  
  ConcurrentLinkedQueue c;
  
  private m f;
  
  private ServerSocketChannel g;
  
  private a h;
  
  private int i = -1;
  
  private String j = "";
  
  private Thread[] k;
  
  static {
    a = a(v[191], v[233], v[140]);
    m = "";
    n = new ArrayBlockingQueue(1024);
    o = 0L;
    p = 0L;
    q = 0L;
    r = 7;
    s = 0L;
    t = 0L;
    u = 0L;
  }
  
  public g(m paramm) {
    a(paramm);
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 = 40 - paramInt2;
    paramInt1 = 117 - paramInt1;
    byte[] arrayOfByte2 = v;
    paramInt3 += 4;
    byte[] arrayOfByte1 = new byte[paramInt2];
    int k = paramInt2 - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt2 = paramInt3;
      j = paramInt1;
      paramInt3 = k;
      paramInt1 = bool;
    } else {
      paramInt2 = 0;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
    } 
    int j = -paramInt3 + j - 1;
    paramInt3 = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = j;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
  }
  
  public static void a(int paramInt) {
    try {
      if (l != null && !l.isInterrupted())
        n.put(new Integer(paramInt)); 
      return;
    } catch (InterruptedException interruptedException) {
      a(v[281], v[29], v[96]);
      return;
    } 
  }
  
  public static long e() {
    return s;
  }
  
  private int m() {
    if (this.g == null) {
      byte b;
      try {
        ServerSocket serverSocket = new ServerSocket(0);
        b = serverSocket.getLocalPort();
        serverSocket.close();
        try {
          this.g = ServerSocketChannel.open();
          this.g.socket().bind(new InetSocketAddress(a(v[96], -v[56], 60), b), 128);
          return b;
        } catch (Exception null) {}
      } catch (Exception exception) {
        b = -1;
      } 
      (new StringBuilder()).append(a(v[220] - 1, v[8], 134)).append(exception.getMessage());
      return b;
    } 
    return -1;
  }
  
  private static int n() {
    ServerSocket serverSocket = new ServerSocket(0);
    int j = serverSocket.getLocalPort();
    serverSocket.close();
    return j;
  }
  
  public final int a() {
    return this.i;
  }
  
  public final void a(m paramm) {
    this.f = paramm;
    if (this.h != null)
      this.h.a(paramm); 
    if (!m.equals(m.h()) || q != m.n() || u != 0L || t != m.o()) {
      m = m.h();
      q = m.n();
      u = 0L;
      t = m.o();
      a(v[20], v[32], w | 0x82);
    } 
    r = m.s();
    StringBuilder stringBuilder = (new StringBuilder()).append(a(v[176], v[35], 266)).append(s).append(a(-v[331], v[32], 210)).append(q).append(a(-v[331], v[233], v[216])).append(u).append(a(-v[331], v[32], v[220])).append(t);
    byte b1 = -v[331];
    byte b2 = v[216];
    stringBuilder.append(a(b1, b2, b2 | 0x99)).append(r);
  }
  
  public final int b() {
    if (this.k != null)
      throw new UnsupportedOperationException(a(37, v[46], w | 0x28)); 
    this.i = m();
    this.j = a(-v[175], v[28], w | 0x98) + this.i;
    return this.i;
  }
  
  public final void c() {
    byte b = 0;
    if (this.k != null)
      throw new UnsupportedOperationException(a(37, v[46], w | 0x28)); 
    (new StringBuilder()).append(a(-v[175], -v[56], 170)).append(this.j).append(a(-v[331], -v[175], v[43] - 1)).append(5).append(a(-v[331], v[216], 192));
    this.c = new ConcurrentLinkedQueue();
    this.h = new a(this.c, this.f, this.g);
    this.c.add(this.h);
    this.k = new Thread[5];
    int j;
    for (j = 0; j < this.k.length; j++)
      this.k[j] = new k(this.c); 
    Thread[] arrayOfThread = this.k;
    int k = arrayOfThread.length;
    for (j = b; j < k; j++)
      arrayOfThread[j].start(); 
    i i1 = new i(this, null);
    l = i1;
    i1.start();
    StringBuilder stringBuilder = (new StringBuilder()).append(this.j);
    j = -v[331];
    b = v[216];
    stringBuilder.append(a(j, b, b | 0x92));
  }
  
  public final void d() {
    if (this.k == null) {
      (new StringBuilder()).append(this.j).append(a(-v[331], v[176], v[14]));
      return;
    } 
    (new StringBuilder()).append(a(-v[175], -v[10], 249)).append(this.j);
    try {
      a(0);
    } catch (Exception exception) {
      StringBuilder stringBuilder = new StringBuilder();
      byte b1 = v[220];
      byte b2 = v[20];
      stringBuilder.append(a(b1 - 1, b2, b2 | 0x130)).append(exception.getMessage());
    } 
    this.k = null;
    this.c = null;
    l = null;
    (new StringBuilder()).append(this.j).append(a(-v[331], v[32], 98));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */