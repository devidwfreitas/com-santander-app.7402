.class public Liey;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"

# interfaces
.implements Liex;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/fingerprint/FingerprintManager;

.field private c:Liew;

.field private d:Landroid/os/CancellationSignal;

.field private e:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 47
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Liey;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Liew;Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Liew;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 51
    iput-object p1, p0, Liey;->b:Landroid/hardware/fingerprint/FingerprintManager;

    .line 52
    iput-object p2, p0, Liey;->c:Liew;

    .line 53
    iput-object p3, p0, Liey;->a:Landroid/content/Context;

    .line 56
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 58
    const-string v1, "AES"

    const-string v2, "AndroidKeyStore"

    .line 59
    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 61
    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 65
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v4, "name"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "CBC"

    aput-object v6, v4, v5

    .line 67
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 68
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "PKCS7Padding"

    aput-object v6, v4, v5

    .line 69
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 65
    invoke-virtual {v1, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 71
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 73
    const-string v1, "name"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 76
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-direct {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Liey;->e:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Liey;->d:Landroid/os/CancellationSignal;

    .line 90
    iput-boolean v3, p0, Liey;->f:Z

    .line 92
    iget-object v0, p0, Liey;->a:Landroid/content/Context;

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Liey;->b:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Liey;->e:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    iget-object v2, p0, Liey;->d:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Liew;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Liey;->c:Liew;

    .line 85
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Liey;->d:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Liey;->f:Z

    .line 103
    iget-object v0, p0, Liey;->d:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Liey;->d:Landroid/os/CancellationSignal;

    .line 106
    :cond_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 110
    iget-boolean v0, p0, Liey;->f:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 112
    iget-object v0, p0, Liey;->c:Liew;

    iget-object v1, p0, Liey;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liew;->a(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Liey;->c:Liew;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Liew;->a(Z)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Liey;->c:Liew;

    invoke-interface {v0, p2}, Liew;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Liey;->c:Liew;

    iget-object v1, p0, Liey;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liew;->a(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Liey;->c:Liew;

    invoke-interface {v0, p2}, Liew;->a(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Liey;->c:Liew;

    invoke-interface {v0}, Liew;->b()V

    .line 133
    invoke-virtual {p0}, Liey;->b()V

    .line 134
    return-void
.end method
