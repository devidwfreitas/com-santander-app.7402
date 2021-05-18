.class public Lnbx;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/widget/ProgressBar;

.field final synthetic b:Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;JJLandroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lnbx;->b:Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;

    iput-object p6, p0, Lnbx;->a:Landroid/widget/ProgressBar;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lnbx;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 138
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lnbx;->a:Landroid/widget/ProgressBar;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 134
    return-void
.end method
