.class public Liff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Liff;->a:Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 77
    const-string v0, "Outros_Login_Biometria_Habilitar_Acao"

    const-string v1, "HabilitarAgora"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Liff;->a:Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;

    invoke-static {v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->a(Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;)Lifq;

    move-result-object v0

    invoke-interface {v0}, Lifq;->b()V

    .line 79
    return-void
.end method
