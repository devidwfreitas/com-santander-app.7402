.class public Liox;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Balances"


# instance fields
.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "balanceAvailable"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accountingBalance"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Liox;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "Balances"

    const-string v2, "getAccountingBalance"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    const-string v0, "0"

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Liox;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "Balances"

    const-string v2, "getBalanceAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    const-string v0, "0"

    goto :goto_0
.end method
