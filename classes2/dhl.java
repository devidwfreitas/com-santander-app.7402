import android.os.IInterface;

public interface dhl extends IInterface {
  boolean getBooleanFlagValue(String paramString, boolean paramBoolean, int paramInt);
  
  int getIntFlagValue(String paramString, int paramInt1, int paramInt2);
  
  long getLongFlagValue(String paramString, long paramLong, int paramInt);
  
  String getStringFlagValue(String paramString1, String paramString2, int paramInt);
  
  void init(cwx paramcwx);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */