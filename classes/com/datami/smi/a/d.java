package com.datami.smi.a;

import com.datami.smi.d.a;
import com.datami.smi.d.c;
import java.util.HashMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public class d extends Thread {
  private static volatile d a;
  
  private static Integer b;
  
  private static Integer c;
  
  private static String d;
  
  private static int e;
  
  private static final byte[] u = new byte[] { 
      33, -48, -27, -100, 20, -14, 12, -10, 6, -6, 
      -70, 84, -14, 8, -74, 84, 2, -18, 20, 0, 
      -82, 85, -11, 11, -12, -3, 4, -3, 6, -27, 
      20, 15, -2, -27, 22, 5, -7, -14, -16, 19, 
      16, 2, -4, -27, 22, 5, -7, -68, -4, -11, 
      -2, 20, -14, 0, -67, 66, 22, -14, -31, 27, 
      20, -14, 19, -21, 25, -53, 45, 0, 1, -26, 
      19, 16, 2, -4, -79, 80, -1, -50, -25, 10, 
      10, -3, -11, -11, 24, -37, 20, 15, -2, -27, 
      22, 5, -7, -11, 24, -48, 17, -19, 45, 0, 
      1, -26, 19, 16, 2, -4, 3, -2, -11, 3, 
      15, 1, -9, 6, -6, -70, 84, -14, 8, -74, 
      84, 2, -18, 20, 0, -82, 78, 7, -11, -44, 
      -25, 45, 7, -8, -7, 11, -70, 78, -83, 81, 
      3, -2, -11, 3, 15, 1, -82, 86, -1, -17, 
      7, -1, -33, 45, 7, -6, 7, -34, 37, -15, 
      17, -15, -67, -3, 6, -38, 17, -19, 45, 0, 
      1, -26, 19, 16, 2, -4, 22, -14, -20, 20, 
      15, -2, -27, 22, 5, -7, -2, -16, 13, -26, 
      20, 15, -2, -27, 22, 5, -7, 1, 3, 11, 
      -3, -22, 20, 15, -2, -27, 22, 5, -7, -68, 
      -13, 18, -14, -16, 19, 16, 2, -4, -27, 22, 
      5, -7, 8, -7, -41, 45, 0, 1, -8, -1, 
      18, -10, 7, 0, 6, -4, -11, -2, 20, -14, 
      0, -67, 66, 22, -14, -32, 36, 10, 2, 2, 
      -33, 20, 15, -2, 0, 0, 6, -13, -16, 22, 
      5, -7, -68, 80, -1, -50, -25, -2, -16, 13, 
      -26, 20, 15, -2, -27, 22, 5, -7, -68, -2, 
      -17, 20, 15, -2, -27, 22, 5, -7, -68, 22, 
      -14, -31, 17, -19, 45, 0, 1, -26, 19, 16, 
      2, -4, -2, -17, 20, 15, -2, -27, 22, 5, 
      -7, -4, -11, -2, 20, -14, 0, -67, 66, 22, 
      -14, -20, 20, 15, -2, 0, 0, 6, -13, -16, 
      22, 5, -7, -68, 80, -1, -50, -25, 45, 7, 
      -8, -7, 11, -70, 78, -83, 66, 4, 1, -67, 
      79, -8, 19, -86, 80, -1, -76, 71, 10, 4, 
      -81, 1, 3, 11, -3, -22, 20, 15, -2, -27, 
      22, 5, -7 };
  
  private static int v = 58;
  
  private BlockingQueue f = new ArrayBlockingQueue(e);
  
  private long g = 0L;
  
  private int h = 0;
  
  private long i = 0L;
  
  private long j = Long.MAX_VALUE;
  
  private long k = 0L;
  
  private long l = Long.MAX_VALUE;
  
  private long m = 0L;
  
  private long n = 0L;
  
  private long o = Long.MAX_VALUE;
  
  private long p = 0L;
  
  private long q = 0L;
  
  private long r = 0L;
  
  private long s = 0L;
  
  private long t = 0L;
  
  static {
    a = null;
    b = new Integer(0);
    c = new Integer(0);
    StringBuilder stringBuilder = new StringBuilder();
    byte b1 = u[84];
    byte b2 = u[16];
    d = stringBuilder.append(a(b1, b2, b2 | 0x118)).append(d.class.getSimpleName()).toString();
    e = 2048;
  }
  
  public static d a() {
    d d1 = a;
    if (d1 == null)
      synchronized (b) {
        d d2 = a;
        d1 = d2;
        if (d2 == null) {
          d1 = new d();
          d1.start();
          a = d1;
        } 
        return d1;
      }  
    return d1;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte b;
    byte[] arrayOfByte1 = u;
    paramInt3 = 361 - paramInt3;
    int j = paramInt2 + 3;
    paramInt2 = paramInt1 + 67;
    byte[] arrayOfByte2 = new byte[j];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      b = paramInt3;
      i = paramInt3;
      paramInt3 = paramInt2;
    } else {
      b = 0;
      i = paramInt3;
      paramInt1 = paramInt2;
      paramInt3 = b;
      paramInt2 = i;
      arrayOfByte2[paramInt3] = (byte)paramInt1;
    } 
    paramInt2 = b + 1;
    int i = paramInt3 + i - 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte2[paramInt3] = (byte)paramInt1;
  }
  
  private void a(f paramf) {
    null = new StringBuilder();
    byte b = u[66];
    int i = u[84] - 1;
    null.append(a(b, i, i | 0xE8)).append(paramf.a);
    switch (e.a[paramf.a.ordinal()]) {
      default:
        return;
      case 1:
        synchronized (c) {
          this.h++;
          return;
        } 
      case 2:
        g(paramf.b);
        return;
      case 3:
        h(paramf.b);
        return;
      case 4:
        i(paramf.b);
        return;
      case 5:
        j(paramf.b);
        return;
      case 6:
        k(paramf.b);
        return;
      case 7:
        l(paramf.b);
        return;
      case 8:
        break;
    } 
    m(paramf.b);
  }
  
  private void b(f paramf) {
    if (e == this.f.size())
      this.f.poll(); 
    try {
      this.f.put(paramf);
      return;
    } catch (InterruptedException interruptedException) {
      StringBuilder stringBuilder = new StringBuilder();
      byte b1 = u[19];
      byte b2 = -u[63];
      stringBuilder.append(a(b1, b2, b2 + 2)).append(paramf.a);
      return;
    } 
  }
  
  private void d() {
    this.h = 0;
    this.i = 0L;
    this.g = 0L;
    this.j = Long.MAX_VALUE;
    this.k = 0L;
    this.l = Long.MAX_VALUE;
    this.m = 0L;
    this.q = 0L;
    this.r = 0L;
    this.s = 0L;
    this.t = 0L;
  }
  
  private void g(long paramLong) {
    synchronized (c) {
      if (paramLong < this.o)
        this.o = paramLong; 
      if (paramLong > this.p)
        this.p = paramLong; 
      this.n += paramLong;
      if (this.n > paramLong)
        this.n /= 2L; 
      (new StringBuilder()).append(a(-u[77], 30, 126)).append(this.n);
      return;
    } 
  }
  
  private void h(long paramLong) {
    synchronized (c) {
      if (paramLong < this.j)
        this.j = paramLong; 
      if (paramLong > this.k)
        this.k = paramLong; 
      this.i += paramLong;
      if (this.i > paramLong)
        this.i /= 2L; 
      (new StringBuilder()).append(a(-u[77], u[64], -u[77])).append(this.i);
      return;
    } 
  }
  
  private void i(long paramLong) {
    synchronized (c) {
      if (paramLong < this.l)
        this.l = paramLong; 
      if (paramLong > this.m)
        this.m = paramLong; 
      this.g += paramLong;
      if (this.g > paramLong)
        this.g /= 2L; 
      (new StringBuilder()).append(a(-u[77], v >>> 1, 313)).append(this.g);
      return;
    } 
  }
  
  private void j(long paramLong) {
    synchronized (c) {
      this.q = paramLong;
      (new StringBuilder()).append(a(u[246], u[13], -u[20])).append(this.q);
      return;
    } 
  }
  
  private void k(long paramLong) {
    synchronized (c) {
      this.r = paramLong;
      StringBuilder stringBuilder = new StringBuilder();
      byte b1 = -u[77];
      byte b2 = u[79];
      stringBuilder.append(a(b1, b2, b2 | 0x54)).append(this.r);
      return;
    } 
  }
  
  private void l(long paramLong) {
    synchronized (c) {
      this.s = paramLong;
      (new StringBuilder()).append(a(30, u[23], 164)).append(this.s);
      return;
    } 
  }
  
  private void m(long paramLong) {
    synchronized (c) {
      this.t = paramLong;
      (new StringBuilder()).append(a(-u[1], -u[112], 324)).append(this.t);
      return;
    } 
  }
  
  private void n(long paramLong) {
    if (paramLong < 0L)
      return; 
    b(new f(this, g.b, paramLong, null));
  }
  
  public final void a(long paramLong) {
    if (paramLong < 0L)
      return; 
    b(new f(this, g.c, paramLong, null));
  }
  
  public final void b() {
    b(new f(this, g.a, 1L, null));
  }
  
  public final void b(long paramLong) {
    if (paramLong < 0L)
      return; 
    b(new f(this, g.d, paramLong, null));
  }
  
  public final HashMap c() {
    null = new HashMap<Object, Object>();
    byte b1 = -u[1];
    byte b2 = u[19];
    null.put(a(b1, b2, b2 | 0x97), a.a(c.a));
    synchronized (c) {
      if (this.i > 0L) {
        b1 = u[13];
        null.put(a(30, b1, b1 | 0xB1), Long.toString(this.i));
      } 
      if (this.j > 0L && this.j < Long.MAX_VALUE) {
        int i = v;
        b2 = u[13];
        null.put(a(i & 0xEF, b2, b2 | 0x146), Long.toString(this.j));
      } 
      if (this.k > 0L)
        null.put(a(v & 0xEF, u[13], 278), Long.toString(this.k)); 
      if (this.h > 0) {
        b1 = u[23];
        null.put(a(43, b1, b1 | 0x80), Integer.toString(this.h));
      } 
      if (this.g > 0L)
        null.put(a(30, u[23], u[357] + 1), Long.toString(this.g)); 
      if (this.l > 0L && this.l < Long.MAX_VALUE)
        null.put(a(v & 0xEF, u[23], 198), Long.toString(this.l)); 
      if (this.m > 0L)
        null.put(a(v & 0xEF, u[23], 268), Long.toString(this.m)); 
      if (this.q > 0L)
        null.put(a(u[246], u[127], v + 1), Long.toString(this.q)); 
      if (this.r > 0L) {
        b1 = -u[77];
        b2 = -u[112];
        null.put(a(b1, b2, b2 | 0xA6), Long.toString(this.r));
      } 
      if (this.s > 0L)
        null.put(a(30, u[79], u[19]), Long.toString(this.s)); 
      if (this.t > 0L)
        null.put(a(-u[1], u[13], 149), Long.toString(this.t)); 
      this.h = 0;
      this.i = 0L;
      this.g = 0L;
      this.j = Long.MAX_VALUE;
      this.k = 0L;
      this.l = Long.MAX_VALUE;
      this.m = 0L;
      this.q = 0L;
      this.r = 0L;
      this.s = 0L;
      this.t = 0L;
      return null;
    } 
  }
  
  public final void c(long paramLong) {
    b(new f(this, g.e, paramLong, null));
  }
  
  public final void d(long paramLong) {
    b(new f(this, g.f, paramLong, null));
  }
  
  public final void e(long paramLong) {
    b(new f(this, g.g, paramLong, null));
  }
  
  public final void f(long paramLong) {
    b(new f(this, g.h, paramLong, null));
  }
  
  public void run() {
    while (true) {
      try {
        label27: while (true) {
          Integer integer;
          f f = this.f.take();
          StringBuilder stringBuilder = new StringBuilder();
          byte b = u[66];
          int i = u[84] - 1;
          stringBuilder.append(a(b, i, i | 0xE8)).append(f.a);
          switch (e.a[f.a.ordinal()]) {
            case 1:
              integer = c;
              /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Integer}, name=null} */
              try {
                this.h++;
                /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Integer}, name=null} */
              } finally {}
              continue label27;
            case 2:
              g(((f)integer).b);
              continue label27;
            case 3:
              h(((f)integer).b);
              continue label27;
            case 4:
              i(((f)integer).b);
              continue label27;
            case 5:
              j(((f)integer).b);
              continue label27;
            case 6:
              k(((f)integer).b);
              continue label27;
            case 7:
              l(((f)integer).b);
              continue label27;
            case 8:
              m(((f)integer).b);
          } 
        } 
      } catch (InterruptedException interruptedException) {
        byte b = u[19];
        a(b, b | 0x1E, 230);
        a(-u[157], -u[63], 357);
        return;
      } 
      break;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */