import java.util.regex.Pattern;

public class cwg {
  private static final Pattern a = Pattern.compile("\\$\\{(.*?)\\}");
  
  public static boolean a(String paramString) {
    return (paramString == null || paramString.trim().isEmpty());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */