package org.apache.commons.io.input;

class ReversedLinesFileReader$FilePart {
  private int currentLastBytePos;
  
  private final byte[] data;
  
  private byte[] leftOver;
  
  private final long no;
  
  private ReversedLinesFileReader$FilePart(long paramLong, int paramInt, byte[] paramArrayOfbyte) {
    byte b;
    this.no = paramLong;
    if (paramArrayOfbyte != null) {
      b = paramArrayOfbyte.length;
    } else {
      b = 0;
    } 
    this.data = new byte[b + paramInt];
    long l = ReversedLinesFileReader.access$300(paramReversedLinesFileReader);
    if (paramLong > 0L) {
      ReversedLinesFileReader.access$400(paramReversedLinesFileReader).seek((paramLong - 1L) * l);
      if (ReversedLinesFileReader.access$400(paramReversedLinesFileReader).read(this.data, 0, paramInt) != paramInt)
        throw new IllegalStateException("Count of requested bytes and actually read bytes don't match"); 
    } 
    if (paramArrayOfbyte != null)
      System.arraycopy(paramArrayOfbyte, 0, this.data, paramInt, paramArrayOfbyte.length); 
    this.currentLastBytePos = this.data.length - 1;
    this.leftOver = null;
  }
  
  private void createLeftOver() {
    int i = this.currentLastBytePos + 1;
    if (i > 0) {
      this.leftOver = new byte[i];
      System.arraycopy(this.data, 0, this.leftOver, 0, i);
    } else {
      this.leftOver = null;
    } 
    this.currentLastBytePos = -1;
  }
  
  private int getNewLineMatchByteCount(byte[] paramArrayOfbyte, int paramInt) {
    byte b = 0;
    byte[][] arrayOfByte = ReversedLinesFileReader.access$800(ReversedLinesFileReader.this);
    int j = arrayOfByte.length;
    for (int i = 0;; i++) {
      int k = b;
      if (i < j) {
        byte[] arrayOfByte1 = arrayOfByte[i];
        k = arrayOfByte1.length - 1;
        int m = 1;
        while (k >= 0) {
          int n = paramInt + k - arrayOfByte1.length - 1;
          if (n >= 0 && paramArrayOfbyte[n] == arrayOfByte1[k]) {
            n = 1;
          } else {
            n = 0;
          } 
          m &= n;
          k--;
        } 
        if (m != 0)
          return arrayOfByte1.length; 
      } else {
        return k;
      } 
    } 
  }
  
  private String readLine() {
    // Byte code:
    //   0: aload_0
    //   1: getfield no : J
    //   4: lconst_1
    //   5: lcmp
    //   6: ifne -> 82
    //   9: iconst_1
    //   10: istore_1
    //   11: aload_0
    //   12: getfield currentLastBytePos : I
    //   15: istore_2
    //   16: iload_2
    //   17: iconst_m1
    //   18: if_icmple -> 227
    //   21: iload_1
    //   22: ifne -> 87
    //   25: iload_2
    //   26: aload_0
    //   27: getfield this$0 : Lorg/apache/commons/io/input/ReversedLinesFileReader;
    //   30: invokestatic access$600 : (Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    //   33: if_icmpge -> 87
    //   36: aload_0
    //   37: invokespecial createLeftOver : ()V
    //   40: aconst_null
    //   41: astore #6
    //   43: iload_1
    //   44: ifeq -> 224
    //   47: aload_0
    //   48: getfield leftOver : [B
    //   51: ifnull -> 224
    //   54: new java/lang/String
    //   57: dup
    //   58: aload_0
    //   59: getfield leftOver : [B
    //   62: aload_0
    //   63: getfield this$0 : Lorg/apache/commons/io/input/ReversedLinesFileReader;
    //   66: invokestatic access$500 : (Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
    //   69: invokespecial <init> : ([BLjava/nio/charset/Charset;)V
    //   72: astore #6
    //   74: aload_0
    //   75: aconst_null
    //   76: putfield leftOver : [B
    //   79: aload #6
    //   81: areturn
    //   82: iconst_0
    //   83: istore_1
    //   84: goto -> 11
    //   87: aload_0
    //   88: aload_0
    //   89: getfield data : [B
    //   92: iload_2
    //   93: invokespecial getNewLineMatchByteCount : ([BI)I
    //   96: istore_3
    //   97: iload_3
    //   98: ifle -> 198
    //   101: iload_2
    //   102: iconst_1
    //   103: iadd
    //   104: istore #4
    //   106: aload_0
    //   107: getfield currentLastBytePos : I
    //   110: iload #4
    //   112: isub
    //   113: iconst_1
    //   114: iadd
    //   115: istore #5
    //   117: iload #5
    //   119: ifge -> 150
    //   122: new java/lang/IllegalStateException
    //   125: dup
    //   126: new java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial <init> : ()V
    //   133: ldc 'Unexpected negative line length='
    //   135: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: iload #5
    //   140: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   143: invokevirtual toString : ()Ljava/lang/String;
    //   146: invokespecial <init> : (Ljava/lang/String;)V
    //   149: athrow
    //   150: iload #5
    //   152: newarray byte
    //   154: astore #6
    //   156: aload_0
    //   157: getfield data : [B
    //   160: iload #4
    //   162: aload #6
    //   164: iconst_0
    //   165: iload #5
    //   167: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   170: new java/lang/String
    //   173: dup
    //   174: aload #6
    //   176: aload_0
    //   177: getfield this$0 : Lorg/apache/commons/io/input/ReversedLinesFileReader;
    //   180: invokestatic access$500 : (Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
    //   183: invokespecial <init> : ([BLjava/nio/charset/Charset;)V
    //   186: astore #6
    //   188: aload_0
    //   189: iload_2
    //   190: iload_3
    //   191: isub
    //   192: putfield currentLastBytePos : I
    //   195: goto -> 43
    //   198: iload_2
    //   199: aload_0
    //   200: getfield this$0 : Lorg/apache/commons/io/input/ReversedLinesFileReader;
    //   203: invokestatic access$700 : (Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    //   206: isub
    //   207: istore_3
    //   208: iload_3
    //   209: istore_2
    //   210: iload_3
    //   211: ifge -> 16
    //   214: aload_0
    //   215: invokespecial createLeftOver : ()V
    //   218: aconst_null
    //   219: astore #6
    //   221: goto -> 43
    //   224: aload #6
    //   226: areturn
    //   227: aconst_null
    //   228: astore #6
    //   230: goto -> 43
  }
  
  private ReversedLinesFileReader$FilePart rollOver() {
    if (this.currentLastBytePos > -1)
      throw new IllegalStateException("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=" + this.currentLastBytePos); 
    if (this.no > 1L)
      return new ReversedLinesFileReader$FilePart(this.no - 1L, ReversedLinesFileReader.access$300(ReversedLinesFileReader.this), this.leftOver); 
    if (this.leftOver != null)
      throw new IllegalStateException("Unexpected leftover of the last block: leftOverOfThisFilePart=" + new String(this.leftOver, ReversedLinesFileReader.access$500(ReversedLinesFileReader.this))); 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\ReversedLinesFileReader$FilePart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */