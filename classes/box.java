import java.io.File;

final class box implements Comparable<box> {
  private static final int a = 29;
  
  private static final int b = 37;
  
  private final File c;
  
  private final long d;
  
  box(File paramFile) {
    this.c = paramFile;
    this.d = paramFile.lastModified();
  }
  
  public int a(box parambox) {
    return (b() < parambox.b()) ? -1 : ((b() > parambox.b()) ? 1 : a().compareTo(parambox.a()));
  }
  
  File a() {
    return this.c;
  }
  
  long b() {
    return this.d;
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject instanceof box && a((box)paramObject) == 0);
  }
  
  public int hashCode() {
    return (this.c.hashCode() + 1073) * 37 + (int)(this.d % 2147483647L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\box.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */