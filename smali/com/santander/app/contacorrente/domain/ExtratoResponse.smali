.class public Lcom/santander/app/contacorrente/domain/ExtratoResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/contacorrente/domain/ExtratoContract;


# instance fields
.field protected altairWarning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/ExtratoResponse$AltairWarning;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "altairWarning"
    .end annotation
.end field

.field protected entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgvw;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "entry"
    .end annotation
.end field

.field protected lancamentoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "checkingaccountstatements"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntry()Lgvw;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse;->entryList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse;->entryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgvw;

    goto :goto_0
.end method

.method public getLancamentoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/LancamentoContract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse;->lancamentoList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse;->lancamentoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_0
    return-object v0
.end method

.method public hasMorePages()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse;->altairWarning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$AltairWarning;

    .line 45
    iget-object v0, v0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$AltairWarning;->warningCode:Ljava/lang/String;

    const-string v3, "UYA8001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    move v0, v1

    .line 51
    goto :goto_0
.end method
