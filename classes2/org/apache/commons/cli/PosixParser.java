package org.apache.commons.cli;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class PosixParser extends Parser {
  private Option currentOption;
  
  private boolean eatTheRest;
  
  private Options options;
  
  private List tokens = new ArrayList();
  
  private void gobble(Iterator paramIterator) {
    if (this.eatTheRest)
      while (paramIterator.hasNext())
        this.tokens.add(paramIterator.next());  
  }
  
  private void init() {
    this.eatTheRest = false;
    this.tokens.clear();
  }
  
  private void processNonOptionToken(String paramString, boolean paramBoolean) {
    if (paramBoolean && (this.currentOption == null || !this.currentOption.hasArg())) {
      this.eatTheRest = true;
      this.tokens.add("--");
    } 
    this.tokens.add(paramString);
  }
  
  private void processOptionToken(String paramString, boolean paramBoolean) {
    if (paramBoolean && !this.options.hasOption(paramString))
      this.eatTheRest = true; 
    if (this.options.hasOption(paramString))
      this.currentOption = this.options.getOption(paramString); 
    this.tokens.add(paramString);
  }
  
  protected void burstToken(String paramString, boolean paramBoolean) {
    for (int i = 1;; i++) {
      if (i < paramString.length()) {
        String str = String.valueOf(paramString.charAt(i));
        if (this.options.hasOption(str)) {
          this.tokens.add("-" + str);
          this.currentOption = this.options.getOption(str);
          if (this.currentOption.hasArg() && paramString.length() != i + 1) {
            this.tokens.add(paramString.substring(i + 1));
            return;
          } 
        } else {
          if (paramBoolean) {
            processNonOptionToken(paramString.substring(i), true);
            return;
          } 
          this.tokens.add(paramString);
          return;
        } 
      } else {
        return;
      } 
    } 
  }
  
  protected String[] flatten(Options paramOptions, String[] paramArrayOfString, boolean paramBoolean) {
    init();
    this.options = paramOptions;
    Iterator<String> iterator = Arrays.<String>asList(paramArrayOfString).iterator();
    while (iterator.hasNext()) {
      String str = iterator.next();
      if (str.startsWith("--")) {
        String str1;
        int i = str.indexOf('=');
        if (i == -1) {
          str1 = str;
        } else {
          str1 = str.substring(0, i);
        } 
        if (!paramOptions.hasOption(str1)) {
          processNonOptionToken(str, paramBoolean);
        } else {
          this.currentOption = paramOptions.getOption(str1);
          this.tokens.add(str1);
          if (i != -1)
            this.tokens.add(str.substring(i + 1)); 
        } 
      } else if ("-".equals(str)) {
        this.tokens.add(str);
      } else if (str.startsWith("-")) {
        if (str.length() == 2 || paramOptions.hasOption(str)) {
          processOptionToken(str, paramBoolean);
        } else {
          burstToken(str, paramBoolean);
        } 
      } else {
        processNonOptionToken(str, paramBoolean);
      } 
      gobble(iterator);
    } 
    return (String[])this.tokens.toArray((Object[])new String[this.tokens.size()]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\PosixParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */