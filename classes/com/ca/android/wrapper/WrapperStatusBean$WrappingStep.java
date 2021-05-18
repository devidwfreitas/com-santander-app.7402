package com.ca.android.wrapper;

public enum WrapperStatusBean$WrappingStep {
  APK_EXTRACTION, INSTRUMENTATION, LOAD_CONFIGURATION, PACK, SIGN;
  
  static {
    APK_EXTRACTION = new WrapperStatusBean$WrappingStep("APK_EXTRACTION", 1);
    INSTRUMENTATION = new WrapperStatusBean$WrappingStep("INSTRUMENTATION", 2);
    PACK = new WrapperStatusBean$WrappingStep("PACK", 3);
    SIGN = new WrapperStatusBean$WrappingStep("SIGN", 4);
    $VALUES = new WrapperStatusBean$WrappingStep[] { LOAD_CONFIGURATION, APK_EXTRACTION, INSTRUMENTATION, PACK, SIGN };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\WrapperStatusBean$WrappingStep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */