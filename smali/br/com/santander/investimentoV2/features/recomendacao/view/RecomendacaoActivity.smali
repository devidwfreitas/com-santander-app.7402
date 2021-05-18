.class public Lbr/com/santander/investimentoV2/features/recomendacao/view/RecomendacaoActivity;
.super Lack;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget v0, Llc;->activity_recomendacao:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/recomendacao/view/RecomendacaoActivity;->setContentView(I)V

    .line 21
    new-instance v0, Lwh;

    invoke-direct {v0, p0}, Lwh;-><init>(Lack;)V

    .line 22
    return-void
.end method
