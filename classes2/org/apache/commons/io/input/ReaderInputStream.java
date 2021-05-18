package org.apache.commons.io.input;

import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class ReaderInputStream extends InputStream {
  private static final int DEFAULT_BUFFER_SIZE = 1024;
  
  private final CharsetEncoder encoder;
  
  private final CharBuffer encoderIn;
  
  private final ByteBuffer encoderOut;
  
  private boolean endOfInput;
  
  private CoderResult lastCoderResult;
  
  private final Reader reader;
  
  public ReaderInputStream(Reader paramReader) {
    this(paramReader, Charset.defaultCharset());
  }
  
  public ReaderInputStream(Reader paramReader, String paramString) {
    this(paramReader, paramString, 1024);
  }
  
  public ReaderInputStream(Reader paramReader, String paramString, int paramInt) {
    this(paramReader, Charset.forName(paramString), paramInt);
  }
  
  public ReaderInputStream(Reader paramReader, Charset paramCharset) {
    this(paramReader, paramCharset, 1024);
  }
  
  public ReaderInputStream(Reader paramReader, Charset paramCharset, int paramInt) {
    this(paramReader, paramCharset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE), paramInt);
  }
  
  public ReaderInputStream(Reader paramReader, CharsetEncoder paramCharsetEncoder) {
    this(paramReader, paramCharsetEncoder, 1024);
  }
  
  public ReaderInputStream(Reader paramReader, CharsetEncoder paramCharsetEncoder, int paramInt) {
    this.reader = paramReader;
    this.encoder = paramCharsetEncoder;
    this.encoderIn = CharBuffer.allocate(paramInt);
    this.encoderIn.flip();
    this.encoderOut = ByteBuffer.allocate(128);
    this.encoderOut.flip();
  }
  
  private void fillBuffer() {
    if (!this.endOfInput && (this.lastCoderResult == null || this.lastCoderResult.isUnderflow())) {
      this.encoderIn.compact();
      int i = this.encoderIn.position();
      int j = this.reader.read(this.encoderIn.array(), i, this.encoderIn.remaining());
      if (j == -1) {
        this.endOfInput = true;
      } else {
        this.encoderIn.position(i + j);
      } 
      this.encoderIn.flip();
    } 
    this.encoderOut.compact();
    this.lastCoderResult = this.encoder.encode(this.encoderIn, this.encoderOut, this.endOfInput);
    this.encoderOut.flip();
  }
  
  public void close() {
    this.reader.close();
  }
  
  public int read() {
    while (true) {
      if (this.encoderOut.hasRemaining())
        return this.encoderOut.get() & 0xFF; 
      fillBuffer();
      if (this.endOfInput && !this.encoderOut.hasRemaining())
        return -1; 
    } 
  }
  
  public int read(byte[] paramArrayOfbyte) {
    return read(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int i = 0;
    boolean bool = false;
    if (paramArrayOfbyte == null)
      throw new NullPointerException("Byte array must not be null"); 
    if (paramInt2 < 0 || paramInt1 < 0 || paramInt1 + paramInt2 > paramArrayOfbyte.length)
      throw new IndexOutOfBoundsException("Array Size=" + paramArrayOfbyte.length + ", offset=" + paramInt1 + ", length=" + paramInt2); 
    int j = paramInt2;
    if (paramInt2 == 0)
      return bool; 
    while (j > 0) {
      if (this.encoderOut.hasRemaining()) {
        paramInt2 = Math.min(this.encoderOut.remaining(), j);
        this.encoderOut.get(paramArrayOfbyte, paramInt1, paramInt2);
        paramInt1 += paramInt2;
        j -= paramInt2;
        i += paramInt2;
        continue;
      } 
      fillBuffer();
      if (this.endOfInput && !this.encoderOut.hasRemaining())
        break; 
    } 
    paramInt1 = i;
    if (i == 0) {
      paramInt1 = i;
      if (this.endOfInput)
        return -1; 
    } 
    return paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\ReaderInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */