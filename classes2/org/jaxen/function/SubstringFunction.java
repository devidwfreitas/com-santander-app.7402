package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class SubstringFunction implements Function {
  private static String unicodeSubstring(String paramString, int paramInt1, int paramInt2) {
    int i = 0;
    StringBuffer stringBuffer = new StringBuffer(paramString.length());
    int j = 0;
    while (j < paramInt2) {
      char c = paramString.charAt(i);
      if (j >= paramInt1)
        stringBuffer.append(c); 
      int k = i;
      if (c >= '?') {
        k = ++i;
        if (j >= paramInt1) {
          stringBuffer.append(paramString.charAt(i));
          k = i;
        } 
      } 
      j++;
      i = k + 1;
    } 
    return stringBuffer.toString();
  }
  
  public Object call(Context paramContext, List paramList) {
    int j;
    int k = 0;
    int n = paramList.size();
    if (n < 2 || n > 3)
      throw new FunctionCallException("substring() requires two or three arguments."); 
    Navigator navigator = paramContext.getNavigator();
    String str = StringFunction.evaluate(paramList.get(0), navigator);
    if (str == null)
      return ""; 
    int i = StringLengthFunction.evaluate(paramList.get(0), navigator).intValue();
    if (i == 0)
      return ""; 
    Double double_ = NumberFunction.evaluate(paramList.get(1), navigator);
    if (double_.isNaN())
      return ""; 
    int m = RoundFunction.evaluate(double_, navigator).intValue() - 1;
    if (n == 3) {
      Double double_1 = NumberFunction.evaluate(paramList.get(2), navigator);
      if (!double_1.isNaN()) {
        j = RoundFunction.evaluate(double_1, navigator).intValue();
      } else {
        j = 0;
      } 
    } else {
      j = i;
    } 
    if (j < 0)
      return ""; 
    j += m;
    if (n == 2)
      j = i; 
    if (m >= 0) {
      if (m > i)
        return ""; 
      k = m;
    } 
    if (j > i) {
      m = i;
    } else {
      m = j;
      if (j < k)
        return ""; 
    } 
    return (i == str.length()) ? str.substring(k, m) : unicodeSubstring(str, k, m);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\SubstringFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */