.class public Liwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liwx;


# instance fields
.field private a:Ljba;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljba;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Liwy;->a:Ljba;

    .line 27
    iput-object p2, p0, Liwy;->b:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lgyx;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Liwy;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    invoke-virtual {v1}, Live;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgyy;->a(Landroid/content/Context;Ljava/lang/String;Lgyx;)V

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liwy;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v1, "id"

    sget-object v2, Liut;->SINCRONIA:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Liwy;->a:Ljba;

    invoke-interface {v1, v0}, Ljba;->a(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
