.class public Lifx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lifw;


# instance fields
.field private a:Lifp;

.field private b:Lifb;


# direct methods
.method public constructor <init>(Lifp;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lifx;->a:Lifp;

    .line 25
    new-instance v0, Lifc;

    invoke-direct {v0, p0, p2}, Lifc;-><init>(Lifw;Landroid/app/Activity;)V

    iput-object v0, p0, Lifx;->b:Lifb;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 30
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Lify;->a:[I

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

    .line 42
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lifx;->a:Lifp;

    invoke-interface {v0}, Lifp;->b()V

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lifx;->a:Lifp;

    invoke-interface {v0}, Lifp;->c()V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lifx;->a:Lifp;

    invoke-interface {v0}, Lifp;->a()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Liev;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lifx;->a:Lifp;

    invoke-interface {v0, p1, p2, p3}, Lifp;->a(Liev;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lifx;->b:Lifb;

    invoke-interface {v0, p1}, Lifb;->a(Z)V

    .line 47
    return-void
.end method
