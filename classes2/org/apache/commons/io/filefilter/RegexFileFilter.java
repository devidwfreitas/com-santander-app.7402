package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.regex.Pattern;
import org.apache.commons.io.IOCase;

public class RegexFileFilter extends AbstractFileFilter implements Serializable {
  private final Pattern pattern;
  
  public RegexFileFilter(String paramString) {
    if (paramString == null)
      throw new IllegalArgumentException("Pattern is missing"); 
    this.pattern = Pattern.compile(paramString);
  }
  
  public RegexFileFilter(String paramString, int paramInt) {
    if (paramString == null)
      throw new IllegalArgumentException("Pattern is missing"); 
    this.pattern = Pattern.compile(paramString, paramInt);
  }
  
  public RegexFileFilter(String paramString, IOCase paramIOCase) {
    if (paramString == null)
      throw new IllegalArgumentException("Pattern is missing"); 
    byte b2 = 0;
    byte b1 = b2;
    if (paramIOCase != null) {
      b1 = b2;
      if (!paramIOCase.isCaseSensitive())
        b1 = 2; 
    } 
    this.pattern = Pattern.compile(paramString, b1);
  }
  
  public RegexFileFilter(Pattern paramPattern) {
    if (paramPattern == null)
      throw new IllegalArgumentException("Pattern is missing"); 
    this.pattern = paramPattern;
  }
  
  public boolean accept(File paramFile, String paramString) {
    return this.pattern.matcher(paramString).matches();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\RegexFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */