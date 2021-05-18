public class mxd {
  public String a(String paramString) {
    try {
      return (Integer.parseInt(paramString.substring(0, 1)) > 7) ? "[ERRO]Selecione a opção de contas acima." : b(paramString);
    } catch (Exception exception) {
      throw new RuntimeException("O codigo de barras esta incompleto!");
    } 
  }
  
  public String b(String paramString) {
    try {
      if (paramString.length() != 44)
        throw new RuntimeException("O codigo de barras esta incompleto!"); 
    } catch (Exception exception) {
      throw new Exception("Error calculando linea digitable", exception);
    } 
    String str2 = exception.substring(0, 4) + exception.substring(19, 20) + exception.substring(20, 24);
    String str3 = exception.substring(24, 29) + exception.substring(29, 34);
    String str4 = exception.substring(34, 39) + exception.substring(39, 44);
    String str5 = exception.substring(4, 5);
    String str1 = exception.substring(5, 19);
    if (d(exception.substring(0, 4) + exception.substring(5, 44)) != Integer.valueOf(str5).intValue());
    null = str1;
    if (Long.valueOf(str1).equals(Integer.valueOf(0)))
      null = "000"; 
    return str2 + c(str2) + str3 + c(str3) + str4 + c(str4) + str5 + null;
  }
  
  public int c(String paramString) {
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
  
  public int d(String paramString) {
    int j = paramString.length() - 1;
    int k = 0;
    int i = 2;
    while (j >= 0) {
      k += Integer.valueOf(paramString.substring(j, j + 1)).intValue() * i;
      if (i < 9) {
        i++;
      } else {
        i = 2;
      } 
      j--;
    } 
    j = 11 - k % 11;
    i = j;
    if (j > 9)
      i = 0; 
    j = i;
    if (i == 0)
      j = 1; 
    return j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */