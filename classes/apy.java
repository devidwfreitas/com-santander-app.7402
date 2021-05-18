public enum apy {
  FileAccepted,
  FileDelivered,
  FileReceived,
  FileRejected,
  FileTransferError,
  FileTransferRequest("FileTransferRequest");
  
  private final String value;
  
  static {
    FileReceived = new apy("FileReceived", 1, "FileReceived");
    FileAccepted = new apy("FileAccepted", 2, "FileAccepted");
    FileDelivered = new apy("FileDelivered", 3, "FileDelivered");
    FileRejected = new apy("FileRejected", 4, "FileRejected");
    FileTransferError = new apy("FileTransferError", 5, "FileTransferError");
    $VALUES = new apy[] { FileTransferRequest, FileReceived, FileAccepted, FileDelivered, FileRejected, FileTransferError };
  }
  
  apy(String paramString1) {
    this.value = paramString1;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\apy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */