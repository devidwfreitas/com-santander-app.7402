.class public Ljkw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljkv;


# instance fields
.field private a:Ljko;


# direct methods
.method public constructor <init>(Ljko;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ljkw;->a:Ljko;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 25
    const-string v0, "tipo_produto"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tipo_produto"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljda;

    .line 28
    :goto_0
    if-nez v0, :cond_2

    .line 44
    :cond_0
    :goto_1
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :cond_2
    sget-object v1, Ljkx;->a:[I

    invoke-virtual {v0}, Ljda;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 32
    :pswitch_0
    iget-object v0, p0, Ljkw;->a:Ljko;

    invoke-interface {v0}, Ljko;->a()V

    goto :goto_1

    .line 35
    :pswitch_1
    iget-object v0, p0, Ljkw;->a:Ljko;

    invoke-interface {v0}, Ljko;->b()V

    goto :goto_1

    .line 38
    :pswitch_2
    iget-object v0, p0, Ljkw;->a:Ljko;

    invoke-interface {v0}, Ljko;->c()V

    .line 39
    const-string v0, "exibe_lista"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Ljkw;->a:Ljko;

    invoke-interface {v0}, Ljko;->d()V

    goto :goto_1

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
