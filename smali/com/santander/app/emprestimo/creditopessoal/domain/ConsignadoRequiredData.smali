.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private requiredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "requiredFields"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;->requiredFields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRequiredFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;->requiredFields:Ljava/util/List;

    return-object v0
.end method
