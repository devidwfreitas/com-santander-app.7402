import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

final class ale {
  private static final Uri a = Uri.parse("content://com.santander.app.idsantander.idsantanderprovedor/819B98B42786BFBEC717C789AF7B3");
  
  protected static Map a(Context paramContext) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    Cursor cursor = paramContext.getContentResolver().query(a, null, null, null, null);
    if (cursor != null && cursor.moveToFirst())
      do {
        hashMap.put(cursor.getString(cursor.getColumnIndex("_id")), cursor.getString(cursor.getColumnIndex("content")));
      } while (cursor.moveToNext()); 
    return hashMap;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ale.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */