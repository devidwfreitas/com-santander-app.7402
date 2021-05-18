package android.support.v7.widget;

import android.os.AsyncTask;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;

final class ActivityChooserModel$PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
  public Void doInBackground(Object... paramVarArgs) {
    XmlSerializer xmlSerializer;
    int i = 0;
    List<ActivityChooserModel$HistoricalRecord> list = (List)paramVarArgs[0];
    String str = (String)paramVarArgs[1];
    try {
      FileOutputStream fileOutputStream = ActivityChooserModel.this.mContext.openFileOutput(str, 0);
      xmlSerializer = Xml.newSerializer();
      try {
        xmlSerializer.setOutput(fileOutputStream, null);
        xmlSerializer.startDocument("UTF-8", Boolean.valueOf(true));
        xmlSerializer.startTag(null, "historical-records");
        int j = list.size();
        while (i < j) {
          ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = list.remove(0);
          xmlSerializer.startTag(null, "historical-record");
          xmlSerializer.attribute(null, "activity", activityChooserModel$HistoricalRecord.activity.flattenToString());
          xmlSerializer.attribute(null, "time", String.valueOf(activityChooserModel$HistoricalRecord.time));
          xmlSerializer.attribute(null, "weight", String.valueOf(activityChooserModel$HistoricalRecord.weight));
          xmlSerializer.endTag(null, "historical-record");
          i++;
        } 
        xmlSerializer.endTag(null, "historical-records");
        xmlSerializer.endDocument();
        ActivityChooserModel.this.mCanReadHistoricalData = true;
        return null;
      } catch (IllegalArgumentException illegalArgumentException) {
        Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, illegalArgumentException);
        ActivityChooserModel.this.mCanReadHistoricalData = true;
        return null;
      } catch (IllegalStateException illegalStateException) {
        Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, illegalStateException);
        ActivityChooserModel.this.mCanReadHistoricalData = true;
        return null;
      } catch (IOException iOException1) {
        Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + ActivityChooserModel.this.mHistoryFileName, iOException1);
        ActivityChooserModel.this.mCanReadHistoricalData = true;
        return null;
      } finally {
        list = null;
      } 
    } catch (FileNotFoundException iOException) {
      Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical record file: " + xmlSerializer, iOException);
      return null;
    } 
    if (iOException != null)
      try {
        iOException.close();
      } catch (IOException iOException1) {} 
    throw list;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserModel$PersistHistoryAsyncTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */