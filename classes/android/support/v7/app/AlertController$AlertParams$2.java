package android.support.v7.app;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;

class AlertController$AlertParams$2 extends CursorAdapter {
  private final int mIsCheckedIndex;
  
  private final int mLabelIndex;
  
  AlertController$AlertParams$2(Context paramContext, Cursor paramCursor, boolean paramBoolean) {
    super(paramContext, paramCursor, paramBoolean);
    Cursor cursor = getCursor();
    this.mLabelIndex = cursor.getColumnIndexOrThrow(AlertController$AlertParams.this.mLabelColumn);
    this.mIsCheckedIndex = cursor.getColumnIndexOrThrow(AlertController$AlertParams.this.mIsCheckedColumn);
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor) {
    boolean bool;
    ((CheckedTextView)paramView.findViewById(16908308)).setText(paramCursor.getString(this.mLabelIndex));
    AlertController$RecycleListView alertController$RecycleListView = listView;
    int i = paramCursor.getPosition();
    if (paramCursor.getInt(this.mIsCheckedIndex) == 1) {
      bool = true;
    } else {
      bool = false;
    } 
    alertController$RecycleListView.setItemChecked(i, bool);
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup) {
    return AlertController$AlertParams.this.mInflater.inflate(dialog.mMultiChoiceItemLayout, paramViewGroup, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$AlertParams$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */