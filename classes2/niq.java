import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

public final class niq {
  public static String a(File paramFile) {
    if (!paramFile.exists())
      return null; 
    String str = "";
    try {
      BufferedReader bufferedReader = new BufferedReader(new FileReader(paramFile));
      String str1 = str;
      while (true) {
        str = bufferedReader.readLine();
        if (str != null) {
          str1 = str1 + str;
          continue;
        } 
        bufferedReader.close();
        return str1;
      } 
    } catch (IOException iOException) {
      return null;
    } 
  }
  
  public static boolean a(File paramFile, String paramString) {
    try {
      FileOutputStream fileOutputStream = new FileOutputStream(paramFile);
      fileOutputStream.write(paramString.getBytes());
      fileOutputStream.close();
      return true;
    } catch (IOException iOException) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\niq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */