.class public Liwh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liwg;


# instance fields
.field private a:Ljap;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljap;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Liwh;->a:Ljap;

    .line 30
    iput-object p2, p0, Liwh;->b:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lgyx;)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Liwh;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lgzr;->DEFAULT:Lgzr;

    invoke-static {v0, p1, v1, v2}, Lgyy;->a(Landroid/content/Context;Lgyx;Ljava/lang/String;Lgzr;)V

    .line 36
    return-void
.end method

.method public a(Lgyx;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0}, Live;->a()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-static {v0}, Lalb;->c(Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Liwh;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lgzr;->QR:Lgzr;

    invoke-static {v0, p1, p2, v1}, Lgyy;->a(Landroid/content/Context;Lgyx;Ljava/lang/String;Lgzr;)V

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liwh;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string v1, "id"

    sget-object v2, Liut;->HABILITACAO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Liwh;->a:Ljap;

    invoke-interface {v1, v0}, Ljap;->a(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liwh;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "id"

    sget-object v2, Liut;->HABILITACAO_ATM:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 63
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Liwh;->a:Ljap;

    invoke-interface {v1, v0}, Ljap;->a(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
