import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

final class boz {
  private static final int a = 0;
  
  static JSONObject a(InputStream paramInputStream) {
    boolean bool = false;
    if (paramInputStream.read() != 0)
      return null; 
    int i = 0;
    int j = 0;
    while (i < 3) {
      int k = paramInputStream.read();
      if (k == -1) {
        bpu.a(bjb.CACHE, bon.a, "readHeader: stream.read returned -1 while reading header size");
        return null;
      } 
      j = (j << 8) + (k & 0xFF);
      i++;
    } 
    byte[] arrayOfByte = new byte[j];
    for (i = bool; i < arrayOfByte.length; i += j) {
      j = paramInputStream.read(arrayOfByte, i, arrayOfByte.length - i);
      if (j < 1) {
        bpu.a(bjb.CACHE, bon.a, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + arrayOfByte.length);
        return null;
      } 
    } 
    JSONTokener jSONTokener = new JSONTokener(new String(arrayOfByte));
    try {
      null = jSONTokener.nextValue();
      if (!(null instanceof JSONObject)) {
        bpu.a(bjb.CACHE, bon.a, "readHeader: expected JSONObject, got " + null.getClass().getCanonicalName());
        return null;
      } 
      return (JSONObject)null;
    } catch (JSONException jSONException) {
      throw new IOException(jSONException.getMessage());
    } 
  }
  
  static void a(OutputStream paramOutputStream, JSONObject paramJSONObject) {
    byte[] arrayOfByte = paramJSONObject.toString().getBytes();
    paramOutputStream.write(0);
    paramOutputStream.write(arrayOfByte.length >> 16 & 0xFF);
    paramOutputStream.write(arrayOfByte.length >> 8 & 0xFF);
    paramOutputStream.write(arrayOfByte.length >> 0 & 0xFF);
    paramOutputStream.write(arrayOfByte);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\boz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */