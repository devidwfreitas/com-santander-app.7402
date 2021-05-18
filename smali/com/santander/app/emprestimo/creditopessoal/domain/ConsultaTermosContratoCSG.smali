.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contractTerms:Ljava/lang/String;
    .annotation runtime Leks;
        a = "contractTerms"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContractTerms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;->contractTerms:Ljava/lang/String;

    return-object v0
.end method
