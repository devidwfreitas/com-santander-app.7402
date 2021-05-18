import android.app.Activity;

public class mxe {
  public int a(String paramString) {
    int j = paramString.length() - 1;
    int i = 2;
    int k = 0;
    while (j >= 0) {
      int n = Integer.valueOf(paramString.substring(j, j + 1)).intValue() * i;
      int m = n;
      if (n >= 10)
        m = n - 10 + 1; 
      k += m;
      if (i == 2) {
        i = 1;
      } else {
        i = 2;
      } 
      j--;
    } 
    j = 10 - k % 10;
    i = j;
    if (j == 10)
      i = 0; 
    return i;
  }
  
  public int a(String paramString, int paramInt) {
    return (paramInt > 7) ? b(paramString) : a(paramString);
  }
  
  public String a(String paramString, Activity paramActivity) {
    try {
      if (paramString.length() != 44)
        throw new Exception("O codigo de barras esta incompleto!"); 
    } catch (Exception exception) {
      throw new Exception("Error calculo linea digitable", exception);
    } 
    if (!exception.substring(0, 1).equals("8"))
      return "[ERRO]Selecione a opção de títulos e boletos acima."; 
    String str2 = exception.substring(1, 2);
    if (!str2.equals("2") && !str2.equals("3") && !str2.equals("4"))
      return "[ERRO]" + paramActivity.getResources().getString(2131297185); 
    String str1 = exception.substring(0, 11);
    str2 = exception.substring(11, 22);
    String str3 = exception.substring(22, 33);
    String str4 = exception.substring(33, 44);
    int i = Integer.valueOf(exception.substring(2, 3)).intValue();
    return str1 + a(str1, i) + str2 + a(str2, i) + str3 + a(str3, i) + str4 + a(str4, i);
  }
  
  public int b(String paramString) {
    int i = 0;
    int j = 0;
    while (i < 11) {
      (new int[11])[0] = 4;
      (new int[11])[1] = 3;
      (new int[11])[2] = 2;
      (new int[11])[3] = 9;
      (new int[11])[4] = 8;
      (new int[11])[5] = 7;
      (new int[11])[6] = 6;
      (new int[11])[7] = 5;
      (new int[11])[8] = 4;
      (new int[11])[9] = 3;
      (new int[11])[10] = 2;
      j += (new int[11])[i] * Integer.valueOf(paramString.substring(i, i + 1)).intValue();
      i++;
    } 
    i = 11 - j % 11;
    return (i > 9) ? 0 : i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */