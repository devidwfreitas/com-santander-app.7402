import android.util.Log;
import java.io.StringWriter;
import org.simpleframework.xml.core.Persister;

public class mzd<T> {
  public T a(Class paramClass, String paramString) {
    return (T)(new Persister()).read(paramClass, paramString, false);
  }
  
  public String a(Object paramObject, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">\n<soapenv:Header/>\n<soapenv:Body>\n");
    stringBuilder.append("<web:" + paramString + ">");
    try {
      Persister persister = new Persister();
      StringWriter stringWriter = new StringWriter();
      if (paramObject != null) {
        persister.write(paramObject, stringWriter);
        stringBuilder.append(stringWriter.toString());
      } 
      stringBuilder.append("</web:" + paramString + ">");
      stringBuilder.append("\n</soapenv:Body>\n").append("</soapenv:Envelope>");
      return stringBuilder.toString();
    } catch (Exception exception) {
      Log.e("Erro:", exception.toString());
      return "";
    } 
  }
  
  public String a(Object paramObject, String paramString1, String paramString2) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"" + paramString2 + "\">\n<soapenv:Header/>\n<soapenv:Body>\n");
    stringBuilder.append("<web:" + paramString1 + ">");
    try {
      Persister persister = new Persister();
      StringWriter stringWriter = new StringWriter();
      if (paramObject != null) {
        persister.write(paramObject, stringWriter);
        stringBuilder.append(stringWriter.toString());
      } 
      stringBuilder.append("</web:" + paramString1 + ">");
      stringBuilder.append("\n</soapenv:Body>\n").append("</soapenv:Envelope>");
      return stringBuilder.toString();
    } catch (Exception exception) {
      Log.e("Erro:", exception.toString());
      return "";
    } 
  }
  
  public String a(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">\n<soapenv:Header/>\n<soapenv:Body>\n");
    String str2 = "";
    String str1 = str2;
    try {
      stringBuilder.append("\n<web:" + paramString + "/>");
      str1 = str2;
      stringBuilder.append("\n</soapenv:Body>\n").append("</soapenv:Envelope>");
      str1 = str2;
      str2 = stringBuilder.toString();
      str1 = str2;
      str2 = str2.replace("<" + paramString + ">", "<web:" + paramString + ">");
      str1 = str2;
      return str2.replace("</" + paramString + ">", "</web:" + paramString + ">");
    } catch (Exception exception) {
      return str1;
    } 
  }
  
  public String a(String paramString1, String paramString2, Boolean paramBoolean) {
    String str = "<" + paramString2 + ">";
    paramString2 = "</" + paramString2 + ">";
    if (paramBoolean.booleanValue()) {
      int j = paramString1.indexOf(str);
      paramString1 = paramString1.substring(str.length() + j, paramString1.length());
      return paramString1.substring(0, paramString1.indexOf(paramString2));
    } 
    paramString1 = paramString1.substring(paramString1.indexOf(str), paramString1.length());
    int i = paramString1.indexOf(paramString2);
    return paramString1.substring(0, paramString2.length() + i);
  }
  
  public String a(String paramString1, String paramString2, String paramString3, Boolean paramBoolean) {
    paramString3 = paramString1.replace(paramString3, "");
    String str = "<" + paramString2 + ">";
    paramString1 = "</" + paramString2 + ">";
    if (paramBoolean.booleanValue()) {
      int i = paramString3.indexOf(str);
      paramString2 = paramString3.substring(str.length() + i, paramString3.length());
      return paramString2.substring(0, paramString2.indexOf(paramString1));
    } 
    paramString2 = paramString3.substring(paramString3.indexOf(str), paramString3.length());
    return paramString2.substring(0, paramString2.indexOf(paramString1) + paramString1.length());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */