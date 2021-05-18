.class public Lndq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lndp;


# instance fields
.field private a:Lncq;


# direct methods
.method public constructor <init>(Lncq;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lndq;->a:Lncq;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 27
    const-string v0, "tipo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v1, Lndr;->a:[I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "tipo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnat;

    invoke-virtual {v0}, Lnat;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->a()V

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->d()V

    goto :goto_0

    .line 36
    :pswitch_2
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->b()V

    goto :goto_0

    .line 39
    :pswitch_3
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->c()V

    goto :goto_0

    .line 42
    :pswitch_4
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->e()V

    goto :goto_0

    .line 45
    :pswitch_5
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->f()V

    goto :goto_0

    .line 48
    :pswitch_6
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->g()V

    goto :goto_0

    .line 51
    :pswitch_7
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->h()V

    goto :goto_0

    .line 54
    :pswitch_8
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->i()V

    goto :goto_0

    .line 57
    :pswitch_9
    iget-object v0, p0, Lndq;->a:Lncq;

    invoke-interface {v0}, Lncq;->j()V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 65
    const-string v0, "tipo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tipo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnat;->USUARIO_SEM_SEMENTE:Lnat;

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
