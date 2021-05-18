package android.support.v4.widget;

import android.database.Cursor;

interface CursorFilter$CursorFilterClient {
  void changeCursor(Cursor paramCursor);
  
  CharSequence convertToString(Cursor paramCursor);
  
  Cursor getCursor();
  
  Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CursorFilter$CursorFilterClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */