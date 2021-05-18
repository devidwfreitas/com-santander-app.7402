package com.ca.android.wrapper.tools;

import com.ca.android.wrapper.config.CommonConfig;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public class SmaliReplaceTask implements Callable<String> {
  public CommonConfig commonConfig;
  
  public List<String> fileNames;
  
  public SmaliReplaceTask(CommonConfig paramCommonConfig, List<String> paramList) {
    this.commonConfig = paramCommonConfig;
    this.fileNames = paramList;
  }
  
  public String call() {
    return processSmaliBatch();
  }
  
  public String processSmaliBatch() {
    Iterator<String> iterator = this.fileNames.iterator();
    for (int i = 1; iterator.hasNext(); i++) {
      String str = iterator.next();
      ReplaceUtil.processRegex(str, this.commonConfig.getRegexReplacementList(), this.commonConfig.isMultiDex);
      ReplaceUtil.processClassReplacements(str, this.commonConfig.getClassReplacementList(), this.commonConfig.isMultiDex);
    } 
    return "Success";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\tools\SmaliReplaceTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */