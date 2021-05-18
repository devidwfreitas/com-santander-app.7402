.class public Lifu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lift;


# instance fields
.field private a:Lifo;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lifo;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lifu;->a:Lifo;

    .line 24
    iput-object p2, p0, Lifu;->b:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    sget-object v1, Lifv;->a:[I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liev;

    invoke-virtual {v0}, Liev;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 32
    :pswitch_0
    const-string v0, "kind"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lifu;->a:Lifo;

    invoke-interface {v0}, Lifo;->a()V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lifu;->a:Lifo;

    invoke-interface {v0}, Lifo;->b()V

    goto :goto_0

    .line 38
    :pswitch_1
    new-instance v0, Lieu;

    iget-object v1, p0, Lifu;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v1, ""

    invoke-virtual {v0, v1}, Lieu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Liev;->DISABLE:Liev;

    .line 43
    :goto_1
    const-string v1, "kind"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lifu;->a:Lifo;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lifo;->a(Ljava/lang/String;Liev;)V

    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Liev;->ENABLE:Liev;

    goto :goto_1

    .line 46
    :cond_2
    iget-object v1, p0, Lifu;->a:Lifo;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lifo;->b(Ljava/lang/String;Liev;)V

    goto :goto_0

    .line 51
    :cond_3
    new-instance v0, Lieu;

    iget-object v1, p0, Lifu;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v1, ""

    invoke-virtual {v0, v1}, Lieu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Liev;->DISABLE:Liev;

    .line 56
    :goto_2
    iget-object v1, p0, Lifu;->a:Lifo;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lifo;->a(Ljava/lang/String;Liev;)V

    goto :goto_0

    .line 53
    :cond_4
    sget-object v0, Liev;->ENABLE:Liev;

    goto :goto_2

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
