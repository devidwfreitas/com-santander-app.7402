package org.apache.commons.codec.net;

import org.apache.commons.codec.DecoderException;

class Utils {
  static int digit16(byte paramByte) {
    int i = Character.digit((char)paramByte, 16);
    if (i == -1)
      throw new DecoderException("Invalid URL encoding: not a valid digit (radix 16): " + paramByte); 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\net\Utils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */