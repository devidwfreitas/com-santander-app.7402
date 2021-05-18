.class Lhpz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "matricula"

.field private static final f:Ljava/lang/String; = "dataAdmissao"

.field private static final g:Ljava/lang/String; = "codigoUnicoAverbador"

.field private static final h:Ljava/lang/String; = "codigoUnicoMargem"

.field private static final i:Ljava/lang/String; = "clientRegistrationId"

.field private static final j:Ljava/lang/String; = "hireDate"

.field private static final k:Ljava/lang/String; = "onlineAverbationCode"

.field private static final l:Ljava/lang/String; = "onlineMarginCode"


# instance fields
.field private a:Z

.field private b:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lhxq;)V
    .locals 1
    .param p1    # Lhxq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {p1}, Lhxq;->isRequiredDataFlag()Z

    move-result v0

    iput-boolean v0, p0, Lhpz;->a:Z

    .line 44
    invoke-interface {p1}, Lhxq;->getRequiredData()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;

    move-result-object v0

    iput-object v0, p0, Lhpz;->b:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;

    .line 45
    invoke-interface {p1}, Lhxq;->getMatriculaList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhpz;->c:Ljava/util/List;

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lhpz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    .line 168
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataAdmissao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "Data de admiss\u00e3o"

    .line 122
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codigoUnicoAverbador"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "C\u00f3digo de averba\u00e7\u00e3o"

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codigoUnicoMargem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const-string v0, "C\u00f3digo de consulta de margem"

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matricula"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "clientRegistrationId"

    .line 136
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataAdmissao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "hireDate"

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codigoUnicoAverbador"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "onlineAverbationCode"

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codigoUnicoMargem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const-string v0, "onlineMarginCode"

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;)Z
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codigoUnicoAverbador"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codigoUnicoMargem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;)I
    .locals 2
    .annotation build Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio$Type;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matricula"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 102
    iget-object v0, p0, Lhpz;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhpz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v0, p0, Lhpz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;

    .line 105
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    const-string v2, "clientRegistrationId"

    invoke-direct {v0, v3, v2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;-><init>(ILjava/lang/String;)V

    const-string v2, "Matr\u00edcula"

    .line 108
    invoke-virtual {v0, v2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->setHint(Ljava/lang/String;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->setData(Ljava/util/List;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    move-result-object v0

    .line 111
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "clientRegistrationId"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "hireDate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "onlineAverbationCode"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "onlineMarginCode"

    aput-object v4, v2, v3

    .line 156
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 157
    invoke-direct {p0, v4}, Lhpz;->a(Ljava/lang/String;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    move-result-object v4

    .line 158
    if-eqz v4, :cond_0

    .line 159
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lhpz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lhpz;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhpz;->d:Ljava/util/List;

    .line 52
    invoke-direct {p0}, Lhpz;->e()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lhpz;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    iget-boolean v0, p0, Lhpz;->a:Z

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lhpz;->b:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;->getRequiredFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;

    .line 59
    invoke-direct {p0, v0}, Lhpz;->b(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-direct {p0, v0}, Lhpz;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;)I

    move-result v3

    .line 61
    invoke-direct {p0, v0}, Lhpz;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-direct {p0, v0}, Lhpz;->c(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredField;)Z

    move-result v0

    .line 63
    new-instance v5, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    invoke-direct {v5, v3, v2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;-><init>(ILjava/lang/String;)V

    .line 64
    invoke-virtual {v5, v4}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->setHint(Ljava/lang/String;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->setUseAlert(Z)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lhpz;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lhpz;->f()V

    .line 72
    iget-object v0, p0, Lhpz;->d:Ljava/util/List;

    return-object v0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lhpz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    .line 77
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method c()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    iget-object v0, p0, Lhpz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    .line 87
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 89
    :cond_0
    return-object v1
.end method

.method d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lhpz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    .line 94
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlineAverbationCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
