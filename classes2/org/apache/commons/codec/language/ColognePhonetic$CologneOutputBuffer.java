package org.apache.commons.codec.language;

class ColognePhonetic$CologneOutputBuffer extends ColognePhonetic$CologneBuffer {
  private final ColognePhonetic this$0;
  
  public ColognePhonetic$CologneOutputBuffer(int paramInt) {
    super(paramColognePhonetic, paramInt);
  }
  
  public void addRight(char paramChar) {
    this.data[this.length] = paramChar;
    this.length++;
  }
  
  protected char[] copyData(int paramInt1, int paramInt2) {
    char[] arrayOfChar = new char[paramInt2];
    System.arraycopy(this.data, paramInt1, arrayOfChar, 0, paramInt2);
    return arrayOfChar;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\language\ColognePhonetic$CologneOutputBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */