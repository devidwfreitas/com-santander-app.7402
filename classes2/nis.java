import java.io.PrintWriter;
import java.io.StringWriter;

public final class nis {
  public static String a(String paramString) {
    if (paramString != null && paramString.length() != 0) {
      char c = paramString.charAt(0);
      if (!Character.isUpperCase(c))
        return Character.toUpperCase(c) + paramString.substring(1); 
    } 
    return paramString;
  }
  
  public static String a(Throwable paramThrowable) {
    StringWriter stringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(stringWriter));
    return stringWriter.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */