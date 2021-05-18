public enum eqa {
  AZTEC_LAYERS, CHARACTER_SET, DATA_MATRIX_SHAPE, ERROR_CORRECTION, MARGIN, MAX_SIZE, MIN_SIZE, PDF417_COMPACT, PDF417_COMPACTION, PDF417_DIMENSIONS;
  
  static {
    CHARACTER_SET = new eqa("CHARACTER_SET", 1);
    DATA_MATRIX_SHAPE = new eqa("DATA_MATRIX_SHAPE", 2);
    MIN_SIZE = new eqa("MIN_SIZE", 3);
    MAX_SIZE = new eqa("MAX_SIZE", 4);
    MARGIN = new eqa("MARGIN", 5);
    PDF417_COMPACT = new eqa("PDF417_COMPACT", 6);
    PDF417_COMPACTION = new eqa("PDF417_COMPACTION", 7);
    PDF417_DIMENSIONS = new eqa("PDF417_DIMENSIONS", 8);
    AZTEC_LAYERS = new eqa("AZTEC_LAYERS", 9);
    $VALUES = new eqa[] { ERROR_CORRECTION, CHARACTER_SET, DATA_MATRIX_SHAPE, MIN_SIZE, MAX_SIZE, MARGIN, PDF417_COMPACT, PDF417_COMPACTION, PDF417_DIMENSIONS, AZTEC_LAYERS };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\eqa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */