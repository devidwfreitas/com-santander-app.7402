.class public Ljrc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljrb;


# instance fields
.field private a:Ljqz;


# direct methods
.method public constructor <init>(Ljqz;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ljrc;->a:Ljqz;

    .line 23
    const-string v0, "sucesso"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p1}, Ljqz;->a()V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v0, "erro"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljqz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
