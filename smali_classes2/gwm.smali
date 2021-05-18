.class public Lgwm;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljxa;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SaldosDetalhadoTask"


# instance fields
.field private b:Lcom/santander/app/contacorrente/domain/Conta;

.field private c:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Ljxa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/santander/app/contacorrente/domain/Conta;Lgkv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            "Lgkv",
            "<",
            "Ljxa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p2, p0, Lgwm;->c:Lgkv;

    .line 27
    iput-object p1, p0, Lgwm;->b:Lcom/santander/app/contacorrente/domain/Conta;

    .line 28
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljxa;
    .locals 3

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lhat;->f()Lhbb;

    move-result-object v0

    iget-object v1, p0, Lgwm;->b:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgwm;->b:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhbb;->a(Ljava/lang/String;Ljava/lang/String;)Ljxa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "SaldosDetalhadoTask"

    const-string v2, "doInBackground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljxa;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lgwm;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lgwm;->a([Ljava/lang/Void;)Ljxa;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljxa;

    invoke-virtual {p0, p1}, Lgwm;->a(Ljxa;)V

    return-void
.end method
