package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.support.v4.os.AsyncTaskCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

class ActivityChooserModel extends DataSetObservable {
  static final String ATTRIBUTE_ACTIVITY = "activity";
  
  static final String ATTRIBUTE_TIME = "time";
  
  static final String ATTRIBUTE_WEIGHT = "weight";
  
  static final boolean DEBUG = false;
  
  private static final int DEFAULT_ACTIVITY_INFLATION = 5;
  
  private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1.0F;
  
  public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
  
  public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
  
  private static final String HISTORY_FILE_EXTENSION = ".xml";
  
  private static final int INVALID_INDEX = -1;
  
  static final String LOG_TAG = ActivityChooserModel.class.getSimpleName();
  
  static final String TAG_HISTORICAL_RECORD = "historical-record";
  
  static final String TAG_HISTORICAL_RECORDS = "historical-records";
  
  private static final Map<String, ActivityChooserModel> sDataModelRegistry;
  
  private static final Object sRegistryLock = new Object();
  
  private final List<ActivityChooserModel$ActivityResolveInfo> mActivities = new ArrayList<ActivityChooserModel$ActivityResolveInfo>();
  
  private ActivityChooserModel$OnChooseActivityListener mActivityChoserModelPolicy;
  
  private ActivityChooserModel$ActivitySorter mActivitySorter = new ActivityChooserModel$DefaultSorter(this);
  
  boolean mCanReadHistoricalData = true;
  
  final Context mContext;
  
  private final List<ActivityChooserModel$HistoricalRecord> mHistoricalRecords = new ArrayList<ActivityChooserModel$HistoricalRecord>();
  
  private boolean mHistoricalRecordsChanged = true;
  
  final String mHistoryFileName;
  
  private int mHistoryMaxSize = 50;
  
  private final Object mInstanceLock = new Object();
  
  private Intent mIntent;
  
  private boolean mReadShareHistoryCalled = false;
  
  private boolean mReloadActivities = false;
  
  static {
    sDataModelRegistry = new HashMap<String, ActivityChooserModel>();
  }
  
  private ActivityChooserModel(Context paramContext, String paramString) {
    this.mContext = paramContext.getApplicationContext();
    if (!TextUtils.isEmpty(paramString) && !paramString.endsWith(".xml")) {
      this.mHistoryFileName = paramString + ".xml";
      return;
    } 
    this.mHistoryFileName = paramString;
  }
  
  private boolean addHistoricalRecord(ActivityChooserModel$HistoricalRecord paramActivityChooserModel$HistoricalRecord) {
    boolean bool = this.mHistoricalRecords.add(paramActivityChooserModel$HistoricalRecord);
    if (bool) {
      this.mHistoricalRecordsChanged = true;
      pruneExcessiveHistoricalRecordsIfNeeded();
      persistHistoricalDataIfNeeded();
      sortActivitiesIfNeeded();
      notifyChanged();
    } 
    return bool;
  }
  
  private void ensureConsistentState() {
    boolean bool1 = loadActivitiesIfNeeded();
    boolean bool2 = readHistoricalDataIfNeeded();
    pruneExcessiveHistoricalRecordsIfNeeded();
    if (bool1 | bool2) {
      sortActivitiesIfNeeded();
      notifyChanged();
    } 
  }
  
  public static ActivityChooserModel get(Context paramContext, String paramString) {
    synchronized (sRegistryLock) {
      ActivityChooserModel activityChooserModel2 = sDataModelRegistry.get(paramString);
      ActivityChooserModel activityChooserModel1 = activityChooserModel2;
      if (activityChooserModel2 == null) {
        activityChooserModel1 = new ActivityChooserModel(paramContext, paramString);
        sDataModelRegistry.put(paramString, activityChooserModel1);
      } 
      return activityChooserModel1;
    } 
  }
  
  private boolean loadActivitiesIfNeeded() {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.mReloadActivities) {
      bool1 = bool2;
      if (this.mIntent != null) {
        this.mReloadActivities = false;
        this.mActivities.clear();
        List<ResolveInfo> list = this.mContext.getPackageManager().queryIntentActivities(this.mIntent, 0);
        int j = list.size();
        for (int i = 0; i < j; i++) {
          ResolveInfo resolveInfo = list.get(i);
          this.mActivities.add(new ActivityChooserModel$ActivityResolveInfo(this, resolveInfo));
        } 
        bool1 = true;
      } 
    } 
    return bool1;
  }
  
  private void persistHistoricalDataIfNeeded() {
    if (!this.mReadShareHistoryCalled)
      throw new IllegalStateException("No preceding call to #readHistoricalData"); 
    if (this.mHistoricalRecordsChanged) {
      this.mHistoricalRecordsChanged = false;
      if (!TextUtils.isEmpty(this.mHistoryFileName)) {
        AsyncTaskCompat.executeParallel(new ActivityChooserModel$PersistHistoryAsyncTask(this), new Object[] { new ArrayList<ActivityChooserModel$HistoricalRecord>(this.mHistoricalRecords), this.mHistoryFileName });
        return;
      } 
    } 
  }
  
  private void pruneExcessiveHistoricalRecordsIfNeeded() {
    int i = this.mHistoricalRecords.size() - this.mHistoryMaxSize;
    if (i > 0) {
      this.mHistoricalRecordsChanged = true;
      int j = 0;
      while (true) {
        if (j < i) {
          ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = this.mHistoricalRecords.remove(0);
          j++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private boolean readHistoricalDataIfNeeded() {
    if (this.mCanReadHistoricalData && this.mHistoricalRecordsChanged && !TextUtils.isEmpty(this.mHistoryFileName)) {
      this.mCanReadHistoricalData = false;
      this.mReadShareHistoryCalled = true;
      readHistoricalDataImpl();
      return true;
    } 
    return false;
  }
  
  private void readHistoricalDataImpl() {
    try {
      FileInputStream fileInputStream = this.mContext.openFileInput(this.mHistoryFileName);
      try {
        XmlPullParser xmlPullParser = Xml.newPullParser();
        xmlPullParser.setInput(fileInputStream, "UTF-8");
        int i;
        for (i = 0; i != 1 && i != 2; i = xmlPullParser.next());
        if (!"historical-records".equals(xmlPullParser.getName()))
          throw new XmlPullParserException("Share records file does not start with historical-records tag."); 
        List<ActivityChooserModel$HistoricalRecord> list = this.mHistoricalRecords;
        list.clear();
        while (true) {
          i = xmlPullParser.next();
          if (i == 1)
            return; 
          if (i != 3 && i != 4) {
            if (!"historical-record".equals(xmlPullParser.getName()))
              throw new XmlPullParserException("Share records file not well-formed."); 
            list.add(new ActivityChooserModel$HistoricalRecord(xmlPullParser.getAttributeValue(null, "activity"), Long.parseLong(xmlPullParser.getAttributeValue(null, "time")), Float.parseFloat(xmlPullParser.getAttributeValue(null, "weight"))));
          } 
        } 
      } catch (XmlPullParserException xmlPullParserException) {
        Log.e(LOG_TAG, "Error reading historical recrod file: " + this.mHistoryFileName, (Throwable)xmlPullParserException);
        return;
      } catch (IOException iOException1) {
        Log.e(LOG_TAG, "Error reading historical recrod file: " + this.mHistoryFileName, iOException1);
        return;
      } finally {
        if (iOException != null)
          try {
            iOException.close();
          } catch (IOException iOException1) {} 
      } 
    } catch (FileNotFoundException fileNotFoundException) {
      return;
    } 
  }
  
  private boolean sortActivitiesIfNeeded() {
    if (this.mActivitySorter != null && this.mIntent != null && !this.mActivities.isEmpty() && !this.mHistoricalRecords.isEmpty()) {
      this.mActivitySorter.sort(this.mIntent, this.mActivities, Collections.unmodifiableList(this.mHistoricalRecords));
      return true;
    } 
    return false;
  }
  
  public Intent chooseActivity(int paramInt) {
    synchronized (this.mInstanceLock) {
      if (this.mIntent == null)
        return null; 
      ensureConsistentState();
      ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo = this.mActivities.get(paramInt);
      ComponentName componentName = new ComponentName(activityChooserModel$ActivityResolveInfo.resolveInfo.activityInfo.packageName, activityChooserModel$ActivityResolveInfo.resolveInfo.activityInfo.name);
      Intent intent = new Intent(this.mIntent);
      intent.setComponent(componentName);
      if (this.mActivityChoserModelPolicy != null) {
        Intent intent1 = new Intent(intent);
        if (this.mActivityChoserModelPolicy.onChooseActivity(this, intent1))
          return null; 
      } 
      addHistoricalRecord(new ActivityChooserModel$HistoricalRecord(componentName, System.currentTimeMillis(), 1.0F));
      return intent;
    } 
  }
  
  public ResolveInfo getActivity(int paramInt) {
    synchronized (this.mInstanceLock) {
      ensureConsistentState();
      return ((ActivityChooserModel$ActivityResolveInfo)this.mActivities.get(paramInt)).resolveInfo;
    } 
  }
  
  public int getActivityCount() {
    synchronized (this.mInstanceLock) {
      ensureConsistentState();
      return this.mActivities.size();
    } 
  }
  
  public int getActivityIndex(ResolveInfo paramResolveInfo) {
    synchronized (this.mInstanceLock) {
      ensureConsistentState();
      List<ActivityChooserModel$ActivityResolveInfo> list = this.mActivities;
      int j = list.size();
      for (int i = 0;; i++) {
        if (i < j) {
          if (((ActivityChooserModel$ActivityResolveInfo)list.get(i)).resolveInfo == paramResolveInfo)
            return i; 
        } else {
          return -1;
        } 
      } 
    } 
  }
  
  public ResolveInfo getDefaultActivity() {
    synchronized (this.mInstanceLock) {
      ensureConsistentState();
      if (!this.mActivities.isEmpty())
        return ((ActivityChooserModel$ActivityResolveInfo)this.mActivities.get(0)).resolveInfo; 
      return null;
    } 
  }
  
  public int getHistoryMaxSize() {
    synchronized (this.mInstanceLock) {
      return this.mHistoryMaxSize;
    } 
  }
  
  public int getHistorySize() {
    synchronized (this.mInstanceLock) {
      ensureConsistentState();
      return this.mHistoricalRecords.size();
    } 
  }
  
  public Intent getIntent() {
    synchronized (this.mInstanceLock) {
      return this.mIntent;
    } 
  }
  
  public void setActivitySorter(ActivityChooserModel$ActivitySorter paramActivityChooserModel$ActivitySorter) {
    synchronized (this.mInstanceLock) {
      if (this.mActivitySorter == paramActivityChooserModel$ActivitySorter)
        return; 
      this.mActivitySorter = paramActivityChooserModel$ActivitySorter;
      if (sortActivitiesIfNeeded())
        notifyChanged(); 
      return;
    } 
  }
  
  public void setDefaultActivity(int paramInt) {
    synchronized (this.mInstanceLock) {
      float f;
      ensureConsistentState();
      ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo1 = this.mActivities.get(paramInt);
      ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo2 = this.mActivities.get(0);
      if (activityChooserModel$ActivityResolveInfo2 != null) {
        f = activityChooserModel$ActivityResolveInfo2.weight - activityChooserModel$ActivityResolveInfo1.weight + 5.0F;
      } else {
        f = 1.0F;
      } 
      addHistoricalRecord(new ActivityChooserModel$HistoricalRecord(new ComponentName(activityChooserModel$ActivityResolveInfo1.resolveInfo.activityInfo.packageName, activityChooserModel$ActivityResolveInfo1.resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
      return;
    } 
  }
  
  public void setHistoryMaxSize(int paramInt) {
    synchronized (this.mInstanceLock) {
      if (this.mHistoryMaxSize == paramInt)
        return; 
      this.mHistoryMaxSize = paramInt;
      pruneExcessiveHistoricalRecordsIfNeeded();
      if (sortActivitiesIfNeeded())
        notifyChanged(); 
      return;
    } 
  }
  
  public void setIntent(Intent paramIntent) {
    synchronized (this.mInstanceLock) {
      if (this.mIntent == paramIntent)
        return; 
      this.mIntent = paramIntent;
      this.mReloadActivities = true;
      ensureConsistentState();
      return;
    } 
  }
  
  public void setOnChooseActivityListener(ActivityChooserModel$OnChooseActivityListener paramActivityChooserModel$OnChooseActivityListener) {
    synchronized (this.mInstanceLock) {
      this.mActivityChoserModelPolicy = paramActivityChooserModel$OnChooseActivityListener;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */