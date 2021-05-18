.class public Lifr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lifq;


# instance fields
.field private a:Lifh;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lifh;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lifr;->a:Lifh;

    .line 27
    iput-object p2, p0, Lifr;->b:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lifr;->b:Landroid/app/Activity;

    const-string v2, "offerFingerprintEnabling"

    .line 53
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 32
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v1, Lifs;->a:[I

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

    .line 44
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lifr;->a:Lifh;

    invoke-interface {v0}, Lifh;->a()V

    goto :goto_0

    .line 38
    :pswitch_1
    invoke-virtual {p0}, Lifr;->b()V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lifr;->a:Lifh;

    invoke-interface {v0}, Lifh;->b()V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lieu;

    iget-object v1, p0, Lifr;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lifr;->a:Lifh;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lieu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Liev;->DISABLE:Liev;

    :goto_0
    invoke-interface {v1, v0}, Lifh;->a(Liev;)V

    .line 62
    return-void

    .line 60
    :cond_0
    sget-object v0, Liev;->ENABLE:Liev;

    goto :goto_0
.end method
