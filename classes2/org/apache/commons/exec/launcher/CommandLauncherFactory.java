package org.apache.commons.exec.launcher;

import org.apache.commons.exec.OS;

public final class CommandLauncherFactory {
  public static CommandLauncher createVMLauncher() {
    return OS.isFamilyOpenVms() ? new VmsCommandLauncher() : new Java13CommandLauncher();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\launcher\CommandLauncherFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */