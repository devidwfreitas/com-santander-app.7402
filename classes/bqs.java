import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

final class bqs implements FilenameFilter {
  public boolean accept(File paramFile, String paramString) {
    return Pattern.matches("cpu[0-9]+", paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */