import android.content.Context;
import android.widget.TextView;
import com.santander.app.MinhaConta;

public class goh {
  public static final String a = "R$ ";
  
  public static final String b = "US$ ";
  
  public static void a(TextView paramTextView, String paramString) {
    paramTextView.setText(naj.f(paramString));
  }
  
  public static void a(TextView paramTextView, String paramString1, String paramString2) {
    if (paramString2.equals("true")) {
      paramTextView.setText(naj.a(paramString1, "R$ "));
      return;
    } 
    paramTextView.setText(naj.a(paramString1, "US$ "));
  }
  
  public static void b(TextView paramTextView, String paramString) {
    Context context = MinhaConta.b();
    if (paramString != null && paramString.length() > 0 && paramString.contains("-")) {
      paramTextView.setTextColor(context.getResources().getColor(2131624298));
    } else if (paramString != null && paramString.length() > 0 && paramString.contains("+")) {
      paramString.replace("+", "");
      paramTextView.setTextColor(context.getResources().getColor(2131623937));
    } else {
      paramTextView.setTextColor(context.getResources().getColor(2131623937));
    } 
    a(paramTextView, paramString);
  }
  
  public static void b(TextView paramTextView, String paramString1, String paramString2) {
    Context context = MinhaConta.b();
    if (paramString1 != null && paramString1.length() > 0 && paramString1.contains("-")) {
      paramTextView.setTextColor(context.getResources().getColor(2131624298));
    } else if (paramString1 != null && paramString1.length() > 0 && paramString1.contains("+")) {
      paramString1.replace("+", "");
      paramTextView.setTextColor(context.getResources().getColor(2131623937));
    } else {
      paramTextView.setTextColor(context.getResources().getColor(2131623937));
    } 
    a(paramTextView, paramString1, paramString2);
  }
  
  public static void c(TextView paramTextView, String paramString) {
    Context context = MinhaConta.b();
    if (paramString != null && paramString.length() > 0 && paramString.contains("-")) {
      paramTextView.setTextColor(context.getResources().getColor(2131624298));
    } else if (paramString != null && paramString.length() > 0 && paramString.contains("+")) {
      paramString.replace("+", "");
      paramTextView.setTextColor(context.getResources().getColor(2131623937));
    } else {
      paramTextView.setTextColor(context.getResources().getColor(2131623937));
    } 
    naj.B(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\goh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */