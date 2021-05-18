import java.util.List;

public enum epy {
  ALLOWED_EAN_EXTENSIONS,
  ALLOWED_LENGTHS,
  ASSUME_CODE_39_CHECK_DIGIT,
  ASSUME_GS1,
  CHARACTER_SET,
  NEED_RESULT_POINT_CALLBACK,
  OTHER(Object.class),
  POSSIBLE_FORMATS(Object.class),
  PURE_BARCODE(Void.class),
  RETURN_CODABAR_START_END(Void.class),
  TRY_HARDER(Void.class);
  
  private final Class<?> valueType;
  
  static {
    POSSIBLE_FORMATS = new epy("POSSIBLE_FORMATS", 2, List.class);
    TRY_HARDER = new epy("TRY_HARDER", 3, Void.class);
    CHARACTER_SET = new epy("CHARACTER_SET", 4, String.class);
    ALLOWED_LENGTHS = new epy("ALLOWED_LENGTHS", 5, int[].class);
    ASSUME_CODE_39_CHECK_DIGIT = new epy("ASSUME_CODE_39_CHECK_DIGIT", 6, Void.class);
    ASSUME_GS1 = new epy("ASSUME_GS1", 7, Void.class);
    RETURN_CODABAR_START_END = new epy("RETURN_CODABAR_START_END", 8, Void.class);
    NEED_RESULT_POINT_CALLBACK = new epy("NEED_RESULT_POINT_CALLBACK", 9, eqp.class);
    ALLOWED_EAN_EXTENSIONS = new epy("ALLOWED_EAN_EXTENSIONS", 10, int[].class);
    $VALUES = new epy[] { 
        OTHER, PURE_BARCODE, POSSIBLE_FORMATS, TRY_HARDER, CHARACTER_SET, ALLOWED_LENGTHS, ASSUME_CODE_39_CHECK_DIGIT, ASSUME_GS1, RETURN_CODABAR_START_END, NEED_RESULT_POINT_CALLBACK, 
        ALLOWED_EAN_EXTENSIONS };
  }
  
  epy(Class<?> paramClass) {
    this.valueType = paramClass;
  }
  
  public Class<?> getValueType() {
    return this.valueType;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */