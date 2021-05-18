import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.util.Random;

public class akf {
  private SQLiteDatabase a;
  
  private Context b;
  
  public akf(Context paramContext) {
    this.b = paramContext;
  }
  
  private MatrixCursor a(String paramString) {
    MatrixCursor matrixCursor = new MatrixCursor(new String[] { "_id", "content" });
    byte[] arrayOfByte = new byte[0];
    try {
      byte[] arrayOfByte1 = b().getBytes("UTF-8");
      arrayOfByte = arrayOfByte1;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      unsupportedEncodingException.printStackTrace();
    } 
    String str = Base64.encodeToString(arrayOfByte, 0);
    matrixCursor.addRow(new Object[] { b() + paramString, str });
    return matrixCursor;
  }
  
  private String b() {
    return String.valueOf((new Random()).nextInt(900000000) + 100000);
  }
  
  public int a(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString) {
    return 0;
  }
  
  public int a(Uri paramUri, String paramString, String[] paramArrayOfString) {
    if (paramString == null || paramString.isEmpty() || paramString.equals("null0fk")) {
      int j = this.a.delete("table1", null, null);
      this.b.getContentResolver().notifyChange(paramUri, null);
      return j;
    } 
    int i = this.a.delete("table1", "_id = " + paramString, null);
    this.b.getContentResolver().notifyChange(paramUri, null);
    return i;
  }
  
  public Cursor a(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2) {
    (new SQLiteQueryBuilder()).setTables("table1");
    if (paramString1 == null || paramString1.isEmpty()) {
      Cursor cursor1 = this.a.query("table1", new String[] { "_id", "content" }, null, null, null, null, null);
      cursor1.setNotificationUri(this.b.getContentResolver(), paramUri);
      return cursor1;
    } 
    if (paramString1.contains("0fk")) {
      MatrixCursor matrixCursor = a("0fk");
      matrixCursor.setNotificationUri(this.b.getContentResolver(), paramUri);
      return (Cursor)matrixCursor;
    } 
    SQLiteDatabase sQLiteDatabase = this.a;
    paramString1 = "_id = " + paramString1.toString();
    Cursor cursor = sQLiteDatabase.query("table1", new String[] { "_id", "content" }, paramString1, null, null, null, null);
    cursor.setNotificationUri(this.b.getContentResolver(), paramUri);
    return cursor;
  }
  
  public Uri a(Uri paramUri, ContentValues paramContentValues) {
    if (paramContentValues != null) {
      long l = this.a.insert("table1", "", paramContentValues);
      if (l > 0L) {
        paramUri = ContentUris.withAppendedId(paramUri, l);
        this.b.getContentResolver().notifyChange(paramUri, null);
        return paramUri;
      } 
    } 
    throw new SQLException("Failed to add a record into " + paramUri);
  }
  
  public String a(Uri paramUri) {
    return null;
  }
  
  public boolean a() {
    this.a = (new akw(this.b)).getWritableDatabase();
    return !(this.a == null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\akf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */