package org.dom4j.io;

import org.dom4j.ElementPath;

class PruningDispatchHandler extends DispatchHandler {
  public void onEnd(ElementPath paramElementPath) {
    super.onEnd(paramElementPath);
    if (getActiveHandlerCount() == 0)
      paramElementPath.getCurrent().detach(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\PruningDispatchHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */