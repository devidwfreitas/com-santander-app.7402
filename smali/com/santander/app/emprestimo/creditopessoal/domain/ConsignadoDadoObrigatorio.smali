.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_EDIT_TEXT:I = 0x0

.field public static final TYPE_EDIT_TEXT_DATE:I = 0x2

.field public static final TYPE_SPINNER:I = 0x1


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hint:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private ok:Z

.field private type:I

.field private useAlert:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio$Type;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->type:I

    .line 33
    iput-object p2, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->key:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio$Type;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;-><init>(ILjava/lang/String;)V

    .line 38
    iput-object p3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->hint:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio$Type;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;-><init>(ILjava/lang/String;)V

    .line 43
    iput-object p3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->hint:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->useAlert:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->data:Ljava/util/List;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->ok:Z

    return v0
.end method

.method public setData(Ljava/util/List;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->data:Ljava/util/List;

    .line 69
    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->hint:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public setOk(Z)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->ok:Z

    .line 64
    return-object p0
.end method

.method public setUseAlert(Z)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->useAlert:Z

    .line 59
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->value:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public useAlert()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->useAlert:Z

    return v0
.end method
