package org.apache.commons.exec;

class CommandLine$Argument {
  private final boolean handleQuoting;
  
  private final CommandLine this$0;
  
  private final String value;
  
  private CommandLine$Argument(CommandLine paramCommandLine, String paramString, boolean paramBoolean) {
    this.this$0 = paramCommandLine;
    this.value = paramString.trim();
    this.handleQuoting = paramBoolean;
  }
  
  CommandLine$Argument(CommandLine paramCommandLine, String paramString, boolean paramBoolean, CommandLine$1 paramCommandLine$1) {
    this(paramCommandLine, paramString, paramBoolean);
  }
  
  private String getValue() {
    return this.value;
  }
  
  private boolean isHandleQuoting() {
    return this.handleQuoting;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\CommandLine$Argument.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */