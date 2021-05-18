.class public Lbr/com/santander/investimentoV2/features/termos/view/TermosAceiteItemActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lyf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Llc;->activity_termo_aceite_item:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/termos/view/TermosAceiteItemActivity;->setContentView(I)V

    .line 30
    new-instance v1, Lyf;

    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/termos/view/TermosAceiteItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lxw;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw;

    invoke-direct {v1, p0, v0}, Lyf;-><init>(Lack;Lxw;)V

    iput-object v1, p0, Lbr/com/santander/investimentoV2/features/termos/view/TermosAceiteItemActivity;->a:Lyf;

    .line 32
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
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lbr/com/santander/investimentoV2/features/termos/view/TermosAceiteItemActivity;->a:Lyf;

    invoke-virtual {v0}, Lyf;->a()V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
