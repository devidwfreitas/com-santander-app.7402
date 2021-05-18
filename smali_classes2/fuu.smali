.class public Lfuu;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfvu;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lfuu;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private agencia:Ljava/lang/String;

.field private autorizado:Ljava/lang/String;

.field private banco:Ljava/lang/String;

.field private cpf:Ljava/lang/String;

.field private cuenta:Ljava/lang/String;

.field private descricao:Ljava/lang/String;

.field private extracto:Lfuy;

.field private extractoHome:Lfuy;

.field private finalidade:Ljava/lang/String;

.field private indicadorContaConjunta:Ljava/lang/String;

.field private indicadorMesmoTitular:Ljava/lang/String;

.field private isCuentaNueva:Z

.field private ispbBanco:Ljava/lang/String;

.field private lanzamientoFuturo:Lfva;

.field private nomeBanco:Ljava/lang/String;

.field private numeroDocumento:Ljava/lang/String;

.field private spinnerBanco:I

.field private tipoConta:Ljava/lang/String;

.field private tipoDocumento:Ljava/lang/String;

.field private valor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 150
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lfuu;)I
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lfuu;->getDescricao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lfuu;->getDescricao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lfuu;

    invoke-virtual {p0, p1}, Lfuu;->compareTo(Lfuu;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 163
    instance-of v0, p1, Lfuu;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Lfuu;

    .line 165
    iget-object v0, p0, Lfuu;->cuenta:Ljava/lang/String;

    iget-object v1, p1, Lfuu;->cuenta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAgencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lfuu;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public getAutorizado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lfuu;->autorizado:Ljava/lang/String;

    return-object v0
.end method

.method public getBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lfuu;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public getCpf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lfuu;->cpf:Ljava/lang/String;

    return-object v0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lfuu;->cuenta:Ljava/lang/String;

    return-object v0
.end method

.method public getDescricao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lfuu;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public getExtracto()Lfuy;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lfuu;->extracto:Lfuy;

    return-object v0
.end method

.method public getExtractoHome()Lfuy;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lfuu;->extractoHome:Lfuy;

    return-object v0
.end method

.method public getFinalidade()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lfuu;->finalidade:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicadorContaConjunta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lfuu;->indicadorContaConjunta:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicadorMesmoTitular()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lfuu;->indicadorMesmoTitular:Ljava/lang/String;

    return-object v0
.end method

.method public getIspbBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lfuu;->ispbBanco:Ljava/lang/String;

    return-object v0
.end method

.method public getLanzamientoFuturo()Lfva;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lfuu;->lanzamientoFuturo:Lfva;

    return-object v0
.end method

.method public getNomeBanco()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lfuu;->nomeBanco:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lfuu;->numeroDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getSpinnerBanco()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lfuu;->spinnerBanco:I

    return v0
.end method

.method public getTipoConta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lfuu;->tipoConta:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoDocumento()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lfuu;->tipoDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public getValor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lfuu;->valor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfuu;->valor:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public isCuentaNueva()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lfuu;->isCuentaNueva:Z

    return v0
.end method

.method public setAgencia(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lfuu;->agencia:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setAutorizado(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lfuu;->autorizado:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setBanco(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lfuu;->banco:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setCpf(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lfuu;->cpf:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setCuenta(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lfuu;->cuenta:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCuentaNueva(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lfuu;->isCuentaNueva:Z

    .line 208
    return-void
.end method

.method public setDescricao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lfuu;->descricao:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setExtracto(Lfuy;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lfuu;->extracto:Lfuy;

    .line 159
    return-void
.end method

.method public setExtractoHome(Lfuy;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lfuu;->extractoHome:Lfuy;

    .line 200
    return-void
.end method

.method public setFinalidade(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lfuu;->finalidade:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setIndicadorContaConjunta(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lfuu;->indicadorContaConjunta:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setIndicadorMesmoTitular(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lfuu;->indicadorMesmoTitular:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setIspbBanco(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lfuu;->ispbBanco:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setLanzamientoFuturo(Lfva;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lfuu;->lanzamientoFuturo:Lfva;

    .line 176
    return-void
.end method

.method public setNomeBanco(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lfuu;->nomeBanco:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setNumeroDocumento(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lfuu;->numeroDocumento:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSpinnerBanco(I)V
    .locals 0

    .prologue
    .line 191
    iput p1, p0, Lfuu;->spinnerBanco:I

    .line 192
    return-void
.end method

.method public setTipoConta(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lfuu;->tipoConta:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setTipoDocumento(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lfuu;->tipoDocumento:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setValor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lfuu;->valor:Ljava/lang/String;

    .line 75
    return-void
.end method
