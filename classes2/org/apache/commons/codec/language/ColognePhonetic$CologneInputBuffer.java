package org.apache.commons.codec.language;

class ColognePhonetic$CologneInputBuffer extends ColognePhonetic$CologneBuffer {
  private final ColognePhonetic this$0;
  
  public ColognePhonetic$CologneInputBuffer(char[] paramArrayOfchar) {
    super(paramColognePhonetic, paramArrayOfchar);
  }
  
  public void addLeft(char paramChar) {
    this.length++;
    this.data[getNextPos()] = paramChar;
  }
  
  protected char[] copyData(int paramInt1, int paramInt2) {
    char[] arrayOfChar = new char[paramInt2];
    System.arraycopy(this.data, this.data.length - this.length + paramInt1, arrayOfChar, 0, paramInt2);
    return arrayOfChar;
  }
  
  public char getNextChar() {
    return this.data[getNextPos()];
  }
  
  protected int getNextPos() {
    return this.data.length - this.length;
  }
  
  public char removeNext() {
    char c = getNextChar();
    this.length--;
    return c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\language\ColognePhonetic$CologneInputBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */