package android.support.multidex;

import java.io.File;
import java.io.FileFilter;

final class MultiDexExtractor$1 implements FileFilter {
  public boolean accept(File paramFile) {
    return !paramFile.getName().startsWith(extractedFilePrefix);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\multidex\MultiDexExtractor$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */