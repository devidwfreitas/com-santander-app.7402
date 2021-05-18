.class public Lbr/com/santander/investimentoV2/features/termos/view/TermosRecusaActivity;
.super Lack;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lym;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/termos/view/TermosRecusaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/termos/view/TermosRecusaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    sget v2, Llc;->activity_termo_recusa:I

    invoke-virtual {p0, v2}, Lbr/com/santander/investimentoV2/features/termos/view/TermosRecusaActivity;->setContentView(I)V

    .line 30
    new-instance v2, Lym;

    invoke-direct {v2, p0, v0, v1}, Lym;-><init>(Lack;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lbr/com/santander/investimentoV2/features/termos/view/TermosRecusaActivity;->a:Lym;

    .line 31
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lbr/com/santander/investimentoV2/features/termos/view/TermosRecusaActivity;->a:Lym;

    invoke-virtual {v0}, Lym;->a()V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
