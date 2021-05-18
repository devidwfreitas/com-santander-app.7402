package org.apache.commons.exec.launcher;

import java.io.File;
import java.util.Map;
import org.apache.commons.exec.CommandLine;

public class WinNTCommandLauncher extends CommandLauncherProxy {
  public WinNTCommandLauncher(CommandLauncher paramCommandLauncher) {
    super(paramCommandLauncher);
  }
  
  public Process exec(CommandLine paramCommandLine, Map paramMap, File paramFile) {
    if (paramFile == null)
      return exec(paramCommandLine, paramMap); 
    CommandLine commandLine = new CommandLine("cmd");
    commandLine.addArgument("/c");
    commandLine.addArguments(paramCommandLine.toStrings());
    return exec(commandLine, paramMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\launcher\WinNTCommandLauncher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */