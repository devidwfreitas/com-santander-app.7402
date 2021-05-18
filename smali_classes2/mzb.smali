.class public Lmzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field protected static final a:Ljava/lang/String; = "UTF-8"

.field public static d:Z

.field private static e:[C

.field private static f:[B

.field private static g:[C

.field private static h:[B


# instance fields
.field protected b:Landroid/content/SharedPreferences;

.field protected c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lmzb;->e:[C

    .line 30
    sput-object v0, Lmzb;->f:[B

    .line 32
    sput-object v0, Lmzb;->g:[C

    .line 33
    sput-object v0, Lmzb;->h:[B

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lmzb;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    .line 50
    iput-object p1, p0, Lmzb;->c:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmzb;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmzb;->b(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Lmzb;
    .locals 4

    .prologue
    .line 89
    const-class v1, Lmzb;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lmzb;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lmzb;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmzb;->e:[C

    .line 63
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lmzb;->e:[C

    sput-object v0, Lmzb;->g:[C

    .line 285
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmzb;->f:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lmzb;->g:[C

    sput-object v0, Lmzb;->e:[C

    .line 292
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lmzb;->f:[B

    sput-object v0, Lmzb;->h:[B

    .line 300
    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lmzb;->h:[B

    sput-object v0, Lmzb;->f:[B

    .line 307
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 196
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lmzc;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lmzc;

    invoke-direct {v0, p0}, Lmzc;-><init>(Lmzb;)V

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 312
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 313
    :goto_0
    const-string v1, "PBEWithMD5AndDES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 314
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lmzb;->e:[C

    invoke-direct {v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 315
    const-string v2, "PBEWithMD5AndDES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 316
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v5, Lmzb;->f:[B

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 317
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 312
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 326
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object v1, v0

    .line 327
    :goto_0
    const-string v0, "PBEWithMD5AndDES"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 328
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lmzb;->e:[C

    invoke-direct {v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 329
    const-string v2, "PBEWithMD5AndDES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 330
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v5, Lmzb;->f:[B

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 331
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v0

    .line 334
    :goto_1
    return-object p1

    .line 326
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning, could not decrypt the value.  It may be stored in plaintext.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lmzb;->a()Lmzc;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lmzb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-direct {p0, v1}, Lmzb;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    const/4 v2, 0x1

    sput-boolean v2, Lmzb;->d:Z

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Warning, could not decrypt the value.  Possible incorrect key used."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_1
    :goto_0
    return p2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 4

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :try_start_1
    invoke-virtual {p0, v0}, Lmzb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p2

    .line 214
    :goto_0
    return p2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    .line 211
    const/4 v1, 0x1

    sput-boolean v1, Lmzb;->d:Z

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning, could not decrypt the value.  Possible incorrect key.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :try_start_1
    invoke-virtual {p0, v0}, Lmzb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p2

    .line 232
    :goto_0
    return p2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    .line 227
    :catch_1
    move-exception v0

    .line 229
    const/4 v1, 0x1

    sput-boolean v1, Lmzb;->d:Z

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning, could not decrypt the value.  Possible incorrect key.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    :try_start_1
    invoke-virtual {p0, v0}, Lmzb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide p2

    .line 250
    :goto_0
    return-wide p2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    .line 247
    const/4 v1, 0x1

    sput-boolean v1, Lmzb;->d:Z

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning, could not decrypt the value.  Possible incorrect key.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lmzb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class does not work with String Sets."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 267
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lmzb;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 272
    return-void
.end method
