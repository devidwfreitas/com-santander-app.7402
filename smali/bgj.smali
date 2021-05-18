.class public Lbgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field protected static final a:Ljava/lang/String; = "UTF-8"

.field public static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Lbgj;


# instance fields
.field protected b:Landroid/content/SharedPreferences;

.field protected c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lbgj;->e:Ljava/lang/String;

    .line 25
    sput-object v0, Lbgj;->f:Ljava/lang/String;

    .line 30
    sput-object v0, Lbgj;->g:Lbgj;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lbgj;->d:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    .line 44
    iput-object p1, p0, Lbgj;->c:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Lef;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbgj;->e:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lbgj;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ldy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ldy;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbgj;->f:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Lbgj;
    .locals 4

    .prologue
    .line 69
    const-class v1, Lbgj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbgj;->g:Lbgj;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lbgj;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 72
    invoke-direct {v0, v2, v3}, Lbgj;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v0, Lbgj;->g:Lbgj;

    .line 76
    :cond_0
    sget-object v0, Lbgj;->g:Lbgj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ldx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 265
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 266
    :goto_0
    invoke-direct {p0}, Lbgj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 267
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lbgj;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 268
    invoke-direct {p0}, Lbgj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 269
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 270
    sget-object v5, Lbgj;->f:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 269
    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 271
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 272
    const/4 v2, 0x2

    .line 271
    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 272
    const-string v2, "UTF-8"

    .line 271
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 265
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    move-object v1, v0

    .line 286
    :goto_0
    invoke-direct {p0}, Lbgj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 287
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lbgj;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 288
    invoke-direct {p0}, Lbgj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 289
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 290
    sget-object v5, Lbgj;->f:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 289
    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 291
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v0

    .line 294
    :goto_1
    return-object p1

    .line 285
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lbgk;

    invoke-direct {v0, p0}, Lbgk;-><init>(Lbgj;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lbgj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_0
    :goto_0
    return p2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    :try_start_1
    invoke-virtual {p0, v0}, Lbgj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p2

    .line 194
    :goto_0
    return p2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_0

    .line 189
    :catch_1
    move-exception v0

    .line 191
    const/4 v0, 0x1

    sput-boolean v0, Lbgj;->d:Z

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :try_start_1
    invoke-virtual {p0, v0}, Lbgj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p2

    .line 212
    :goto_0
    return p2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    .line 207
    :catch_1
    move-exception v0

    .line 209
    const/4 v0, 0x1

    sput-boolean v0, Lbgj;->d:Z

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    :try_start_1
    invoke-virtual {p0, v0}, Lbgj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide p2

    .line 230
    :goto_0
    return-wide p2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 227
    const/4 v0, 0x1

    sput-boolean v0, Lbgj;->d:Z

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lbgj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 249
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lbgj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 255
    return-void
.end method
