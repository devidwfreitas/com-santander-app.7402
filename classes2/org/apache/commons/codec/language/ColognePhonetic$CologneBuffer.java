package org.apache.commons.codec.language;

abstract class ColognePhonetic$CologneBuffer {
  protected final char[] data;
  
  protected int length = 0;
  
  private final ColognePhonetic this$0;
  
  public ColognePhonetic$CologneBuffer(int paramInt) {
    this.data = new char[paramInt];
    this.length = 0;
  }
  
  public ColognePhonetic$CologneBuffer(char[] paramArrayOfchar) {
    this.data = paramArrayOfchar;
    this.length = paramArrayOfchar.length;
  }
  
  protected abstract char[] copyData(int paramInt1, int paramInt2);
  
  public int length() {
    return this.length;
  }
  
  public String toString() {
    return new String(copyData(0, this.length));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\language\ColognePhonetic$CologneBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */