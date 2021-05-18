.class Liwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Liwk;


# direct methods
.method constructor <init>(Liwk;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Liwl;->a:Liwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 35
    check-cast p1, Livc;

    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liwl;->a:Liwk;

    invoke-static {v1}, Liwk;->a(Liwk;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v1, "id"

    sget-object v2, Liut;->HABILITACAO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    const-string v1, "content"

    invoke-virtual {p1}, Livc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Liwl;->a:Liwk;

    invoke-static {v1}, Liwk;->b(Liwk;)Ljat;

    move-result-object v1

    invoke-interface {v1, v0}, Ljat;->a(Landroid/content/Intent;)V

    .line 43
    return-void
.end method
