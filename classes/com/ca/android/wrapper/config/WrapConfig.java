package com.ca.android.wrapper.config;

import com.ca.android.wrapper.WrapperStatusBean;
import java.beans.PropertyChangeListener;

public class WrapConfig {
  private String apkFile;
  
  private WrapperStatusBean bean;
  
  private String buildType;
  
  private boolean disableJsInterception;
  
  private PropertyChangeListener listener;
  
  private boolean nores;
  
  private String outputFileName;
  
  private String plistFile;
  
  private String rulesFile;
  
  private SignConfig signConfig;
  
  private boolean verbose;
  
  public String getApkFile() {
    return this.apkFile;
  }
  
  public WrapperStatusBean getBean() {
    return this.bean;
  }
  
  public String getBuildType() {
    return this.buildType;
  }
  
  public PropertyChangeListener getListener() {
    return this.listener;
  }
  
  public String getOutputFileName() {
    return this.outputFileName;
  }
  
  public String getPlistFile() {
    return this.plistFile;
  }
  
  public String getRulesFile() {
    return this.rulesFile;
  }
  
  public SignConfig getSignConfig() {
    return this.signConfig;
  }
  
  public boolean isDisableJsInterception() {
    return this.disableJsInterception;
  }
  
  public boolean isNores() {
    return this.nores;
  }
  
  public boolean isVerbose() {
    return this.verbose;
  }
  
  public void setApkFile(String paramString) {
    this.apkFile = paramString;
  }
  
  public void setBean(WrapperStatusBean paramWrapperStatusBean) {
    this.bean = paramWrapperStatusBean;
  }
  
  public void setBuildType(String paramString) {
    this.buildType = paramString;
  }
  
  public void setDisableJsInterception(boolean paramBoolean) {
    this.disableJsInterception = paramBoolean;
  }
  
  public void setListener(PropertyChangeListener paramPropertyChangeListener) {
    this.listener = paramPropertyChangeListener;
  }
  
  public void setNores(boolean paramBoolean) {
    this.nores = paramBoolean;
  }
  
  public void setOutputFileName(String paramString) {
    this.outputFileName = paramString;
  }
  
  public void setPlistFile(String paramString) {
    this.plistFile = paramString;
  }
  
  public void setRulesFile(String paramString) {
    this.rulesFile = paramString;
  }
  
  public void setSignConfig(SignConfig paramSignConfig) {
    this.signConfig = paramSignConfig;
  }
  
  public void setVerbose(boolean paramBoolean) {
    this.verbose = paramBoolean;
  }
  
  public String toString() {
    return "WrapConfig{apkFile='" + this.apkFile + '\'' + ", plistFile='" + this.plistFile + '\'' + ", listener=" + this.listener + ", verbose=" + this.verbose + ", nores=" + this.nores + ", disableJsInterception=" + this.disableJsInterception + ", bean=" + this.bean + ", rulesFile='" + this.rulesFile + '\'' + ", buildType='" + this.buildType + '\'' + ", signConfig='" + this.signConfig + '\'' + ", outputFileName='" + this.outputFileName + '\'' + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\config\WrapConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */