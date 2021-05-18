import java.io.File;
import java.io.FilenameFilter;

class bor {
  private static final String a = "buffer";
  
  private static final FilenameFilter b = new bos();
  
  private static final FilenameFilter c = new bot();
  
  static FilenameFilter a() {
    return b;
  }
  
  static void a(File paramFile) {
    File[] arrayOfFile = paramFile.listFiles(b());
    if (arrayOfFile != null) {
      int j = arrayOfFile.length;
      for (int i = 0; i < j; i++)
        arrayOfFile[i].delete(); 
    } 
  }
  
  static File b(File paramFile) {
    return new File(paramFile, "buffer" + Long.valueOf(bon.d().incrementAndGet()).toString());
  }
  
  static FilenameFilter b() {
    return c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */