package org.apache.commons.codec.binary;

import java.math.BigInteger;

public class Base64 extends BaseNCodec {
  private static final int BITS_PER_ENCODED_BYTE = 6;
  
  private static final int BYTES_PER_ENCODED_BLOCK = 4;
  
  private static final int BYTES_PER_UNENCODED_BLOCK = 3;
  
  static final byte[] CHUNK_SEPARATOR = new byte[] { 13, 10 };
  
  private static final byte[] DECODE_TABLE;
  
  private static final int MASK_6BITS = 63;
  
  private static final byte[] STANDARD_ENCODE_TABLE = new byte[] { 
      65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
      75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
      85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
      101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
      111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
      121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
      56, 57, 43, 47 };
  
  private static final byte[] URL_SAFE_ENCODE_TABLE = new byte[] { 
      65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
      75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
      85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
      101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
      111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
      121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
      56, 57, 45, 95 };
  
  private int bitWorkArea;
  
  private final int decodeSize;
  
  private final byte[] decodeTable;
  
  private final int encodeSize;
  
  private final byte[] encodeTable;
  
  private final byte[] lineSeparator;
  
  static {
    DECODE_TABLE = new byte[] { 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
        -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51 };
  }
  
  public Base64() {
    this(0);
  }
  
  public Base64(int paramInt) {
    this(paramInt, CHUNK_SEPARATOR);
  }
  
  public Base64(int paramInt, byte[] paramArrayOfbyte) {
    this(paramInt, paramArrayOfbyte, false);
  }
  
  public Base64(int paramInt, byte[] paramArrayOfbyte, boolean paramBoolean) {
    super(3, 4, paramInt, i);
    int i;
    this.decodeTable = DECODE_TABLE;
    if (paramArrayOfbyte != null) {
      String str;
      if (containsAlphabetOrPad(paramArrayOfbyte)) {
        str = StringUtils.newStringUtf8(paramArrayOfbyte);
        throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + str + "]");
      } 
      if (paramInt > 0) {
        this.encodeSize = str.length + 4;
        this.lineSeparator = new byte[str.length];
        System.arraycopy(str, 0, this.lineSeparator, 0, str.length);
      } else {
        this.encodeSize = 4;
        this.lineSeparator = null;
      } 
    } else {
      this.encodeSize = 4;
      this.lineSeparator = null;
    } 
    this.decodeSize = this.encodeSize - 1;
    if (paramBoolean) {
      paramArrayOfbyte = URL_SAFE_ENCODE_TABLE;
    } else {
      paramArrayOfbyte = STANDARD_ENCODE_TABLE;
    } 
    this.encodeTable = paramArrayOfbyte;
  }
  
  public Base64(boolean paramBoolean) {
    this(76, CHUNK_SEPARATOR, paramBoolean);
  }
  
  public static byte[] decodeBase64(String paramString) {
    return (new Base64()).decode(paramString);
  }
  
  public static byte[] decodeBase64(byte[] paramArrayOfbyte) {
    return (new Base64()).decode(paramArrayOfbyte);
  }
  
  public static BigInteger decodeInteger(byte[] paramArrayOfbyte) {
    return new BigInteger(1, decodeBase64(paramArrayOfbyte));
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfbyte) {
    return encodeBase64(paramArrayOfbyte, false);
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfbyte, boolean paramBoolean) {
    return encodeBase64(paramArrayOfbyte, paramBoolean, false);
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfbyte, boolean paramBoolean1, boolean paramBoolean2) {
    return encodeBase64(paramArrayOfbyte, paramBoolean1, paramBoolean2, 2147483647);
  }
  
  public static byte[] encodeBase64(byte[] paramArrayOfbyte, boolean paramBoolean1, boolean paramBoolean2, int paramInt) {
    Base64 base64;
    if (paramArrayOfbyte == null || paramArrayOfbyte.length == 0)
      return paramArrayOfbyte; 
    if (paramBoolean1) {
      base64 = new Base64(paramBoolean2);
    } else {
      base64 = new Base64(0, CHUNK_SEPARATOR, paramBoolean2);
    } 
    long l = base64.getEncodedLength(paramArrayOfbyte);
    if (l > paramInt)
      throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + l + ") than the specified maximum size of " + paramInt); 
    return base64.encode(paramArrayOfbyte);
  }
  
  public static byte[] encodeBase64Chunked(byte[] paramArrayOfbyte) {
    return encodeBase64(paramArrayOfbyte, true);
  }
  
  public static String encodeBase64String(byte[] paramArrayOfbyte) {
    return StringUtils.newStringUtf8(encodeBase64(paramArrayOfbyte, false));
  }
  
  public static byte[] encodeBase64URLSafe(byte[] paramArrayOfbyte) {
    return encodeBase64(paramArrayOfbyte, false, true);
  }
  
  public static String encodeBase64URLSafeString(byte[] paramArrayOfbyte) {
    return StringUtils.newStringUtf8(encodeBase64(paramArrayOfbyte, false, true));
  }
  
  public static byte[] encodeInteger(BigInteger paramBigInteger) {
    if (paramBigInteger == null)
      throw new NullPointerException("encodeInteger called with null parameter"); 
    return encodeBase64(toIntegerBytes(paramBigInteger), false);
  }
  
  public static boolean isArrayByteBase64(byte[] paramArrayOfbyte) {
    return isBase64(paramArrayOfbyte);
  }
  
  public static boolean isBase64(byte paramByte) {
    return (paramByte == 61 || (paramByte >= 0 && paramByte < DECODE_TABLE.length && DECODE_TABLE[paramByte] != -1));
  }
  
  public static boolean isBase64(String paramString) {
    return isBase64(StringUtils.getBytesUtf8(paramString));
  }
  
  public static boolean isBase64(byte[] paramArrayOfbyte) {
    for (int i = 0; i < paramArrayOfbyte.length; i++) {
      if (!isBase64(paramArrayOfbyte[i]) && !isWhiteSpace(paramArrayOfbyte[i]))
        return false; 
    } 
    return true;
  }
  
  static byte[] toIntegerBytes(BigInteger paramBigInteger) {
    int k = paramBigInteger.bitLength() + 7 >> 3 << 3;
    byte[] arrayOfByte2 = paramBigInteger.toByteArray();
    if (paramBigInteger.bitLength() % 8 != 0 && paramBigInteger.bitLength() / 8 + 1 == k / 8)
      return arrayOfByte2; 
    boolean bool = false;
    int j = arrayOfByte2.length;
    int i = j;
    if (paramBigInteger.bitLength() % 8 == 0) {
      bool = true;
      i = j - 1;
    } 
    j = k / 8;
    byte[] arrayOfByte1 = new byte[k / 8];
    System.arraycopy(arrayOfByte2, bool, arrayOfByte1, j - i, i);
    return arrayOfByte1;
  }
  
  void decode(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    if (!this.eof) {
      if (paramInt2 < 0)
        this.eof = true; 
      int i = 0;
      while (true) {
        if (i < paramInt2) {
          ensureBufferSize(this.decodeSize);
          byte b = paramArrayOfbyte[paramInt1];
          if (b == 61) {
            this.eof = true;
          } else {
            if (b >= 0 && b < DECODE_TABLE.length) {
              b = DECODE_TABLE[b];
              if (b >= 0) {
                this.modulus = (this.modulus + 1) % 4;
                this.bitWorkArea = b + (this.bitWorkArea << 6);
                if (this.modulus == 0) {
                  byte[] arrayOfByte = this.buffer;
                  int j = this.pos;
                  this.pos = j + 1;
                  arrayOfByte[j] = (byte)(this.bitWorkArea >> 16 & 0xFF);
                  arrayOfByte = this.buffer;
                  j = this.pos;
                  this.pos = j + 1;
                  arrayOfByte[j] = (byte)(this.bitWorkArea >> 8 & 0xFF);
                  arrayOfByte = this.buffer;
                  j = this.pos;
                  this.pos = j + 1;
                  arrayOfByte[j] = (byte)(this.bitWorkArea & 0xFF);
                } 
              } 
            } 
            i++;
            paramInt1++;
            continue;
          } 
        } 
        if (this.eof && this.modulus != 0) {
          ensureBufferSize(this.decodeSize);
          switch (this.modulus) {
            default:
              return;
            case 2:
              this.bitWorkArea >>= 4;
              paramArrayOfbyte = this.buffer;
              paramInt1 = this.pos;
              this.pos = paramInt1 + 1;
              paramArrayOfbyte[paramInt1] = (byte)(this.bitWorkArea & 0xFF);
              return;
            case 3:
              break;
          } 
          this.bitWorkArea >>= 2;
          paramArrayOfbyte = this.buffer;
          paramInt1 = this.pos;
          this.pos = paramInt1 + 1;
          paramArrayOfbyte[paramInt1] = (byte)(this.bitWorkArea >> 8 & 0xFF);
          paramArrayOfbyte = this.buffer;
          paramInt1 = this.pos;
          this.pos = paramInt1 + 1;
          paramArrayOfbyte[paramInt1] = (byte)(this.bitWorkArea & 0xFF);
          return;
        } 
        return;
      } 
    } 
  }
  
  void encode(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    if (!this.eof) {
      if (paramInt2 < 0) {
        this.eof = true;
        if (this.modulus != 0 || this.lineLength != 0) {
          ensureBufferSize(this.encodeSize);
          paramInt1 = this.pos;
          switch (this.modulus) {
            default:
              paramInt2 = this.currentLinePos;
              this.currentLinePos = this.pos - paramInt1 + paramInt2;
              if (this.lineLength > 0 && this.currentLinePos > 0) {
                System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
                this.pos += this.lineSeparator.length;
                return;
              } 
              return;
            case 1:
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[this.bitWorkArea >> 2 & 0x3F];
              paramArrayOfbyte = this.buffer;
              paramInt2 = this.pos;
              this.pos = paramInt2 + 1;
              paramArrayOfbyte[paramInt2] = this.encodeTable[this.bitWorkArea << 4 & 0x3F];
              if (this.encodeTable == STANDARD_ENCODE_TABLE) {
                paramArrayOfbyte = this.buffer;
                paramInt2 = this.pos;
                this.pos = paramInt2 + 1;
                paramArrayOfbyte[paramInt2] = 61;
                paramArrayOfbyte = this.buffer;
                paramInt2 = this.pos;
                this.pos = paramInt2 + 1;
                paramArrayOfbyte[paramInt2] = 61;
              } 
            case 2:
              break;
          } 
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[this.bitWorkArea >> 10 & 0x3F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[this.bitWorkArea >> 4 & 0x3F];
          paramArrayOfbyte = this.buffer;
          paramInt2 = this.pos;
          this.pos = paramInt2 + 1;
          paramArrayOfbyte[paramInt2] = this.encodeTable[this.bitWorkArea << 2 & 0x3F];
          if (this.encodeTable == STANDARD_ENCODE_TABLE) {
            paramArrayOfbyte = this.buffer;
            paramInt2 = this.pos;
            this.pos = paramInt2 + 1;
            paramArrayOfbyte[paramInt2] = 61;
          } 
        } 
        return;
      } 
      int i = 0;
      while (true) {
        if (i < paramInt2) {
          ensureBufferSize(this.encodeSize);
          this.modulus = (this.modulus + 1) % 3;
          byte b = paramArrayOfbyte[paramInt1];
          int j = b;
          if (b < 0)
            j = b + 256; 
          this.bitWorkArea = j + (this.bitWorkArea << 8);
          if (this.modulus == 0) {
            byte[] arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[this.bitWorkArea >> 18 & 0x3F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[this.bitWorkArea >> 12 & 0x3F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[this.bitWorkArea >> 6 & 0x3F];
            arrayOfByte = this.buffer;
            j = this.pos;
            this.pos = j + 1;
            arrayOfByte[j] = this.encodeTable[this.bitWorkArea & 0x3F];
            this.currentLinePos += 4;
            if (this.lineLength > 0 && this.lineLength <= this.currentLinePos) {
              System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
              this.pos += this.lineSeparator.length;
              this.currentLinePos = 0;
            } 
          } 
          i++;
          paramInt1++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  protected boolean isInAlphabet(byte paramByte) {
    return (paramByte >= 0 && paramByte < this.decodeTable.length && this.decodeTable[paramByte] != -1);
  }
  
  public boolean isUrlSafe() {
    return (this.encodeTable == URL_SAFE_ENCODE_TABLE);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\binary\Base64.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */