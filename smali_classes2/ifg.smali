.class public Lifg;
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
    .line 83
    iput-object p1, p0, Lifg;->a:Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    const-string v0, "Outros_Login_Biometria_Habilitar_Acao"

    const-string v1, "HabilitarMaisTarde"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lifg;->a:Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;

    invoke-virtual {v0}, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;->b()V

    .line 88
    return-void
.end method
