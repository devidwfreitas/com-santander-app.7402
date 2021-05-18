public enum bcp {
  MaskModeAdd, MaskModeIntersect, MaskModeSubtract, MaskModeUnknown;
  
  static {
    MaskModeIntersect = new bcp("MaskModeIntersect", 2);
    MaskModeUnknown = new bcp("MaskModeUnknown", 3);
    $VALUES = new bcp[] { MaskModeAdd, MaskModeSubtract, MaskModeIntersect, MaskModeUnknown };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bcp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */