class ao {
  public static final int a = 1;
  
  public static int a(al paramal, bl parambl, StringBuffer paramStringBuffer) {
    StringBuffer stringBuffer = new StringBuffer();
    if (paramStringBuffer == null)
      return 1314; 
    try {
      stringBuffer.append(1);
      stringBuffer.append("#");
      stringBuffer.append(paramal.u());
      stringBuffer.append("#");
      stringBuffer.append(paramal.j());
      stringBuffer.append("#");
      stringBuffer.append(paramal.k());
      stringBuffer.append("#");
      stringBuffer.append(paramal.l());
      stringBuffer.append("#");
      stringBuffer.append(paramal.h());
      stringBuffer.append("#");
      stringBuffer.append(paramal.L());
      stringBuffer.append("#");
      stringBuffer.append(paramal.w());
      paramStringBuffer.append(parambl.a(stringBuffer.toString()));
      return 0;
    } catch (Exception exception) {
      exception.printStackTrace();
      return 1300;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */