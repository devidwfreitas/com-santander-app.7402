.class public Lbr/com/santander/investimentoV2/features/cdbProgressivo/view/CdbProgressivoActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field a:Lnl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Llc;->activity_aplicar_cdb_progressivo_termos:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/cdbProgressivo/view/CdbProgressivoActivity;->setContentView(I)V

    .line 24
    new-instance v0, Lnl;

    invoke-direct {v0, p0}, Lnl;-><init>(Lack;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/features/cdbProgressivo/view/CdbProgressivoActivity;->a:Lnl;

    .line 25
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lbr/com/santander/investimentoV2/features/cdbProgressivo/view/CdbProgressivoActivity;->a:Lnl;

    invoke-virtual {v0}, Lnl;->a()V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method
