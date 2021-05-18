package org.apache.commons.cli;

public class MissingArgumentException extends ParseException {
  private Option option;
  
  public MissingArgumentException(String paramString) {
    super(paramString);
  }
  
  public MissingArgumentException(Option paramOption) {
    this("Missing argument for option: " + paramOption.getKey());
    this.option = paramOption;
  }
  
  public Option getOption() {
    return this.option;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\MissingArgumentException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */