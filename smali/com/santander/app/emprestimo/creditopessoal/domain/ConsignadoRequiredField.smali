.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private size:Ljava/lang/String;
    .annotation runtime Leks;
        a = "size"
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
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->size:Ljava/lang/String;

    return-object v0
.end method
