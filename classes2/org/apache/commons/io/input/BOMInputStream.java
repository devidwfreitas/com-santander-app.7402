package org.apache.commons.io.input;

import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.io.ByteOrderMark;

public class BOMInputStream extends ProxyInputStream {
  private static final Comparator<ByteOrderMark> ByteOrderMarkLengthComparator = new BOMInputStream$1();
  
  private final List<ByteOrderMark> boms;
  
  private ByteOrderMark byteOrderMark;
  
  private int fbIndex;
  
  private int fbLength;
  
  private int[] firstBytes;
  
  private final boolean include;
  
  private int markFbIndex;
  
  private boolean markedAtStart;
  
  public BOMInputStream(InputStream paramInputStream) {
    this(paramInputStream, false, new ByteOrderMark[] { ByteOrderMark.UTF_8 });
  }
  
  public BOMInputStream(InputStream paramInputStream, boolean paramBoolean) {
    this(paramInputStream, paramBoolean, new ByteOrderMark[] { ByteOrderMark.UTF_8 });
  }
  
  public BOMInputStream(InputStream paramInputStream, boolean paramBoolean, ByteOrderMark... paramVarArgs) {
    super(paramInputStream);
    if (paramVarArgs == null || paramVarArgs.length == 0)
      throw new IllegalArgumentException("No BOMs specified"); 
    this.include = paramBoolean;
    Arrays.sort(paramVarArgs, ByteOrderMarkLengthComparator);
    this.boms = Arrays.asList(paramVarArgs);
  }
  
  public BOMInputStream(InputStream paramInputStream, ByteOrderMark... paramVarArgs) {
    this(paramInputStream, false, paramVarArgs);
  }
  
  private ByteOrderMark find() {
    for (ByteOrderMark byteOrderMark : this.boms) {
      if (matches(byteOrderMark))
        return byteOrderMark; 
    } 
    return null;
  }
  
  private boolean matches(ByteOrderMark paramByteOrderMark) {
    for (int i = 0; i < paramByteOrderMark.length(); i++) {
      if (paramByteOrderMark.get(i) != this.firstBytes[i])
        return false; 
    } 
    return true;
  }
  
  private int readFirstBytes() {
    getBOM();
    if (this.fbIndex < this.fbLength) {
      int[] arrayOfInt = this.firstBytes;
      int i = this.fbIndex;
      this.fbIndex = i + 1;
      return arrayOfInt[i];
    } 
    return -1;
  }
  
  public ByteOrderMark getBOM() {
    if (this.firstBytes == null) {
      this.fbLength = 0;
      this.firstBytes = new int[((ByteOrderMark)this.boms.get(0)).length()];
      int i = 0;
      while (true) {
        if (i < this.firstBytes.length) {
          this.firstBytes[i] = this.in.read();
          this.fbLength++;
          if (this.firstBytes[i] >= 0) {
            i++;
            continue;
          } 
        } 
        this.byteOrderMark = find();
        if (this.byteOrderMark != null && !this.include) {
          if (this.byteOrderMark.length() < this.firstBytes.length) {
            this.fbIndex = this.byteOrderMark.length();
            return this.byteOrderMark;
          } 
        } else {
          return this.byteOrderMark;
        } 
        this.fbLength = 0;
        return this.byteOrderMark;
      } 
    } 
    return this.byteOrderMark;
  }
  
  public String getBOMCharsetName() {
    getBOM();
    return (this.byteOrderMark == null) ? null : this.byteOrderMark.getCharsetName();
  }
  
  public boolean hasBOM() {
    return (getBOM() != null);
  }
  
  public boolean hasBOM(ByteOrderMark paramByteOrderMark) {
    if (!this.boms.contains(paramByteOrderMark))
      throw new IllegalArgumentException("Stream not configure to detect " + paramByteOrderMark); 
    return (this.byteOrderMark != null && getBOM().equals(paramByteOrderMark));
  }
  
  public void mark(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield fbIndex : I
    //   7: putfield markFbIndex : I
    //   10: aload_0
    //   11: getfield firstBytes : [I
    //   14: ifnonnull -> 35
    //   17: iconst_1
    //   18: istore_2
    //   19: aload_0
    //   20: iload_2
    //   21: putfield markedAtStart : Z
    //   24: aload_0
    //   25: getfield in : Ljava/io/InputStream;
    //   28: iload_1
    //   29: invokevirtual mark : (I)V
    //   32: aload_0
    //   33: monitorexit
    //   34: return
    //   35: iconst_0
    //   36: istore_2
    //   37: goto -> 19
    //   40: astore_3
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_3
    //   44: athrow
    // Exception table:
    //   from	to	target	type
    //   2	17	40	finally
    //   19	32	40	finally
  }
  
  public int read() {
    int i = readFirstBytes();
    return (i >= 0) ? i : this.in.read();
  }
  
  public int read(byte[] paramArrayOfbyte) {
    return read(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int k = 0;
    int i = 0;
    int j = paramInt2;
    paramInt2 = k;
    while (j > 0 && i) {
      k = readFirstBytes();
      i = k;
      if (k >= 0) {
        paramArrayOfbyte[paramInt1] = (byte)(k & 0xFF);
        j--;
        paramInt2++;
        paramInt1++;
        i = k;
      } 
    } 
    paramInt1 = this.in.read(paramArrayOfbyte, paramInt1, j);
    return (paramInt1 < 0) ? ((paramInt2 > 0) ? paramInt2 : -1) : (paramInt2 + paramInt1);
  }
  
  public void reset() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield markFbIndex : I
    //   7: putfield fbIndex : I
    //   10: aload_0
    //   11: getfield markedAtStart : Z
    //   14: ifeq -> 22
    //   17: aload_0
    //   18: aconst_null
    //   19: putfield firstBytes : [I
    //   22: aload_0
    //   23: getfield in : Ljava/io/InputStream;
    //   26: invokevirtual reset : ()V
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	32	finally
    //   22	29	32	finally
  }
  
  public long skip(long paramLong) {
    while (paramLong > 0L && readFirstBytes() >= 0)
      paramLong--; 
    return this.in.skip(paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\BOMInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */