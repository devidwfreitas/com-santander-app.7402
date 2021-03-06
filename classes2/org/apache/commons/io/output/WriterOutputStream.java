package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class WriterOutputStream extends OutputStream {
  private static final int DEFAULT_BUFFER_SIZE = 1024;
  
  private final CharsetDecoder decoder;
  
  private final ByteBuffer decoderIn = ByteBuffer.allocate(128);
  
  private final CharBuffer decoderOut;
  
  private final boolean writeImmediately;
  
  private final Writer writer;
  
  public WriterOutputStream(Writer paramWriter) {
    this(paramWriter, Charset.defaultCharset(), 1024, false);
  }
  
  public WriterOutputStream(Writer paramWriter, String paramString) {
    this(paramWriter, paramString, 1024, false);
  }
  
  public WriterOutputStream(Writer paramWriter, String paramString, int paramInt, boolean paramBoolean) {
    this(paramWriter, Charset.forName(paramString), paramInt, paramBoolean);
  }
  
  public WriterOutputStream(Writer paramWriter, Charset paramCharset) {
    this(paramWriter, paramCharset, 1024, false);
  }
  
  public WriterOutputStream(Writer paramWriter, Charset paramCharset, int paramInt, boolean paramBoolean) {
    this(paramWriter, paramCharset.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith("?"), paramInt, paramBoolean);
  }
  
  public WriterOutputStream(Writer paramWriter, CharsetDecoder paramCharsetDecoder) {
    this(paramWriter, paramCharsetDecoder, 1024, false);
  }
  
  public WriterOutputStream(Writer paramWriter, CharsetDecoder paramCharsetDecoder, int paramInt, boolean paramBoolean) {
    this.writer = paramWriter;
    this.decoder = paramCharsetDecoder;
    this.writeImmediately = paramBoolean;
    this.decoderOut = CharBuffer.allocate(paramInt);
  }
  
  private void flushOutput() {
    if (this.decoderOut.position() > 0) {
      this.writer.write(this.decoderOut.array(), 0, this.decoderOut.position());
      this.decoderOut.rewind();
    } 
  }
  
  private void processInput(boolean paramBoolean) {
    this.decoderIn.flip();
    while (true) {
      CoderResult coderResult = this.decoder.decode(this.decoderIn, this.decoderOut, paramBoolean);
      if (coderResult.isOverflow()) {
        flushOutput();
        continue;
      } 
      if (coderResult.isUnderflow()) {
        this.decoderIn.compact();
        return;
      } 
      throw new IOException("Unexpected coder result");
    } 
  }
  
  public void close() {
    processInput(true);
    flushOutput();
    this.writer.close();
  }
  
  public void flush() {
    flushOutput();
    this.writer.flush();
  }
  
  public void write(int paramInt) {
    write(new byte[] { (byte)paramInt }, 0, 1);
  }
  
  public void write(byte[] paramArrayOfbyte) {
    write(paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    while (paramInt2 > 0) {
      int i = Math.min(paramInt2, this.decoderIn.remaining());
      this.decoderIn.put(paramArrayOfbyte, paramInt1, i);
      processInput(false);
      paramInt2 -= i;
      paramInt1 += i;
    } 
    if (this.writeImmediately)
      flushOutput(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\WriterOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */