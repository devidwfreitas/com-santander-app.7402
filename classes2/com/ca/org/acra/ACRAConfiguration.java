package com.ca.org.acra;

import com.ca.org.acra.annotation.ReportsCrashes;
import java.lang.annotation.Annotation;

public class ACRAConfiguration implements ReportsCrashes {
  private String[] mAdditionalDropboxTags = null;
  
  private String[] mAdditionalSharedPreferences = null;
  
  private String mApplicationLogFile = null;
  
  private Integer mApplicationLogFileLines = null;
  
  private Integer mConnectionTimeout = null;
  
  private ReportField[] mCustomReportContent = null;
  
  private Boolean mDeleteOldUnsentReportsOnApplicationStart = null;
  
  private Boolean mDeleteUnapprovedReportsOnApplicationStart = null;
  
  private Boolean mDisableSSLCertValidation = null;
  
  private Integer mDropboxCollectionMinutes = null;
  
  private String[] mExcludeMatchingSharedPreferencesKeys = null;
  
  private Boolean mForceCloseDialogAfterToast = null;
  
  private String mFormKey = null;
  
  private String mFormUri = null;
  
  private String mFormUriBasicAuthLogin = null;
  
  private String mFormUriBasicAuthPassword = null;
  
  private String mGoogleFormUrlFormat = null;
  
  private Boolean mIncludeDropboxSystemTags = null;
  
  private String[] mLogcatArguments = null;
  
  private Boolean mLogcatFilterByPid = null;
  
  private String mMailTo = null;
  
  private Integer mMaxNumberOfRequestRetries = null;
  
  private ReportingInteractionMode mMode = null;
  
  private ReportsCrashes mReportsCrashes = null;
  
  private Integer mResDialogCommentPrompt = null;
  
  private Integer mResDialogEmailPrompt = null;
  
  private Integer mResDialogIcon = null;
  
  private Integer mResDialogOkToast = null;
  
  private Integer mResDialogText = null;
  
  private Integer mResDialogTitle = null;
  
  private Integer mResNotifIcon = null;
  
  private Integer mResNotifText = null;
  
  private Integer mResNotifTickerText = null;
  
  private Integer mResNotifTitle = null;
  
  private Integer mResToastText = null;
  
  private Boolean mSendReportsInDevMode = null;
  
  private Integer mSharedPreferenceMode = null;
  
  private String mSharedPreferenceName = null;
  
  private Integer mSocketTimeout = null;
  
  public ACRAConfiguration(ReportsCrashes paramReportsCrashes) {
    this.mReportsCrashes = paramReportsCrashes;
  }
  
  public String[] additionalDropBoxTags() {
    return (this.mAdditionalDropboxTags != null) ? this.mAdditionalDropboxTags : ((this.mReportsCrashes != null) ? this.mReportsCrashes.additionalDropBoxTags() : new String[0]);
  }
  
  public String[] additionalSharedPreferences() {
    return (this.mAdditionalSharedPreferences != null) ? this.mAdditionalSharedPreferences : ((this.mReportsCrashes != null) ? this.mReportsCrashes.additionalSharedPreferences() : new String[0]);
  }
  
  public Class<? extends Annotation> annotationType() {
    return this.mReportsCrashes.annotationType();
  }
  
  public String applicationLogFile() {
    return (this.mApplicationLogFile != null) ? this.mApplicationLogFile : ((this.mReportsCrashes != null) ? this.mReportsCrashes.applicationLogFile() : "");
  }
  
  public int applicationLogFileLines() {
    return (this.mApplicationLogFileLines != null) ? this.mApplicationLogFileLines.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.applicationLogFileLines() : 100);
  }
  
  public int connectionTimeout() {
    return (this.mConnectionTimeout != null) ? this.mConnectionTimeout.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.connectionTimeout() : 3000);
  }
  
  public ReportField[] customReportContent() {
    return (this.mCustomReportContent != null) ? this.mCustomReportContent : ((this.mReportsCrashes != null) ? this.mReportsCrashes.customReportContent() : new ReportField[0]);
  }
  
  public boolean deleteOldUnsentReportsOnApplicationStart() {
    return (this.mDeleteOldUnsentReportsOnApplicationStart != null) ? this.mDeleteOldUnsentReportsOnApplicationStart.booleanValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.deleteOldUnsentReportsOnApplicationStart() : true);
  }
  
  public boolean deleteUnapprovedReportsOnApplicationStart() {
    return (this.mDeleteUnapprovedReportsOnApplicationStart != null) ? this.mDeleteUnapprovedReportsOnApplicationStart.booleanValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.deleteUnapprovedReportsOnApplicationStart() : true);
  }
  
  public boolean disableSSLCertValidation() {
    return (this.mDisableSSLCertValidation != null) ? this.mDisableSSLCertValidation.booleanValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.disableSSLCertValidation() : false);
  }
  
  public int dropboxCollectionMinutes() {
    return (this.mDropboxCollectionMinutes != null) ? this.mDropboxCollectionMinutes.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.dropboxCollectionMinutes() : 5);
  }
  
  public String[] excludeMatchingSharedPreferencesKeys() {
    return (this.mExcludeMatchingSharedPreferencesKeys != null) ? this.mExcludeMatchingSharedPreferencesKeys : ((this.mReportsCrashes != null) ? this.mReportsCrashes.excludeMatchingSharedPreferencesKeys() : new String[0]);
  }
  
  public boolean forceCloseDialogAfterToast() {
    return (this.mForceCloseDialogAfterToast != null) ? this.mForceCloseDialogAfterToast.booleanValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.forceCloseDialogAfterToast() : false);
  }
  
  public String formKey() {
    return (this.mFormKey != null) ? this.mFormKey : ((this.mReportsCrashes != null) ? this.mReportsCrashes.formKey() : "");
  }
  
  public String formUri() {
    return (this.mFormUri != null) ? this.mFormUri : ((this.mReportsCrashes != null) ? this.mReportsCrashes.formUri() : "");
  }
  
  public String formUriBasicAuthLogin() {
    return (this.mFormUriBasicAuthLogin != null) ? this.mFormUriBasicAuthLogin : ((this.mReportsCrashes != null) ? this.mReportsCrashes.formUriBasicAuthLogin() : "ACRA-NULL-STRING");
  }
  
  public String formUriBasicAuthPassword() {
    return (this.mFormUriBasicAuthPassword != null) ? this.mFormUriBasicAuthPassword : ((this.mReportsCrashes != null) ? this.mReportsCrashes.formUriBasicAuthPassword() : "ACRA-NULL-STRING");
  }
  
  public String googleFormUrlFormat() {
    return (this.mGoogleFormUrlFormat != null) ? this.mGoogleFormUrlFormat : ((this.mReportsCrashes != null) ? this.mReportsCrashes.googleFormUrlFormat() : "https://docs.google.com/spreadsheet/formResponse?formkey=%s&ifq");
  }
  
  public boolean includeDropBoxSystemTags() {
    return (this.mIncludeDropboxSystemTags != null) ? this.mIncludeDropboxSystemTags.booleanValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.includeDropBoxSystemTags() : false);
  }
  
  public String[] logcatArguments() {
    return (this.mLogcatArguments != null) ? this.mLogcatArguments : ((this.mReportsCrashes != null) ? this.mReportsCrashes.logcatArguments() : new String[] { "-t", Integer.toString(100), "-v", "time" });
  }
  
  public boolean logcatFilterByPid() {
    return (this.mLogcatFilterByPid != null) ? this.mLogcatFilterByPid.booleanValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.logcatFilterByPid() : false);
  }
  
  public String mailTo() {
    return (this.mMailTo != null) ? this.mMailTo : ((this.mReportsCrashes != null) ? this.mReportsCrashes.mailTo() : "");
  }
  
  public int maxNumberOfRequestRetries() {
    return (this.mMaxNumberOfRequestRetries != null) ? this.mMaxNumberOfRequestRetries.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.maxNumberOfRequestRetries() : 3);
  }
  
  public ReportingInteractionMode mode() {
    return (this.mMode != null) ? this.mMode : ((this.mReportsCrashes != null) ? this.mReportsCrashes.mode() : ReportingInteractionMode.SILENT);
  }
  
  public int resDialogCommentPrompt() {
    return (this.mResDialogCommentPrompt != null) ? this.mResDialogCommentPrompt.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resDialogCommentPrompt() : 0);
  }
  
  public int resDialogEmailPrompt() {
    return (this.mResDialogEmailPrompt != null) ? this.mResDialogEmailPrompt.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resDialogEmailPrompt() : 0);
  }
  
  public int resDialogIcon() {
    return (this.mResDialogIcon != null) ? this.mResDialogIcon.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resDialogIcon() : 17301543);
  }
  
  public int resDialogOkToast() {
    return (this.mResDialogOkToast != null) ? this.mResDialogOkToast.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resDialogOkToast() : 0);
  }
  
  public int resDialogText() {
    return (this.mResDialogText != null) ? this.mResDialogText.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resDialogText() : 0);
  }
  
  public int resDialogTitle() {
    return (this.mResDialogTitle != null) ? this.mResDialogTitle.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resDialogTitle() : 0);
  }
  
  public int resNotifIcon() {
    return (this.mResNotifIcon != null) ? this.mResNotifIcon.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resNotifIcon() : 17301624);
  }
  
  public int resNotifText() {
    return (this.mResNotifText != null) ? this.mResNotifText.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resNotifText() : 0);
  }
  
  public int resNotifTickerText() {
    return (this.mResNotifTickerText != null) ? this.mResNotifTickerText.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resNotifTickerText() : 0);
  }
  
  public int resNotifTitle() {
    return (this.mResNotifTitle != null) ? this.mResNotifTitle.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resNotifTitle() : 0);
  }
  
  public int resToastText() {
    return (this.mResToastText != null) ? this.mResToastText.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.resToastText() : 0);
  }
  
  public boolean sendReportsInDevMode() {
    return (this.mSendReportsInDevMode != null) ? this.mSendReportsInDevMode.booleanValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.sendReportsInDevMode() : true);
  }
  
  public void setAdditionalDropboxTags(String[] paramArrayOfString) {
    this.mAdditionalDropboxTags = paramArrayOfString;
  }
  
  public void setAdditionalSharedPreferences(String[] paramArrayOfString) {
    this.mAdditionalSharedPreferences = paramArrayOfString;
  }
  
  public void setApplicationLogFile(String paramString) {
    this.mApplicationLogFile = paramString;
  }
  
  public void setApplicationLogFileLines(int paramInt) {
    this.mApplicationLogFileLines = Integer.valueOf(paramInt);
  }
  
  public void setConnectionTimeout(Integer paramInteger) {
    this.mConnectionTimeout = paramInteger;
  }
  
  public void setCustomReportContent(ReportField[] paramArrayOfReportField) {
    this.mCustomReportContent = paramArrayOfReportField;
  }
  
  public void setDeleteOldUnsentReportsOnApplicationStart(Boolean paramBoolean) {
    this.mDeleteOldUnsentReportsOnApplicationStart = paramBoolean;
  }
  
  public void setDeleteUnapprovedReportsOnApplicationStart(Boolean paramBoolean) {
    this.mDeleteUnapprovedReportsOnApplicationStart = paramBoolean;
  }
  
  public void setDisableSSLCertValidation(boolean paramBoolean) {
    this.mDisableSSLCertValidation = Boolean.valueOf(paramBoolean);
  }
  
  public void setDropboxCollectionMinutes(Integer paramInteger) {
    this.mDropboxCollectionMinutes = paramInteger;
  }
  
  public void setExcludeMatchingSharedPreferencesKeys(String[] paramArrayOfString) {
    this.mExcludeMatchingSharedPreferencesKeys = paramArrayOfString;
  }
  
  public void setForceCloseDialogAfterToast(Boolean paramBoolean) {
    this.mForceCloseDialogAfterToast = paramBoolean;
  }
  
  public void setFormKey(String paramString) {
    this.mFormKey = paramString;
  }
  
  public void setFormUri(String paramString) {
    this.mFormUri = paramString;
  }
  
  public void setFormUriBasicAuthLogin(String paramString) {
    this.mFormUriBasicAuthLogin = paramString;
  }
  
  public void setFormUriBasicAuthPassword(String paramString) {
    this.mFormUriBasicAuthPassword = paramString;
  }
  
  public void setIncludeDropboxSystemTags(Boolean paramBoolean) {
    this.mIncludeDropboxSystemTags = paramBoolean;
  }
  
  public void setLogcatArguments(String[] paramArrayOfString) {
    this.mLogcatArguments = paramArrayOfString;
  }
  
  public void setLogcatFilterByPid(Boolean paramBoolean) {
    this.mLogcatFilterByPid = paramBoolean;
  }
  
  public void setMailTo(String paramString) {
    this.mMailTo = paramString;
  }
  
  public void setMaxNumberOfRequestRetries(Integer paramInteger) {
    this.mMaxNumberOfRequestRetries = paramInteger;
  }
  
  public void setMode(ReportingInteractionMode paramReportingInteractionMode) throws ACRAConfigurationException {
    this.mMode = paramReportingInteractionMode;
    ACRA.checkCrashResources();
  }
  
  public void setResDialogCommentPrompt(int paramInt) {
    this.mResDialogCommentPrompt = Integer.valueOf(paramInt);
  }
  
  public void setResDialogEmailPrompt(int paramInt) {
    this.mResDialogEmailPrompt = Integer.valueOf(paramInt);
  }
  
  public void setResDialogIcon(int paramInt) {
    this.mResDialogIcon = Integer.valueOf(paramInt);
  }
  
  public void setResDialogOkToast(int paramInt) {
    this.mResDialogOkToast = Integer.valueOf(paramInt);
  }
  
  public void setResDialogText(int paramInt) {
    this.mResDialogText = Integer.valueOf(paramInt);
  }
  
  public void setResDialogTitle(int paramInt) {
    this.mResDialogTitle = Integer.valueOf(paramInt);
  }
  
  public void setResNotifIcon(int paramInt) {
    this.mResNotifIcon = Integer.valueOf(paramInt);
  }
  
  public void setResNotifText(int paramInt) {
    this.mResNotifText = Integer.valueOf(paramInt);
  }
  
  public void setResNotifTickerText(int paramInt) {
    this.mResNotifTickerText = Integer.valueOf(paramInt);
  }
  
  public void setResNotifTitle(int paramInt) {
    this.mResNotifTitle = Integer.valueOf(paramInt);
  }
  
  public void setResToastText(int paramInt) {
    this.mResToastText = Integer.valueOf(paramInt);
  }
  
  public void setSendReportsInDevMode(Boolean paramBoolean) {
    this.mSendReportsInDevMode = paramBoolean;
  }
  
  public void setSharedPreferenceMode(Integer paramInteger) {
    this.mSharedPreferenceMode = paramInteger;
  }
  
  public void setSharedPreferenceName(String paramString) {
    this.mSharedPreferenceName = paramString;
  }
  
  public void setSocketTimeout(Integer paramInteger) {
    this.mSocketTimeout = paramInteger;
  }
  
  public int sharedPreferencesMode() {
    return (this.mSharedPreferenceMode != null) ? this.mSharedPreferenceMode.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.sharedPreferencesMode() : 0);
  }
  
  public String sharedPreferencesName() {
    return (this.mSharedPreferenceName != null) ? this.mSharedPreferenceName : ((this.mReportsCrashes != null) ? this.mReportsCrashes.sharedPreferencesName() : "");
  }
  
  public int socketTimeout() {
    return (this.mSocketTimeout != null) ? this.mSocketTimeout.intValue() : ((this.mReportsCrashes != null) ? this.mReportsCrashes.socketTimeout() : 5000);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\ACRAConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */