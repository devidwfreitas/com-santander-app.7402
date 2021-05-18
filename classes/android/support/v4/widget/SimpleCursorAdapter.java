package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.RestrictTo;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class SimpleCursorAdapter extends ResourceCursorAdapter {
  private SimpleCursorAdapter$CursorToStringConverter mCursorToStringConverter;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected int[] mFrom;
  
  String[] mOriginalFrom;
  
  private int mStringConversionColumn = -1;
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected int[] mTo;
  
  private SimpleCursorAdapter$ViewBinder mViewBinder;
  
  @Deprecated
  public SimpleCursorAdapter(Context paramContext, int paramInt, Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfint) {
    super(paramContext, paramInt, paramCursor);
    this.mTo = paramArrayOfint;
    this.mOriginalFrom = paramArrayOfString;
    findColumns(paramCursor, paramArrayOfString);
  }
  
  public SimpleCursorAdapter(Context paramContext, int paramInt1, Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfint, int paramInt2) {
    super(paramContext, paramInt1, paramCursor, paramInt2);
    this.mTo = paramArrayOfint;
    this.mOriginalFrom = paramArrayOfString;
    findColumns(paramCursor, paramArrayOfString);
  }
  
  private void findColumns(Cursor paramCursor, String[] paramArrayOfString) {
    if (paramCursor != null) {
      int j = paramArrayOfString.length;
      if (this.mFrom == null || this.mFrom.length != j)
        this.mFrom = new int[j]; 
      for (int i = 0; i < j; i++)
        this.mFrom[i] = paramCursor.getColumnIndexOrThrow(paramArrayOfString[i]); 
    } else {
      this.mFrom = null;
    } 
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor) {
    SimpleCursorAdapter$ViewBinder simpleCursorAdapter$ViewBinder = this.mViewBinder;
    int j = this.mTo.length;
    int[] arrayOfInt1 = this.mFrom;
    int[] arrayOfInt2 = this.mTo;
    int i = 0;
    while (true) {
      if (i < j) {
        View view = paramView.findViewById(arrayOfInt2[i]);
        if (view != null) {
          boolean bool;
          if (simpleCursorAdapter$ViewBinder != null) {
            bool = simpleCursorAdapter$ViewBinder.setViewValue(view, paramCursor, arrayOfInt1[i]);
          } else {
            bool = false;
          } 
          if (!bool) {
            String str2 = paramCursor.getString(arrayOfInt1[i]);
            String str1 = str2;
            if (str2 == null)
              str1 = ""; 
            if (view instanceof TextView) {
              setViewText((TextView)view, str1);
            } else if (view instanceof ImageView) {
              setViewImage((ImageView)view, str1);
            } else {
              throw new IllegalStateException(view.getClass().getName() + " is not a " + " view that can be bounds by this SimpleCursorAdapter");
            } 
          } 
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  public void changeCursorAndColumns(Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfint) {
    this.mOriginalFrom = paramArrayOfString;
    this.mTo = paramArrayOfint;
    findColumns(paramCursor, this.mOriginalFrom);
    changeCursor(paramCursor);
  }
  
  public CharSequence convertToString(Cursor paramCursor) {
    return (this.mCursorToStringConverter != null) ? this.mCursorToStringConverter.convertToString(paramCursor) : ((this.mStringConversionColumn > -1) ? paramCursor.getString(this.mStringConversionColumn) : super.convertToString(paramCursor));
  }
  
  public SimpleCursorAdapter$CursorToStringConverter getCursorToStringConverter() {
    return this.mCursorToStringConverter;
  }
  
  public int getStringConversionColumn() {
    return this.mStringConversionColumn;
  }
  
  public SimpleCursorAdapter$ViewBinder getViewBinder() {
    return this.mViewBinder;
  }
  
  public void setCursorToStringConverter(SimpleCursorAdapter$CursorToStringConverter paramSimpleCursorAdapter$CursorToStringConverter) {
    this.mCursorToStringConverter = paramSimpleCursorAdapter$CursorToStringConverter;
  }
  
  public void setStringConversionColumn(int paramInt) {
    this.mStringConversionColumn = paramInt;
  }
  
  public void setViewBinder(SimpleCursorAdapter$ViewBinder paramSimpleCursorAdapter$ViewBinder) {
    this.mViewBinder = paramSimpleCursorAdapter$ViewBinder;
  }
  
  public void setViewImage(ImageView paramImageView, String paramString) {
    try {
      paramImageView.setImageResource(Integer.parseInt(paramString));
      return;
    } catch (NumberFormatException numberFormatException) {
      paramImageView.setImageURI(Uri.parse(paramString));
      return;
    } 
  }
  
  public void setViewText(TextView paramTextView, String paramString) {
    paramTextView.setText(paramString);
  }
  
  public Cursor swapCursor(Cursor paramCursor) {
    findColumns(paramCursor, this.mOriginalFrom);
    return super.swapCursor(paramCursor);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SimpleCursorAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */