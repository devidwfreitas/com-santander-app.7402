.class public Lbr/com/santander/investimentoV2/features/comprovantes/view/ComprovantesActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/comprovantes/view/ComprovantesActivity;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    .line 39
    invoke-virtual {v0}, Lacg;->v()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lacg;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/comprovantes/view/ComprovantesActivity;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    invoke-virtual {v1, p0, v0}, Lzs;->e(Landroid/content/Context;Lacg;)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzs;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Llc;->activity_comprovantes_v1_5:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/comprovantes/view/ComprovantesActivity;->setContentView(I)V

    .line 28
    new-instance v0, Lod;

    invoke-direct {v0, p0}, Lod;-><init>(Lack;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/features/comprovantes/view/ComprovantesActivity;->a:Lod;

    .line 30
    return-void
.end method
