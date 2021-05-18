import java.io.File;
import java.io.FilenameFilter;

final class bos implements FilenameFilter {
  public boolean accept(File paramFile, String paramString) {
    return !paramString.startsWith("buffer");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bos.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */