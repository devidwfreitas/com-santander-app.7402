.class final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


# instance fields
.field final synthetic val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationFailed()V

    .line 121
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;

    .line 115
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->access$000(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;)V

    .line 116
    return-void
.end method
