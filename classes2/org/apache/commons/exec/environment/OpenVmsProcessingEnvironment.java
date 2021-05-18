package org.apache.commons.exec.environment;

import java.io.BufferedReader;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.exec.CommandLine;

public class OpenVmsProcessingEnvironment extends DefaultProcessingEnvironment {
  private Map addVMSenvironmentVariables(Map<String, String> paramMap, BufferedReader paramBufferedReader) {
    while (true) {
      String str = paramBufferedReader.readLine();
      if (str != null) {
        int i = str.indexOf("==");
        if (i > 0) {
          String str1 = str.substring(0, i).trim();
          str = str.substring(i + "==".length()).trim();
          paramMap.put(str1, str.substring(1, str.length() - 1));
        } 
        continue;
      } 
      return paramMap;
    } 
  }
  
  protected Map createProcEnvironment() {
    if (this.procEnvironment == null) {
      BufferedReader bufferedReader = runProcEnvCommand();
      this.procEnvironment = addVMSenvironmentVariables(new HashMap<Object, Object>(), bufferedReader);
    } 
    return this.procEnvironment;
  }
  
  protected CommandLine getProcEnvCommand() {
    CommandLine commandLine = new CommandLine("show");
    commandLine.addArgument("symbol/global");
    commandLine.addArgument("*");
    return commandLine;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\environment\OpenVmsProcessingEnvironment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */