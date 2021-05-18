import java.io.IOException;

public class drd extends IOException {
  public drd(String paramString) {
    super(paramString);
  }
  
  static drd a() {
    return new drd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static drd b() {
    return new drd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static drd c() {
    return new drd("CodedInputStream encountered a malformed varint.");
  }
  
  static drd d() {
    return new drd("Protocol message contained an invalid tag (zero).");
  }
  
  static drd e() {
    return new drd("Protocol message end-group tag did not match expected tag.");
  }
  
  static drd f() {
    return new drd("Protocol message tag had invalid wire type.");
  }
  
  static drd g() {
    return new drd("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */