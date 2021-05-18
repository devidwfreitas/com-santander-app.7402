.class public Lieu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/fingerprint/FingerprintManager;

.field private c:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lieu;->a:Landroid/content/Context;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 34
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lieu;->b:Landroid/hardware/fingerprint/FingerprintManager;

    .line 35
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lieu;->c:Landroid/app/KeyguardManager;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 45
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 46
    iget-object v3, p0, Lieu;->a:Landroid/content/Context;

    const-string v4, "android.permission.USE_FINGERPRINT"

    invoke-static {v3, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    iget-object v0, p0, Lieu;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android.permission.USE_FINGERPRINT"

    aput-object v3, v1, v2

    const/4 v3, 0x6

    invoke-static {v0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 57
    :cond_1
    iget-object v3, p0, Lieu;->a:Landroid/content/Context;

    const-string v4, "offerFingerprintEnabling"

    iget-object v5, p0, Lieu;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 58
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 60
    iget-object v3, p0, Lieu;->b:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    iget-object v4, p0, Lieu;->b:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v4

    .line 63
    iget-object v5, p0, Lieu;->c:Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    .line 65
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    .line 73
    goto :goto_0

    :cond_2
    move v0, v2

    .line 65
    goto :goto_1

    .line 70
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    const-string v0, ""

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "***.***"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {p1}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    iget-object v1, p0, Lieu;->a:Landroid/content/Context;

    const-string v2, "fingerprintEnable"

    iget-object v3, p0, Lieu;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 131
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 130
    return v0

    .line 121
    :cond_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 122
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lieu;->a:Landroid/content/Context;

    const-string v1, "SovereignBrasilProfile"

    iget-object v2, p0, Lieu;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "l"

    const-string v2, ""

    .line 127
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    .line 85
    iget-object v0, p0, Lieu;->a:Landroid/content/Context;

    const-string v3, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lieu;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "android.permission.USE_FINGERPRINT"

    aput-object v4, v3, v2

    const/4 v4, 0x6

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lieu;->b:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    iget-object v3, p0, Lieu;->b:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    .line 99
    iget-object v4, p0, Lieu;->c:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    .line 101
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    move v0, v1

    .line 111
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    .line 101
    goto :goto_0

    :cond_3
    move v0, v2

    .line 108
    goto :goto_0
.end method
