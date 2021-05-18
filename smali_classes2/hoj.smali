.class public Lhoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxv;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lhoj;->c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    iput-object p2, p0, Lhoj;->a:Ljava/lang/String;

    iput-object p3, p0, Lhoj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodigoRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lhoj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lhoj;->b:Ljava/lang/String;

    return-object v0
.end method
