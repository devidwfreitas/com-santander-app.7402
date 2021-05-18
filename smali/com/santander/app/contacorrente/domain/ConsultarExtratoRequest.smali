.class public Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private conta:Lcom/santander/app/contacorrente/domain/Conta;

.field private fromDate:Ljava/lang/String;

.field private toDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->conta:Lcom/santander/app/contacorrente/domain/Conta;

    .line 17
    iput-object p2, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->fromDate:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->toDate:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getConta()Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->conta:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public getFromDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->fromDate:Ljava/lang/String;

    return-object v0
.end method

.method public getToDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;->toDate:Ljava/lang/String;

    return-object v0
.end method
