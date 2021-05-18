package org.apache.commons.io.output;

import java.io.File;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public class FileWriterWithEncoding extends Writer {
  private final Writer out;
  
  public FileWriterWithEncoding(File paramFile, String paramString) {
    this(paramFile, paramString, false);
  }
  
  public FileWriterWithEncoding(File paramFile, String paramString, boolean paramBoolean) {
    this.out = initWriter(paramFile, paramString, paramBoolean);
  }
  
  public FileWriterWithEncoding(File paramFile, Charset paramCharset) {
    this(paramFile, paramCharset, false);
  }
  
  public FileWriterWithEncoding(File paramFile, Charset paramCharset, boolean paramBoolean) {
    this.out = initWriter(paramFile, paramCharset, paramBoolean);
  }
  
  public FileWriterWithEncoding(File paramFile, CharsetEncoder paramCharsetEncoder) {
    this(paramFile, paramCharsetEncoder, false);
  }
  
  public FileWriterWithEncoding(File paramFile, CharsetEncoder paramCharsetEncoder, boolean paramBoolean) {
    this.out = initWriter(paramFile, paramCharsetEncoder, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString1, String paramString2) {
    this(new File(paramString1), paramString2, false);
  }
  
  public FileWriterWithEncoding(String paramString1, String paramString2, boolean paramBoolean) {
    this(new File(paramString1), paramString2, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString, Charset paramCharset) {
    this(new File(paramString), paramCharset, false);
  }
  
  public FileWriterWithEncoding(String paramString, Charset paramCharset, boolean paramBoolean) {
    this(new File(paramString), paramCharset, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString, CharsetEncoder paramCharsetEncoder) {
    this(new File(paramString), paramCharsetEncoder, false);
  }
  
  public FileWriterWithEncoding(String paramString, CharsetEncoder paramCharsetEncoder, boolean paramBoolean) {
    this(new File(paramString), paramCharsetEncoder, paramBoolean);
  }
  
  private static Writer initWriter(File paramFile, Object paramObject, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull -> 14
    //   4: new java/lang/NullPointerException
    //   7: dup
    //   8: ldc 'File is missing'
    //   10: invokespecial <init> : (Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_1
    //   15: ifnonnull -> 28
    //   18: new java/lang/NullPointerException
    //   21: dup
    //   22: ldc 'Encoding is missing'
    //   24: invokespecial <init> : (Ljava/lang/String;)V
    //   27: athrow
    //   28: aload_0
    //   29: invokevirtual exists : ()Z
    //   32: istore_3
    //   33: new java/io/FileOutputStream
    //   36: dup
    //   37: aload_0
    //   38: iload_2
    //   39: invokespecial <init> : (Ljava/io/File;Z)V
    //   42: astore #4
    //   44: aload_1
    //   45: instanceof java/nio/charset/Charset
    //   48: ifeq -> 65
    //   51: new java/io/OutputStreamWriter
    //   54: dup
    //   55: aload #4
    //   57: aload_1
    //   58: checkcast java/nio/charset/Charset
    //   61: invokespecial <init> : (Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   64: areturn
    //   65: aload_1
    //   66: instanceof java/nio/charset/CharsetEncoder
    //   69: ifeq -> 109
    //   72: new java/io/OutputStreamWriter
    //   75: dup
    //   76: aload #4
    //   78: aload_1
    //   79: checkcast java/nio/charset/CharsetEncoder
    //   82: invokespecial <init> : (Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    //   85: astore_1
    //   86: aload_1
    //   87: areturn
    //   88: astore_1
    //   89: aconst_null
    //   90: invokestatic closeQuietly : (Ljava/io/Writer;)V
    //   93: aload #4
    //   95: invokestatic closeQuietly : (Ljava/io/OutputStream;)V
    //   98: iload_3
    //   99: ifne -> 107
    //   102: aload_0
    //   103: invokestatic deleteQuietly : (Ljava/io/File;)Z
    //   106: pop
    //   107: aload_1
    //   108: athrow
    //   109: new java/io/OutputStreamWriter
    //   112: dup
    //   113: aload #4
    //   115: aload_1
    //   116: checkcast java/lang/String
    //   119: invokespecial <init> : (Ljava/io/OutputStream;Ljava/lang/String;)V
    //   122: astore_1
    //   123: aload_1
    //   124: areturn
    //   125: astore_1
    //   126: aconst_null
    //   127: invokestatic closeQuietly : (Ljava/io/Writer;)V
    //   130: aload #4
    //   132: invokestatic closeQuietly : (Ljava/io/OutputStream;)V
    //   135: iload_3
    //   136: ifne -> 144
    //   139: aload_0
    //   140: invokestatic deleteQuietly : (Ljava/io/File;)Z
    //   143: pop
    //   144: aload_1
    //   145: athrow
    //   146: astore_1
    //   147: aconst_null
    //   148: astore #4
    //   150: goto -> 126
    //   153: astore_1
    //   154: aconst_null
    //   155: astore #4
    //   157: goto -> 89
    // Exception table:
    //   from	to	target	type
    //   33	44	153	java/io/IOException
    //   33	44	146	java/lang/RuntimeException
    //   44	65	88	java/io/IOException
    //   44	65	125	java/lang/RuntimeException
    //   65	86	88	java/io/IOException
    //   65	86	125	java/lang/RuntimeException
    //   109	123	88	java/io/IOException
    //   109	123	125	java/lang/RuntimeException
  }
  
  public void close() {
    this.out.close();
  }
  
  public void flush() {
    this.out.flush();
  }
  
  public void write(int paramInt) {
    this.out.write(paramInt);
  }
  
  public void write(String paramString) {
    this.out.write(paramString);
  }
  
  public void write(String paramString, int paramInt1, int paramInt2) {
    this.out.write(paramString, paramInt1, paramInt2);
  }
  
  public void write(char[] paramArrayOfchar) {
    this.out.write(paramArrayOfchar);
  }
  
  public void write(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    this.out.write(paramArrayOfchar, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\FileWriterWithEncoding.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */