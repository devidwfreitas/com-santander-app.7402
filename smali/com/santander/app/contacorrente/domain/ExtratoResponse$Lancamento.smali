.class public Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/contacorrente/domain/LancamentoContract;


# instance fields
.field protected balancePerMove:Ljava/lang/String;
    .annotation runtime Leks;
        a = "balancePerMove"
    .end annotation
.end field

.field protected documentNumber:Ljava/lang/String;
    .annotation runtime Leks;
        a = "documentNumber"
    .end annotation
.end field

.field protected historyDescription:Ljava/lang/String;
    .annotation runtime Leks;
        a = "historyDescription"
    .end annotation
.end field

.field protected releaseDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "releaseDate"
    .end annotation
.end field

.field protected releaseValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "releaseValue"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected formatValor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    invoke-static {p1}, Lnaq;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->releaseDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->releaseDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDocto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->documentNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHistorico()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->historyDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->balancePerMove:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p0, v0}, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->formatValor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v0, "0"

    goto :goto_0
.end method

.method public getValor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->releaseValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->formatValor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->releaseDate:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setDocto(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->documentNumber:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setHistorico(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->historyDescription:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSaldo(D)V
    .locals 5

    .prologue
    .line 229
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->balancePerMove:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setValor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/ExtratoResponse$Lancamento;->releaseValue:Ljava/lang/String;

    .line 199
    return-void
.end method
