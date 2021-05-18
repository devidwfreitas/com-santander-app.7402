import java.lang.reflect.Field;

enum eji {
  public String translateName(Field paramField) {
    return upperCaseFirstLetter(separateCamelCase(paramField.getName(), " "));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eji.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */