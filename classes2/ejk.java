import java.lang.reflect.Field;
import java.util.Locale;

enum ejk {
  public String translateName(Field paramField) {
    return separateCamelCase(paramField.getName(), "-").toLowerCase(Locale.ENGLISH);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */