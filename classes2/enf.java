import java.io.Writer;

final class enf extends Writer {
  public void close() {
    throw new AssertionError();
  }
  
  public void flush() {
    throw new AssertionError();
  }
  
  public void write(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    throw new AssertionError();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */