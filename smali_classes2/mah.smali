.class Lmah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmaf;


# direct methods
.method constructor <init>(Lmaf;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lmah;->a:Lmaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lmah;->a:Lmaf;

    invoke-static {v0}, Lmaf;->a(Lmaf;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 382
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 383
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    .line 385
    iget-object v1, p0, Lmah;->a:Lmaf;

    invoke-static {v1}, Lmaf;->a(Lmaf;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;)V

    .line 386
    iget-object v0, p0, Lmah;->a:Lmaf;

    invoke-static {v0}, Lmaf;->a(Lmaf;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lmah;->a:Lmaf;

    invoke-static {v0}, Lmaf;->a(Lmaf;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 394
    iget-object v0, p0, Lmah;->a:Lmaf;

    invoke-static {v0}, Lmaf;->a(Lmaf;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    iget-object v1, p0, Lmah;->a:Lmaf;

    invoke-static {v1}, Lmaf;->a(Lmaf;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lmhj;->a(Lgrs;Lis;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 376
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lmah;->a(Lis;)V

    return-void
.end method
