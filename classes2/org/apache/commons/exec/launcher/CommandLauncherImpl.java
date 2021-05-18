package org.apache.commons.exec.launcher;

import java.io.File;
import java.util.Map;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.environment.EnvironmentUtils;

public abstract class CommandLauncherImpl implements CommandLauncher {
  public Process exec(CommandLine paramCommandLine, Map paramMap) {
    String[] arrayOfString = EnvironmentUtils.toStrings(paramMap);
    return Runtime.getRuntime().exec(paramCommandLine.toStrings(), arrayOfString);
  }
  
  public abstract Process exec(CommandLine paramCommandLine, Map paramMap, File paramFile);
  
  public boolean isFailure(int paramInt) {
    return (paramInt != 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\launcher\CommandLauncherImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */