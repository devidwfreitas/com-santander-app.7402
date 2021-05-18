package org.apache.commons.io.output;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.apache.commons.io.input.ClosedInputStream;

public class ByteArrayOutputStream extends OutputStream {
  private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
  
  private final List<byte[]> buffers;
  
  private int count;
  
  private byte[] currentBuffer;
  
  private int currentBufferIndex;
  
  private int filledBufferSum;
  
  public ByteArrayOutputStream() {
    this(1024);
  }
  
  public ByteArrayOutputStream(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial <init> : ()V
    //   4: aload_0
    //   5: new java/util/ArrayList
    //   8: dup
    //   9: invokespecial <init> : ()V
    //   12: putfield buffers : Ljava/util/List;
    //   15: iload_1
    //   16: ifge -> 46
    //   19: new java/lang/IllegalArgumentException
    //   22: dup
    //   23: new java/lang/StringBuilder
    //   26: dup
    //   27: invokespecial <init> : ()V
    //   30: ldc 'Negative initial size: '
    //   32: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: iload_1
    //   36: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   39: invokevirtual toString : ()Ljava/lang/String;
    //   42: invokespecial <init> : (Ljava/lang/String;)V
    //   45: athrow
    //   46: aload_0
    //   47: monitorenter
    //   48: aload_0
    //   49: iload_1
    //   50: invokespecial needNewBuffer : (I)V
    //   53: aload_0
    //   54: monitorexit
    //   55: return
    //   56: astore_2
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_2
    //   60: athrow
    // Exception table:
    //   from	to	target	type
    //   48	55	56	finally
    //   57	59	56	finally
  }
  
  private void needNewBuffer(int paramInt) {
    if (this.currentBufferIndex < this.buffers.size() - 1) {
      this.filledBufferSum += this.currentBuffer.length;
      this.currentBufferIndex++;
      this.currentBuffer = this.buffers.get(this.currentBufferIndex);
      return;
    } 
    if (this.currentBuffer == null) {
      this.filledBufferSum = 0;
    } else {
      paramInt = Math.max(this.currentBuffer.length << 1, paramInt - this.filledBufferSum);
      this.filledBufferSum += this.currentBuffer.length;
    } 
    this.currentBufferIndex++;
    this.currentBuffer = new byte[paramInt];
    this.buffers.add(this.currentBuffer);
  }
  
  private InputStream toBufferedInputStream() {
    int i = this.count;
    if (i == 0)
      return (InputStream)new ClosedInputStream(); 
    ArrayList<ByteArrayInputStream> arrayList = new ArrayList(this.buffers.size());
    for (byte[] arrayOfByte : this.buffers) {
      int j = Math.min(arrayOfByte.length, i);
      arrayList.add(new ByteArrayInputStream(arrayOfByte, 0, j));
      i -= j;
      if (i == 0)
        break; 
    } 
    return new SequenceInputStream(Collections.enumeration((Collection)arrayList));
  }
  
  public static InputStream toBufferedInputStream(InputStream paramInputStream) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    byteArrayOutputStream.write(paramInputStream);
    return byteArrayOutputStream.toBufferedInputStream();
  }
  
  public void close() {}
  
  public void reset() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield count : I
    //   7: aload_0
    //   8: iconst_0
    //   9: putfield filledBufferSum : I
    //   12: aload_0
    //   13: iconst_0
    //   14: putfield currentBufferIndex : I
    //   17: aload_0
    //   18: aload_0
    //   19: getfield buffers : Ljava/util/List;
    //   22: aload_0
    //   23: getfield currentBufferIndex : I
    //   26: invokeinterface get : (I)Ljava/lang/Object;
    //   31: checkcast [B
    //   34: putfield currentBuffer : [B
    //   37: aload_0
    //   38: monitorexit
    //   39: return
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Exception table:
    //   from	to	target	type
    //   2	37	40	finally
  }
  
  public int size() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : I
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
  
  public byte[] toByteArray() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : I
    //   6: istore_2
    //   7: iload_2
    //   8: ifne -> 21
    //   11: getstatic org/apache/commons/io/output/ByteArrayOutputStream.EMPTY_BYTE_ARRAY : [B
    //   14: astore #4
    //   16: aload_0
    //   17: monitorexit
    //   18: aload #4
    //   20: areturn
    //   21: iload_2
    //   22: newarray byte
    //   24: astore #4
    //   26: aload_0
    //   27: getfield buffers : Ljava/util/List;
    //   30: invokeinterface iterator : ()Ljava/util/Iterator;
    //   35: astore #5
    //   37: iconst_0
    //   38: istore_1
    //   39: aload #5
    //   41: invokeinterface hasNext : ()Z
    //   46: ifeq -> 87
    //   49: aload #5
    //   51: invokeinterface next : ()Ljava/lang/Object;
    //   56: checkcast [B
    //   59: astore #6
    //   61: aload #6
    //   63: arraylength
    //   64: iload_2
    //   65: invokestatic min : (II)I
    //   68: istore_3
    //   69: aload #6
    //   71: iconst_0
    //   72: aload #4
    //   74: iload_1
    //   75: iload_3
    //   76: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   79: iload_2
    //   80: iload_3
    //   81: isub
    //   82: istore_2
    //   83: iload_2
    //   84: ifne -> 90
    //   87: goto -> 16
    //   90: iload_1
    //   91: iload_3
    //   92: iadd
    //   93: istore_1
    //   94: goto -> 39
    //   97: astore #4
    //   99: aload_0
    //   100: monitorexit
    //   101: aload #4
    //   103: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	97	finally
    //   11	16	97	finally
    //   21	37	97	finally
    //   39	79	97	finally
  }
  
  public String toString() {
    return new String(toByteArray());
  }
  
  public String toString(String paramString) {
    return new String(toByteArray(), paramString);
  }
  
  public int write(InputStream paramInputStream) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : I
    //   6: aload_0
    //   7: getfield filledBufferSum : I
    //   10: isub
    //   11: istore_3
    //   12: aload_1
    //   13: aload_0
    //   14: getfield currentBuffer : [B
    //   17: iload_3
    //   18: aload_0
    //   19: getfield currentBuffer : [B
    //   22: arraylength
    //   23: iload_3
    //   24: isub
    //   25: invokevirtual read : ([BII)I
    //   28: istore_2
    //   29: iconst_0
    //   30: istore #4
    //   32: iload_2
    //   33: iconst_m1
    //   34: if_icmpeq -> 109
    //   37: iload #4
    //   39: iload_2
    //   40: iadd
    //   41: istore #5
    //   43: iload_3
    //   44: iload_2
    //   45: iadd
    //   46: istore_3
    //   47: aload_0
    //   48: iload_2
    //   49: aload_0
    //   50: getfield count : I
    //   53: iadd
    //   54: putfield count : I
    //   57: iload_3
    //   58: istore_2
    //   59: iload_3
    //   60: aload_0
    //   61: getfield currentBuffer : [B
    //   64: arraylength
    //   65: if_icmpne -> 79
    //   68: aload_0
    //   69: aload_0
    //   70: getfield currentBuffer : [B
    //   73: arraylength
    //   74: invokespecial needNewBuffer : (I)V
    //   77: iconst_0
    //   78: istore_2
    //   79: aload_1
    //   80: aload_0
    //   81: getfield currentBuffer : [B
    //   84: iload_2
    //   85: aload_0
    //   86: getfield currentBuffer : [B
    //   89: arraylength
    //   90: iload_2
    //   91: isub
    //   92: invokevirtual read : ([BII)I
    //   95: istore #4
    //   97: iload_2
    //   98: istore_3
    //   99: iload #4
    //   101: istore_2
    //   102: iload #5
    //   104: istore #4
    //   106: goto -> 32
    //   109: aload_0
    //   110: monitorexit
    //   111: iload #4
    //   113: ireturn
    //   114: astore_1
    //   115: aload_0
    //   116: monitorexit
    //   117: aload_1
    //   118: athrow
    // Exception table:
    //   from	to	target	type
    //   2	29	114	finally
    //   47	57	114	finally
    //   59	77	114	finally
    //   79	97	114	finally
  }
  
  public void write(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : I
    //   6: aload_0
    //   7: getfield filledBufferSum : I
    //   10: isub
    //   11: istore_3
    //   12: iload_3
    //   13: istore_2
    //   14: iload_3
    //   15: aload_0
    //   16: getfield currentBuffer : [B
    //   19: arraylength
    //   20: if_icmpne -> 35
    //   23: aload_0
    //   24: aload_0
    //   25: getfield count : I
    //   28: iconst_1
    //   29: iadd
    //   30: invokespecial needNewBuffer : (I)V
    //   33: iconst_0
    //   34: istore_2
    //   35: aload_0
    //   36: getfield currentBuffer : [B
    //   39: iload_2
    //   40: iload_1
    //   41: i2b
    //   42: bastore
    //   43: aload_0
    //   44: aload_0
    //   45: getfield count : I
    //   48: iconst_1
    //   49: iadd
    //   50: putfield count : I
    //   53: aload_0
    //   54: monitorexit
    //   55: return
    //   56: astore #4
    //   58: aload_0
    //   59: monitorexit
    //   60: aload #4
    //   62: athrow
    // Exception table:
    //   from	to	target	type
    //   2	12	56	finally
    //   14	33	56	finally
    //   35	53	56	finally
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: iload_2
    //   1: iflt -> 28
    //   4: iload_2
    //   5: aload_1
    //   6: arraylength
    //   7: if_icmpgt -> 28
    //   10: iload_3
    //   11: iflt -> 28
    //   14: iload_2
    //   15: iload_3
    //   16: iadd
    //   17: aload_1
    //   18: arraylength
    //   19: if_icmpgt -> 28
    //   22: iload_2
    //   23: iload_3
    //   24: iadd
    //   25: ifge -> 36
    //   28: new java/lang/IndexOutOfBoundsException
    //   31: dup
    //   32: invokespecial <init> : ()V
    //   35: athrow
    //   36: iload_3
    //   37: ifne -> 41
    //   40: return
    //   41: aload_0
    //   42: monitorenter
    //   43: aload_0
    //   44: getfield count : I
    //   47: iload_3
    //   48: iadd
    //   49: istore #7
    //   51: aload_0
    //   52: getfield count : I
    //   55: aload_0
    //   56: getfield filledBufferSum : I
    //   59: isub
    //   60: istore #5
    //   62: iload_3
    //   63: istore #4
    //   65: iload #4
    //   67: ifle -> 135
    //   70: iload #4
    //   72: aload_0
    //   73: getfield currentBuffer : [B
    //   76: arraylength
    //   77: iload #5
    //   79: isub
    //   80: invokestatic min : (II)I
    //   83: istore #6
    //   85: aload_1
    //   86: iload_2
    //   87: iload_3
    //   88: iadd
    //   89: iload #4
    //   91: isub
    //   92: aload_0
    //   93: getfield currentBuffer : [B
    //   96: iload #5
    //   98: iload #6
    //   100: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   103: iload #4
    //   105: iload #6
    //   107: isub
    //   108: istore #6
    //   110: iload #6
    //   112: istore #4
    //   114: iload #6
    //   116: ifle -> 65
    //   119: aload_0
    //   120: iload #7
    //   122: invokespecial needNewBuffer : (I)V
    //   125: iconst_0
    //   126: istore #5
    //   128: iload #6
    //   130: istore #4
    //   132: goto -> 65
    //   135: aload_0
    //   136: iload #7
    //   138: putfield count : I
    //   141: aload_0
    //   142: monitorexit
    //   143: return
    //   144: astore_1
    //   145: aload_0
    //   146: monitorexit
    //   147: aload_1
    //   148: athrow
    // Exception table:
    //   from	to	target	type
    //   43	62	144	finally
    //   70	103	144	finally
    //   119	125	144	finally
    //   135	143	144	finally
    //   145	147	144	finally
  }
  
  public void writeTo(OutputStream paramOutputStream) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : I
    //   6: istore_2
    //   7: aload_0
    //   8: getfield buffers : Ljava/util/List;
    //   11: invokeinterface iterator : ()Ljava/util/Iterator;
    //   16: astore #4
    //   18: aload #4
    //   20: invokeinterface hasNext : ()Z
    //   25: ifeq -> 64
    //   28: aload #4
    //   30: invokeinterface next : ()Ljava/lang/Object;
    //   35: checkcast [B
    //   38: astore #5
    //   40: aload #5
    //   42: arraylength
    //   43: iload_2
    //   44: invokestatic min : (II)I
    //   47: istore_3
    //   48: aload_1
    //   49: aload #5
    //   51: iconst_0
    //   52: iload_3
    //   53: invokevirtual write : ([BII)V
    //   56: iload_2
    //   57: iload_3
    //   58: isub
    //   59: istore_2
    //   60: iload_2
    //   61: ifne -> 67
    //   64: aload_0
    //   65: monitorexit
    //   66: return
    //   67: goto -> 18
    //   70: astore_1
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_1
    //   74: athrow
    // Exception table:
    //   from	to	target	type
    //   2	18	70	finally
    //   18	56	70	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\ByteArrayOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */