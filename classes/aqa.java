public enum aqa {
  DOC,
  DOCX,
  JPEG(new byte[] { -1, -40, -1 }),
  JPG(new byte[] { -1, -40, -1 }),
  PDF(new byte[] { -1, -40, -1 }),
  PNG(new byte[] { -119, 80, 78, 71 }),
  PPT(new byte[] { -119, 80, 78, 71 }),
  PPTX(new byte[] { -119, 80, 78, 71 }),
  XLS(new byte[] { -119, 80, 78, 71 }),
  XLSX(new byte[] { -119, 80, 78, 71 });
  
  private final byte[] value;
  
  static {
    PDF = new aqa("PDF", 3, new byte[] { 37, 80, 68, 70 });
    DOC = new aqa("DOC", 4, new byte[] { -48, -49, 17, -32, -95, -79, 26, -31 });
    PPT = new aqa("PPT", 5, new byte[] { -48, -49, 17, -32, -95, -79, 26, -31 });
    XLS = new aqa("XLS", 6, new byte[] { -48, -49, 17, -32, -95, -79, 26, -31 });
    DOCX = new aqa("DOCX", 7, new byte[] { 80, 75, 3, 4, 20, 0, 6, 0 });
    XLSX = new aqa("XLSX", 8, new byte[] { 80, 75, 3, 4, 20, 0, 6, 0 });
    PPTX = new aqa("PPTX", 9, new byte[] { 80, 75, 3, 4, 20, 0, 6, 0 });
    $VALUES = new aqa[] { JPEG, JPG, PNG, PDF, DOC, PPT, XLS, DOCX, XLSX, PPTX };
  }
  
  aqa(byte[] paramArrayOfbyte) {
    this.value = paramArrayOfbyte;
  }
  
  public byte[] getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */