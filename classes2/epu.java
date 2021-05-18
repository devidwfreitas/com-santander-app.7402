public enum epu {
  AZTEC, CODABAR, CODE_128, CODE_39, CODE_93, DATA_MATRIX, EAN_13, EAN_8, ITF, MAXICODE, PDF_417, QR_CODE, RSS_14, RSS_EXPANDED, UPC_A, UPC_E, UPC_EAN_EXTENSION;
  
  static {
    CODE_128 = new epu("CODE_128", 4);
    DATA_MATRIX = new epu("DATA_MATRIX", 5);
    EAN_8 = new epu("EAN_8", 6);
    EAN_13 = new epu("EAN_13", 7);
    ITF = new epu("ITF", 8);
    MAXICODE = new epu("MAXICODE", 9);
    PDF_417 = new epu("PDF_417", 10);
    QR_CODE = new epu("QR_CODE", 11);
    RSS_14 = new epu("RSS_14", 12);
    RSS_EXPANDED = new epu("RSS_EXPANDED", 13);
    UPC_A = new epu("UPC_A", 14);
    UPC_E = new epu("UPC_E", 15);
    UPC_EAN_EXTENSION = new epu("UPC_EAN_EXTENSION", 16);
    $VALUES = new epu[] { 
        AZTEC, CODABAR, CODE_39, CODE_93, CODE_128, DATA_MATRIX, EAN_8, EAN_13, ITF, MAXICODE, 
        PDF_417, QR_CODE, RSS_14, RSS_EXPANDED, UPC_A, UPC_E, UPC_EAN_EXTENSION };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */