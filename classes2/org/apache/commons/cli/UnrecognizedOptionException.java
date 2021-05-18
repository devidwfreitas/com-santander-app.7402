package org.apache.commons.cli;

public class UnrecognizedOptionException extends ParseException {
  private String option;
  
  public UnrecognizedOptionException(String paramString) {
    super(paramString);
  }
  
  public UnrecognizedOptionException(String paramString1, String paramString2) {
    this(paramString1);
    this.option = paramString2;
  }
  
  public String getOption() {
    return this.option;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\UnrecognizedOptionException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */