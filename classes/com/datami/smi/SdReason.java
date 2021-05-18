package com.datami.smi;

public enum SdReason {
  SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED, SD_NOT_AVAILABLE_CONNECTION_TIMEOUT, SD_NOT_AVAILABLE_DNS_ERROR, SD_NOT_AVAILABLE_FOR_APPLICATION, SD_NOT_AVAILABLE_FOR_DEVICE_OR_USER, SD_NOT_AVAILABLE_FOR_OPERATOR, SD_NOT_AVAILABLE_FOR_URL, SD_NOT_AVAILABLE_FOR_VPN_APP_PROXY_ALREADY_SET, SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE, SD_NOT_AVAILABLE_NO_DATA_CONNECTION, SD_NOT_AVAILABLE_PROMOTION_EXPIRED, SD_NOT_AVAILABLE_PROMOTION_LIMIT_EXCEEDED, SD_NOT_AVAILABLE_PROMOTION_NOT_FOUND, SD_NOT_AVAILABLE_PROMOTION_SUSPENDED, SD_NOT_AVAILABLE_REASON_UNKNOWN, SD_NOT_AVAILABLE_SDK_VERSION_NOT_SUPPORTED, SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_FOR_APP_OR_CARRIER, SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_IN_ROAMING, SD_NOT_AVAILABLE_SD_REGISTRATION_NOT_DONE, SD_NOT_AVAILABLE_SD_STOP_API_CALL, SD_NOT_AVAILABLE_SD_TESTING, SD_NOT_AVAILABLE_URAM_NO_HEADER_INJECTED, SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED, SD_REASON_NONE;
  
  private static final byte[] $ = new byte[] { 
      5, 50, 60, 12, 15, -27, 17, -1, -5, -11, 
      30, -21, 21, -8, -3, 11, -1, -10, 7, -26, 
      10, 3, 17, -12, -18, 17, -1, -16, 23, 3, 
      4, -3, -1, -13, -13, 22, -5, 4, 5, 2, 
      -17, 15, 1, 15, -27, 17, -1, -5, -11, 30, 
      -21, 21, -8, -3, 11, -1, -10, 7, -26, 28, 
      -12, 1, 0, 9, 2, -17, 11, -6, 1, -17, 
      11, 11, -4, 8, -10, -6, 1, 15, -27, 17, 
      -1, -5, -11, 30, -21, 21, -8, -3, 11, -1, 
      -10, 7, -26, 12, 15, -27, 17, -1, -5, -11, 
      12, -2, 5, 0, 1, -3, -2, 15, 1, -27, 
      22, -5, -17, 13, 3, 14, -12, 4, -5, 7, 
      15, -27, 17, -1, -5, -11, 30, -21, 21, -8, 
      -3, 11, -1, -10, 7, -26, 25, -9, -3, -13, 
      16, -1, 11, -13, 17, -19, 5, -3, 15, -27, 
      17, -1, -5, -11, 30, -21, 21, -8, -3, 11, 
      -1, -10, 7, -26, 15, -2, 3, 2, -2, -5, 
      11, -6, 1, -17, 12, -2, 2, 3, 11, -9, 
      10, -1, 1, 15, -27, 17, -1, -5, -11, 30, 
      -21, 21, -8, -3, 11, -1, -10, 7, -26, 12, 
      15, -27, 13, 13, -2, -2, -10, -1, 2, 17, 
      -19, 11, -6, 1, -17, 17, -1, -5, -11, 27, 
      -11, 1, 9, 15, -27, 17, -1, -5, -11, 30, 
      -21, 21, -8, -3, 11, -1, -10, 7, -26, 17, 
      -1, -16, 27, 3, -19, 19, -30, 28, -12, 1, 
      0, 9, 2, -17, 11, -6, 1, 15, -27, 17, 
      -1, -5, -11, 30, -21, 21, -8, -3, 11, -1, 
      -10, 7, -26, 12, 15, -27, 11, 15, -14, -1, 
      11, -5, 7, 15, -27, 17, -1, -5, -11, 30, 
      -21, 21, -8, -3, 11, -1, -10, 7, -26, 10, 
      2, 14, -13, -13, 19, 3, -4, 4, -11, -11, 
      26, -19, 21, -2, 0, 1, -1, 1, 15, -27, 
      17, -1, -5, -11, 30, -21, 21, -8, -3, 11, 
      -1, -10, 7, -26, 12, 15, -7, -20, 9, 17, 
      -13, -1, 10, -6, 1, -17, 17, -1, -5, -11, 
      12, -2, 5, 0, 1, -3, -2, 15, 1, 15, 
      -27, 17, -1, -5, -11, 30, -21, 21, -8, -3, 
      11, -1, -10, 7, -26, 25, -9, -3, -13, 9, 
      6, 2, -17, 30, -15, 0, -15, 15, -2, 3, 
      -9, -1, -6, 30, -11, -6, 13, 4, -3, -21, 
      -6, 12, 14, -15, 15, -27, 13, 13, 4, -18, 
      4, 1, -17, 17, -1, 1, 9, 15, -27, 17, 
      -1, -5, -11, 30, -21, 21, -8, -3, 11, -1, 
      -10, 7, -26, 15, -2, 3, 2, -2, -5, 11, 
      -6, 1, -17, 17, -1, -5, -11, 25, -9, -6, 
      7, 10, 15, -27, 17, -1, -5, -11, 30, -21, 
      21, -8, -3, 11, -1, -10, 7, -26, 12, 15, 
      -27, 12, -1, 5, -1, -15, 30, -15, 7, -22, 
      28, 2, -11, 0, 15, -27, 17, -1, -5, -11, 
      30, -21, 21, -8, -3, 11, -1, -10, 7, -26, 
      25, -9, -3, -13, 30, -15, 0, 4, 3, 6, 
      2, -19, 11, -6, 1, 15, -27, 17, -1, -5, 
      -11, 30, -21, 21, -8, -3, 11, -1, -10, 7, 
      -26, 25, -9, -3, -13, 27, -1, -17, 13, 6, 
      -2, -26, 16, -3, -13, 10, 2, 14, -13, 15, 
      -27, 17, -1, -5, -11, 30, -21, 21, -8, -3, 
      11, -1, -10, 7, -26, 30, -13, 10, -14, 3, 
      6, 5, -27, 9, 17, -13, -1, 10, -6, 1, 
      -17, 17, -1, -5, -11, 12, -2, 5, 0, 1, 
      -3, -2, 15, 1, 15, -27, 17, -1, -5, -11, 
      30, -21, 21, -8, -3, 11, -1, -10, 7, -26, 
      24, -16, -8, 28, -12, 1, 0, 9, 2, -17, 
      11, -6, 1, -17, 25, 5, -8, -3, -9, 3, 
      13, 15, -27, 17, -1, -5, -11, 30, -21, 21, 
      -8, -3, 11, -1, -10, 7, -26, 12, 15, -27, 
      17, -1, -5, -11, 12, -2, 5, 0, 1, -3, 
      -2, 15, 1, -27, 25, -9, -3, -13, 30, -15, 
      0, -15, 16, -3, -13, 28, 2, -17, 0, 9, 
      4, -13, 15, -27, 17, -1, -5, -11, 30, -21, 
      21, -8, -3, 11, -1, -10, 7, -26, 27, -10, 
      -5, -12, 26, -13, 0, 3, -3, 15, -27, 17, 
      -1, -5, -11, 30, -21, 21, -8, -3, 11, -1, 
      -10, 7, -26, 13, 13, 4, -18, 4, 1, -17, 
      10, 7, 3, -3, -1, -8, 9, 15, -27, 17, 
      -1, -5, -11, 30, -21, 21, -8, -3, 11, -1, 
      -10, 7, -26, 15, -2, 3, 2, -2, -5, 11, 
      -6, 1, -17, 26, -19, 8, 7, -9, 13, 1, 
      15, -27, 17, -1, -5, -11, 30, -21, 21, -8, 
      -3, 11, -1, -10, 7, -26, 15, -2, 3, 2, 
      -2, -5, 11, -6, 1, -17, 19, 3, -4, 4, 
      -11, -11, 26, -19, 21, -2, 0, 1, -1, 1, 
      15, -27, 17, -1, -5, -11, 30, -21, 21, -8, 
      -3, 11, -1, -10, 7, -26, 25, -9, -3, -13, 
      10, 3, 6 };
  
  private static int $$ = 70;
  
  private int statusCode;
  
  private static String $(int paramInt1, int paramInt2, int paramInt3) {
    int i;
    byte[] arrayOfByte2 = $;
    paramInt3 += 4;
    int j = paramInt1 + 14;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
      i = paramInt3;
      paramInt3 = j;
    } else {
      paramInt1 = paramInt3;
      paramInt3 = 0;
      paramInt2 = paramInt2 * 2 + 83;
      int m = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    i += -paramInt3;
    paramInt1++;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
  
  static {
    byte b1 = $[62];
    SD_REASON_NONE = new SdReason($(b1, b1, b1 | 0x190), 0, 0);
    b1 = $[4];
    byte b2 = $[62];
    SD_NOT_AVAILABLE_FOR_OPERATOR = new SdReason($(b1, b2, b2 | 0x74), 1, 1);
    b1 = -$[24];
    b2 = $[62];
    SD_NOT_AVAILABLE_FOR_APPLICATION = new SdReason($(b1, b2, b2 | 0x1E0), 2, 2);
    b1 = $[20];
    b2 = $[62];
    SD_NOT_AVAILABLE_FOR_URL = new SdReason($(b1, b2, b2 | 0x326), 3, 3);
    b1 = $[12];
    b2 = $[62];
    SD_NOT_AVAILABLE_FOR_DEVICE_OR_USER = new SdReason($(b1, b2, b2 | 0x1FF), 4, 4);
    b1 = -$[337];
    b2 = $[62];
    SD_NOT_AVAILABLE_PROMOTION_EXPIRED = new SdReason($(b1, b2, b2 | 0x2DD), 5, 5);
    b1 = $[35];
    b2 = $[62];
    SD_NOT_AVAILABLE_PROMOTION_SUSPENDED = new SdReason($(b1, b2, b2 | 0x90), 6, 6);
    b1 = $[219];
    b2 = $[62];
    SD_NOT_AVAILABLE_PROMOTION_LIMIT_EXCEEDED = new SdReason($(b1, b2, b2 | 0x2FE), 7, 7);
    b1 = $[35];
    b2 = $[62];
    SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED = new SdReason($(b1, b2, b2 | 0x117), 8, 8);
    b1 = $[35];
    b2 = $[62];
    SD_NOT_AVAILABLE_PROMOTION_NOT_FOUND = new SdReason($(b1, b2, b2 | 0x19D), 9, 9);
    b1 = $[219];
    b2 = $[62];
    SD_NOT_AVAILABLE_SD_REGISTRATION_NOT_DONE = new SdReason($(b1, b2, b2 | 0xB3), 10, 10);
    b1 = $[59];
    b2 = $[62];
    SD_NOT_AVAILABLE_SDK_VERSION_NOT_SUPPORTED = new SdReason($(b1, b2, b2 | 0x13A), 11, 11);
    b1 = $[62];
    SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_FOR_APP_OR_CARRIER = new SdReason($(38, b1, b1 | 0x273), 12, 12);
    b1 = $[310];
    b2 = $[62];
    SD_NOT_AVAILABLE_URAM_NO_HEADER_INJECTED = new SdReason($(b1, b2, b2), 13, 13);
    b1 = $[10];
    b2 = $[62];
    SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_IN_ROAMING = new SdReason($(b1, b2, b2 | 0x49), 14, 14);
    b1 = $[113];
    b2 = $[62];
    SD_NOT_AVAILABLE_SD_TESTING = new SdReason($(b1, b2, b2 | 0xFD), 15, 15);
    b1 = $[245];
    b2 = $[62];
    SD_NOT_AVAILABLE_SD_STOP_API_CALL = new SdReason($(b1, b2, b2 | 0x1C0), 16, 16);
    b1 = $[62];
    SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED = new SdReason($(32, b1, b1 | 0x221), 17, 17);
    b1 = $[62];
    SD_NOT_AVAILABLE_FOR_VPN_APP_PROXY_ALREADY_SET = new SdReason($(32, b1, b1 | 0x163), 18, 18);
    b1 = $[610];
    b2 = $[62];
    SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE = new SdReason($(b1, b2, b2 | 0x24E), 19, 19);
    b1 = $[12];
    b2 = $[62];
    SD_NOT_AVAILABLE_NO_DATA_CONNECTION = new SdReason($(b1, b2, b2 | 0xDB), 20, 20);
    b1 = $[12];
    b2 = $[62];
    SD_NOT_AVAILABLE_CONNECTION_TIMEOUT = new SdReason($(b1, b2, b2 | 0x27), 21, 21);
    b1 = $[3];
    b2 = $[62];
    SD_NOT_AVAILABLE_DNS_ERROR = new SdReason($(b1, b2, b2 | 0x2A6), 22, 22);
    b1 = $[6];
    b2 = $[62];
    SD_NOT_AVAILABLE_REASON_UNKNOWN = new SdReason($(b1, b2, b2 | 0x2BF), 23, 100);
    $VALUES = new SdReason[] { 
        SD_REASON_NONE, SD_NOT_AVAILABLE_FOR_OPERATOR, SD_NOT_AVAILABLE_FOR_APPLICATION, SD_NOT_AVAILABLE_FOR_URL, SD_NOT_AVAILABLE_FOR_DEVICE_OR_USER, SD_NOT_AVAILABLE_PROMOTION_EXPIRED, SD_NOT_AVAILABLE_PROMOTION_SUSPENDED, SD_NOT_AVAILABLE_PROMOTION_LIMIT_EXCEEDED, SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED, SD_NOT_AVAILABLE_PROMOTION_NOT_FOUND, 
        SD_NOT_AVAILABLE_SD_REGISTRATION_NOT_DONE, SD_NOT_AVAILABLE_SDK_VERSION_NOT_SUPPORTED, SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_FOR_APP_OR_CARRIER, SD_NOT_AVAILABLE_URAM_NO_HEADER_INJECTED, SD_NOT_AVAILABLE_SD_NOT_SUPPORTED_IN_ROAMING, SD_NOT_AVAILABLE_SD_TESTING, SD_NOT_AVAILABLE_SD_STOP_API_CALL, SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED, SD_NOT_AVAILABLE_FOR_VPN_APP_PROXY_ALREADY_SET, SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE, 
        SD_NOT_AVAILABLE_NO_DATA_CONNECTION, SD_NOT_AVAILABLE_CONNECTION_TIMEOUT, SD_NOT_AVAILABLE_DNS_ERROR, SD_NOT_AVAILABLE_REASON_UNKNOWN };
  }
  
  SdReason(int paramInt1) {
    this.statusCode = paramInt1;
  }
  
  public final int getStatusCode() {
    return this.statusCode;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\SdReason.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */