.class public Lgwl;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;",
        "Ljava/lang/Void;",
        "Lfuy;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ConsultarExtratoTask"


# instance fields
.field private b:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Lfuy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkv",
            "<",
            "Lfuy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lgwl;->b:Lgkv;

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;)Lfuy;
    .locals 5

    .prologue
    .line 31
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 32
    invoke-static {}, Lhat;->g()Lhbe;

    move-result-object v1

    .line 34
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->getConta()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->getConta()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->getFromDate()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->getToDate()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v2, v3, v4, v0}, Lhbe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfuy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "ConsultarExtratoTask"

    const-string v2, "doInBackground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lfuy;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lgwl;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;

    invoke-virtual {p0, p1}, Lgwl;->a([Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;)Lfuy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lfuy;

    invoke-virtual {p0, p1}, Lgwl;->a(Lfuy;)V

    return-void
.end method
