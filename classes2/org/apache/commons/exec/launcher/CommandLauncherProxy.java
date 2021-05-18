package org.apache.commons.exec.launcher;

import java.util.Map;
import org.apache.commons.exec.CommandLine;

public abstract class CommandLauncherProxy extends CommandLauncherImpl {
  private final CommandLauncher myLauncher;
  
  public CommandLauncherProxy(CommandLauncher paramCommandLauncher) {
    this.myLauncher = paramCommandLauncher;
  }
  
  public Process exec(CommandLine paramCommandLine, Map paramMap) {
    return this.myLauncher.exec(paramCommandLine, paramMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\launcher\CommandLauncherProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */