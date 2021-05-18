import java.io.Reader;

final class end extends Reader {
  public void close() {
    throw new AssertionError();
  }
  
  public int read(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    throw new AssertionError();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\end.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */