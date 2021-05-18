package com.datami.smi.f;

import com.datami.smi.b.m;
import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

class a implements d {
  private static String a;
  
  private static final byte[] e = new byte[] { 
      120, -125, -14, -23, -30, -13, 71, -77, 84, -65, 
      -2, 0, -2, -11, -4, 84, -67, -9, 3, 4, 
      -9, -6, 84, -67, -12, 1, 0, 9, 2, -17, 
      11, -6, 1, 77, -30, -13, 71, -77, 84, -82, 
      13, -2, -2, -10, -1, 15, -13, 82, -83, 14, 
      -13, -4, 17, -13, 82, -70, -9, -3, 82, -65, 
      -2, 0, -2, -11, -4, 11, -5, 7, 71, -67, 
      -12, 1, 0, 9, 2, -17, 11, -6, 1, -5, 
      82, -9, -9, 4, 12 };
  
  private static int f = 181;
  
  private final Queue b;
  
  private m c;
  
  private final ServerSocketChannel d;
  
  static {
    StringBuilder stringBuilder = new StringBuilder();
    byte b = e[11];
    a = stringBuilder.append(a(b, b | 0x4C, e[11])).append(a.class.getSimpleName()).toString();
  }
  
  public a(ConcurrentLinkedQueue paramConcurrentLinkedQueue, m paramm, ServerSocketChannel paramServerSocketChannel) {
    this.c = paramm;
    this.b = paramConcurrentLinkedQueue;
    this.d = paramServerSocketChannel;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i;
    paramInt1 = 91 - paramInt1 * 24;
    byte[] arrayOfByte2 = e;
    paramInt3 += 5;
    paramInt2 += 4;
    byte[] arrayOfByte1 = new byte[paramInt3];
    int j = paramInt3 - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = paramInt2;
      paramInt2 = bool;
    } else {
      paramInt3 = paramInt2;
      paramInt2 = 0;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
      int i1 = paramInt2 + 1;
      int i2 = paramInt3 + 1;
    } 
    i += -paramInt3;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
    int k = paramInt2 + 1;
    int n = paramInt3 + 1;
  }
  
  public final void a() {}
  
  public final void a(m paramm) {
    this.c = paramm;
  }
  
  public final void a(SelectionKey paramSelectionKey) {
    if (paramSelectionKey.isValid() && paramSelectionKey.isAcceptable())
      try {
        SocketChannel socketChannel = ((ServerSocketChannel)paramSelectionKey.channel()).accept();
        this.b.add(new e(socketChannel, this.c));
        return;
      } catch (IOException iOException) {
        byte b1 = e[25];
        byte b2 = e[44];
        a(b1, b2, b2 & 0x1A);
        return;
      }  
  }
  
  public final void a(Selector paramSelector) {
    try {
      this.d.configureBlocking(false);
      this.d.register(paramSelector, 16, this);
      return;
    } catch (IOException iOException) {
      byte b = e[25];
      a(b, b | 0x1C, 43);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */