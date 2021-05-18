import java.lang.reflect.Field;
import java.util.Locale;

enum ejj {
  public String translateName(Field paramField) {
    return separateCamelCase(paramField.getName(), "_").toLowerCase(Locale.ENGLISH);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */