import java.io.Writer;

final class emo extends Writer {
  private final Appendable a;
  
  private final emp b = new emp();
  
  emo(Appendable paramAppendable) {
    this.a = paramAppendable;
  }
  
  public void close() {}
  
  public void flush() {}
  
  public void write(int paramInt) {
    this.a.append((char)paramInt);
  }
  
  public void write(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    this.b.a = paramArrayOfchar;
    this.a.append(this.b, paramInt1, paramInt1 + paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */