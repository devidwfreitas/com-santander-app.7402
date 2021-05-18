package org.apache.commons.exec.launcher;

import java.io.File;
import java.util.Map;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.environment.EnvironmentUtils;

public class Java13CommandLauncher extends CommandLauncherImpl {
  public Process exec(CommandLine paramCommandLine, Map paramMap, File paramFile) {
    String[] arrayOfString = EnvironmentUtils.toStrings(paramMap);
    return Runtime.getRuntime().exec(paramCommandLine.toStrings(), arrayOfString, paramFile);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\launcher\Java13CommandLauncher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */