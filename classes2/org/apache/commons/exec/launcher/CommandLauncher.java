package org.apache.commons.exec.launcher;

import java.io.File;
import java.util.Map;
import org.apache.commons.exec.CommandLine;

public interface CommandLauncher {
  Process exec(CommandLine paramCommandLine, Map paramMap);
  
  Process exec(CommandLine paramCommandLine, Map paramMap, File paramFile);
  
  boolean isFailure(int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\launcher\CommandLauncher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */