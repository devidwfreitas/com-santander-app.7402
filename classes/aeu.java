public class aeu {
  public static void a(String paramString, aev paramaev) {
    StringBuffer stringBuffer = alb.a(paramString);
    if (!stringBuffer.toString().contains("ErrD"))
      try {
        paramaev.a(ji.a().f(stringBuffer.toString()));
        return;
      } catch (Exception exception) {
        paramaev.a(exception);
        return;
      }  
    paramaev.a(new Exception("Erro na geração de OTP"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aeu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */