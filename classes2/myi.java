import java.util.regex.Pattern;

public class myi {
  public static boolean a(String paramString) {
    return (paramString == null || paramString.trim().length() == 0) ? false : Pattern.compile("\\b(^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-])+(\\.[A-Za-z0-9-]+)*((\\.[A-Za-z0-9]{2,})|(\\.[A-Za-z0-9]{2,}\\.[A-Za-z0-9]{2,}))$)\\b", 2).matcher(paramString).matches();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */