package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;

class CursorFilter extends Filter {
  CursorFilter$CursorFilterClient mClient;
  
  CursorFilter(CursorFilter$CursorFilterClient paramCursorFilter$CursorFilterClient) {
    this.mClient = paramCursorFilter$CursorFilterClient;
  }
  
  public CharSequence convertResultToString(Object paramObject) {
    return this.mClient.convertToString((Cursor)paramObject);
  }
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence) {
    Cursor cursor = this.mClient.runQueryOnBackgroundThread(paramCharSequence);
    Filter.FilterResults filterResults = new Filter.FilterResults();
    if (cursor != null) {
      filterResults.count = cursor.getCount();
      filterResults.values = cursor;
      return filterResults;
    } 
    filterResults.count = 0;
    filterResults.values = null;
    return filterResults;
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults) {
    Cursor cursor = this.mClient.getCursor();
    if (paramFilterResults.values != null && paramFilterResults.values != cursor)
      this.mClient.changeCursor((Cursor)paramFilterResults.values); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CursorFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */