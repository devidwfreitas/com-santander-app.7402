public enum apu {
  AgentJoined,
  AgentLeft,
  FileTransfer,
  SessionDisconnected,
  TextMessageSent,
  TypingStarted("TypingStarted"),
  TypingStopped("TypingStopped");
  
  private final String value;
  
  static {
    TextMessageSent = new apu("TextMessageSent", 2, "TextMessageSent");
    AgentJoined = new apu("AgentJoined", 3, "Joined");
    AgentLeft = new apu("AgentLeft", 4, "Left");
    SessionDisconnected = new apu("SessionDisconnected", 5, "SessionDisconnected");
    FileTransfer = new apu("FileTransfer", 6, "FileTransfer");
    $VALUES = new apu[] { TypingStarted, TypingStopped, TextMessageSent, AgentJoined, AgentLeft, SessionDisconnected, FileTransfer };
  }
  
  apu(String paramString1) {
    this.value = paramString1;
  }
  
  public String getValue() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\apu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */