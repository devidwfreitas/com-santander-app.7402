package org.apache.commons.cli;

import java.util.ArrayList;

public class GnuParser extends Parser {
  protected String[] flatten(Options paramOptions, String[] paramArrayOfString, boolean paramBoolean) {
    ArrayList<String> arrayList = new ArrayList();
    int i = 0;
    boolean bool = false;
    while (i < paramArrayOfString.length) {
      String str = paramArrayOfString[i];
      if ("--".equals(str)) {
        bool = true;
        arrayList.add("--");
      } else if ("-".equals(str)) {
        arrayList.add("-");
      } else if (str.startsWith("-")) {
        String str1 = Util.stripLeadingHyphens(str);
        if (paramOptions.hasOption(str1)) {
          arrayList.add(str);
        } else if (str1.indexOf('=') != -1 && paramOptions.hasOption(str1.substring(0, str1.indexOf('=')))) {
          arrayList.add(str.substring(0, str.indexOf('=')));
          arrayList.add(str.substring(str.indexOf('=') + 1));
        } else if (paramOptions.hasOption(str.substring(0, 2))) {
          arrayList.add(str.substring(0, 2));
          arrayList.add(str.substring(2));
        } else {
          arrayList.add(str);
          bool = paramBoolean;
        } 
      } else {
        arrayList.add(str);
      } 
      int j = i;
      if (bool) {
        i++;
        while (true) {
          j = i;
          if (i < paramArrayOfString.length) {
            arrayList.add(paramArrayOfString[i]);
            i++;
            continue;
          } 
          break;
        } 
      } 
      i = j + 1;
    } 
    return arrayList.<String>toArray(new String[arrayList.size()]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\GnuParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */