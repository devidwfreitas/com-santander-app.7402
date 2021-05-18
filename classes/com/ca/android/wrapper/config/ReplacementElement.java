package com.ca.android.wrapper.config;

import java.util.ArrayList;
import java.util.List;

public class ReplacementElement {
  private String file;
  
  private String insertAfter;
  
  private String insertWhat;
  
  private String matcher;
  
  private String methodFrom;
  
  private String methodTo;
  
  private List<String> patterns = new ArrayList<String>();
  
  private String replaceFor;
  
  private String replaceFrom;
  
  private String replaceTo;
  
  private String skipFiles;
  
  private String type;
  
  public String getFile() {
    return this.file;
  }
  
  public String getInsertAfter() {
    return this.insertAfter;
  }
  
  public String getInsertWhat() {
    return this.insertWhat;
  }
  
  public String getMatcher() {
    return this.matcher;
  }
  
  public String getMethodFrom() {
    return this.methodFrom;
  }
  
  public String getMethodTo() {
    return this.methodTo;
  }
  
  public List<String> getPatterns() {
    return this.patterns;
  }
  
  public String getReplaceFor() {
    return this.replaceFor;
  }
  
  public String getReplaceFrom() {
    return this.replaceFrom;
  }
  
  public String getReplaceTo() {
    return this.replaceTo;
  }
  
  public String getSkipFiles() {
    return this.skipFiles;
  }
  
  public String getType() {
    return this.type;
  }
  
  public void setFile(String paramString) {
    this.file = paramString;
  }
  
  public void setInsertAfter(String paramString) {
    this.insertAfter = paramString;
  }
  
  public void setInsertWhat(String paramString) {
    this.insertWhat = paramString;
  }
  
  public void setMatcher(String paramString) {
    this.matcher = paramString;
  }
  
  public void setMethodFrom(String paramString) {
    this.methodFrom = paramString;
  }
  
  public void setMethodTo(String paramString) {
    this.methodTo = paramString;
  }
  
  public void setPatterns(List<String> paramList) {
    this.patterns = paramList;
  }
  
  public void setReplaceFor(String paramString) {
    this.replaceFor = paramString;
  }
  
  public void setReplaceFrom(String paramString) {
    this.replaceFrom = paramString;
  }
  
  public void setReplaceTo(String paramString) {
    this.replaceTo = paramString;
  }
  
  public void setSkipFiles(String paramString) {
    this.skipFiles = paramString;
  }
  
  public void setType(String paramString) {
    this.type = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\config\ReplacementElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */