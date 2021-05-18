package com.datami.smi.f;

import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SocketChannel;

final class b {
  private static final int a = 4096;
  
  private static final byte[] e = new byte[] { 
      18, -47, 124, -103, 66, 23, -5, -15, 14, -83, 
      84, -5, -79, 83, -8, 9, -84, 66, 23, -5, 
      -15, 14, -83, 70, 12, -3, -2, -77, 83, -8, 
      9, -84, -5, -9, 11, 0, -11, 5, -7, -71, 
      -13, -4, 3, -68 };
  
  private static int f = 86;
  
  private final ByteBuffer b = ByteBuffer.allocateDirect(4096);
  
  private c c = c.a;
  
  private boolean d = false;
  
  public b(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    int i = 16 - paramInt2;
    byte[] arrayOfByte2 = e;
    paramInt2 = 119 - paramInt3;
    paramInt3 = 40 - paramInt1;
    byte[] arrayOfByte1 = new byte[i];
    int k = i - 1;
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      j = k;
      i = paramInt2;
    } else {
      i = 0;
      paramInt1 = paramInt2;
      paramInt2 = paramInt3;
      arrayOfByte1[i] = (byte)paramInt1;
    } 
    j += i;
    paramInt2 = paramInt3 + 1;
    i = paramInt1;
    paramInt1 = j;
    arrayOfByte1[i] = (byte)paramInt1;
  }
  
  public final int a(SocketChannel paramSocketChannel) {
    int j = paramSocketChannel.read(this.b);
    if (j == -1)
      throw new ClosedChannelException(); 
    String str = e.a;
    StringBuilder stringBuilder = (new StringBuilder()).append(a(e[35], e[34], e[37])).append(j);
    byte b1 = e[5];
    byte b2 = e[35];
    stringBuilder.append(a(b1, b2, b2 | 0x57)).append(paramSocketChannel.socket().getLocalPort());
    int i = j;
    if (j > 0) {
      j += (j / 1412 + 1) * 136;
      i = j;
      if (this.d)
        i = j | 0x1; 
      g.a(i);
      this.b.flip();
      this.c = c.b;
    } 
    return i;
  }
  
  public final boolean a() {
    return (this.c == c.b);
  }
  
  public final void b(SocketChannel paramSocketChannel) {
    String str = e.a;
    StringBuilder stringBuilder = (new StringBuilder()).append(a(-e[14], -e[38], e[35])).append(this.b.remaining());
    byte b1 = -e[26];
    stringBuilder.append(a(36, b1, b1 | 0x55)).append(paramSocketChannel.socket().getLocalPort());
    paramSocketChannel.write(this.b);
    if (this.b.remaining() == 0) {
      this.b.clear();
      this.c = c.a;
    } 
  }
  
  public final boolean b() {
    return (this.c == c.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */