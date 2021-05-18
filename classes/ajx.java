import android.widget.EditText;

public class ajx {
  public static String a = "S";
  
  public static String a(ajw paramajw) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramajw.o());
    stringBuilder.append(" FINAL: ");
    stringBuilder.append(paramajw.q());
    return stringBuilder.toString();
  }
  
  public static void a(EditText paramEditText) {
    paramEditText.setOnClickListener(new ajy(paramEditText));
    paramEditText.addTextChangedListener(new ajz(paramEditText));
  }
  
  public static String b(ajw paramajw) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramajw.o());
    stringBuilder.append(" AG: ");
    stringBuilder.append(paramajw.c());
    stringBuilder.append(" C/C: ");
    stringBuilder.append(paramajw.d());
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */