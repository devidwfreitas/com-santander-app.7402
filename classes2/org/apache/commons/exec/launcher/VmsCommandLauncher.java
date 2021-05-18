package org.apache.commons.exec.launcher;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Map;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.util.StringUtils;

public class VmsCommandLauncher extends Java13CommandLauncher {
  private File createCommandFile(CommandLine paramCommandLine, Map paramMap) {
    File file = File.createTempFile("EXEC", ".TMP");
    file.deleteOnExit();
    try {
      String[] arrayOfString2;
      PrintWriter printWriter = new PrintWriter(new FileWriter(file.getAbsolutePath(), true));
      if (paramMap != null)
        try {
        
        } finally {
          PrintWriter printWriter1 = printWriter;
          if (printWriter1 != null)
            printWriter1.close(); 
        }  
      String str = paramCommandLine.getExecutable();
      if (paramCommandLine.isFile()) {
        printWriter.print("$ @");
        arrayOfString2 = StringUtils.split(str, "/");
        printWriter.print(arrayOfString2[0]);
        printWriter.print(":[");
        printWriter.print(arrayOfString2[1]);
        int k = arrayOfString2.length - 1;
        int j;
        for (j = 2; j < k; j++) {
          printWriter.print(".");
          printWriter.print(arrayOfString2[j]);
        } 
        printWriter.print("]");
        printWriter.print(arrayOfString2[k]);
      } else {
        printWriter.print("$ ");
        printWriter.print((String)arrayOfString2);
      } 
      String[] arrayOfString1 = paramCommandLine.getArguments();
      int i;
      for (i = 0; i < arrayOfString1.length; i++) {
        printWriter.println(" -");
        printWriter.print(arrayOfString1[i]);
      } 
      printWriter.println();
      return file;
    } finally {
      paramCommandLine = null;
    } 
    if (paramMap != null)
      paramMap.close(); 
    throw paramCommandLine;
  }
  
  public Process exec(CommandLine paramCommandLine, Map paramMap) {
    return super.exec(new CommandLine(createCommandFile(paramCommandLine, paramMap).getPath()), paramMap);
  }
  
  public Process exec(CommandLine paramCommandLine, Map paramMap, File paramFile) {
    return super.exec(new CommandLine(createCommandFile(paramCommandLine, paramMap).getPath()), paramMap, paramFile);
  }
  
  public boolean isFailure(int paramInt) {
    return (paramInt % 2 == 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\launcher\VmsCommandLauncher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */