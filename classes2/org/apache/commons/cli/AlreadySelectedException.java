package org.apache.commons.cli;

public class AlreadySelectedException extends ParseException {
  private OptionGroup group;
  
  private Option option;
  
  public AlreadySelectedException(String paramString) {
    super(paramString);
  }
  
  public AlreadySelectedException(OptionGroup paramOptionGroup, Option paramOption) {
    this("The option '" + paramOption.getKey() + "' was specified but an option from this group " + "has already been selected: '" + paramOptionGroup.getSelected() + "'");
    this.group = paramOptionGroup;
    this.option = paramOption;
  }
  
  public Option getOption() {
    return this.option;
  }
  
  public OptionGroup getOptionGroup() {
    return this.group;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\AlreadySelectedException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */