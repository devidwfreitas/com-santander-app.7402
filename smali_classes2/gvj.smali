.class public Lgvj;
.super Lgvf;
.source "SourceFile"

# interfaces
.implements Lgvv;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lfrb;


# direct methods
.method public constructor <init>(Lfrb;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lgvf;-><init>()V

    .line 27
    iput-object p1, p0, Lgvj;->f:Lfrb;

    .line 28
    invoke-direct {p0}, Lgvj;->i()V

    .line 29
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->g(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->h(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->i(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->j(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->a(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->b(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->c(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->l(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->k(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lgvj;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvj;->f(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lgvj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lgvj;->a:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lgvj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lgvj;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgvj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgvj;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lgvj;->e:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgvi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v1, Lgvi;

    invoke-direct {v1}, Lgvi;-><init>()V

    .line 90
    const-string v2, "Data Agendada:"

    invoke-virtual {v1, v2}, Lgvi;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lgvj;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvi;->b(Ljava/lang/String;)V

    .line 93
    new-instance v2, Lgvi;

    invoke-direct {v2}, Lgvi;-><init>()V

    .line 94
    const-string v3, "Descri\u00e7\u00e3o:"

    invoke-virtual {v2, v3}, Lgvi;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lgvj;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvi;->b(Ljava/lang/String;)V

    .line 97
    new-instance v3, Lgvi;

    invoke-direct {v3}, Lgvi;-><init>()V

    .line 98
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lgvi;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lgvj;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgvi;->b(Ljava/lang/String;)V

    .line 101
    new-instance v4, Lgvi;

    invoke-direct {v4}, Lgvi;-><init>()V

    .line 102
    const-string v5, "Valor:"

    invoke-virtual {v4, v5}, Lgvi;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lgvj;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgvi;->b(Ljava/lang/String;)V

    .line 105
    new-instance v5, Lgvi;

    invoke-direct {v5}, Lgvi;-><init>()V

    .line 106
    const-string v6, "C\u00f3digo de Barras:"

    invoke-virtual {v5, v6}, Lgvi;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lgvj;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgvi;->b(Ljava/lang/String;)V

    .line 109
    new-instance v6, Lgvi;

    invoke-direct {v6}, Lgvi;-><init>()V

    .line 110
    const-string v7, "CPF:"

    invoke-virtual {v6, v7}, Lgvi;->a(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lgvj;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgvi;->b(Ljava/lang/String;)V

    .line 113
    new-instance v7, Lgvi;

    invoke-direct {v7}, Lgvi;-><init>()V

    .line 114
    const-string v8, "CNPJ:"

    invoke-virtual {v7, v8}, Lgvi;->a(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lgvj;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgvi;->b(Ljava/lang/String;)V

    .line 117
    new-instance v8, Lgvi;

    invoke-direct {v8}, Lgvi;-><init>()V

    .line 119
    invoke-virtual {p0}, Lgvj;->h()Ljava/lang/String;

    move-result-object v9

    .line 120
    if-eqz v9, :cond_0

    .line 121
    const-string v9, "Data do Vencimento:"

    invoke-virtual {v8, v9}, Lgvi;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lgvj;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgvi;->b(Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v9, Lgvi;

    invoke-direct {v9}, Lgvi;-><init>()V

    .line 126
    const-string v10, "Data/Hora da Solicita\u00e7\u00e3o:"

    invoke-virtual {v9, v10}, Lgvi;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lgvj;->p()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgvi;->b(Ljava/lang/String;)V

    .line 129
    new-instance v10, Lgvi;

    invoke-direct {v10}, Lgvi;-><init>()V

    .line 130
    const-string v11, "Canal:"

    invoke-virtual {v10, v11}, Lgvi;->a(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lgvj;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgvi;->b(Ljava/lang/String;)V

    .line 133
    new-instance v11, Lgvi;

    invoke-direct {v11}, Lgvi;-><init>()V

    .line 134
    const-string v12, "N\u00famero do Protocolo:"

    invoke-virtual {v11, v12}, Lgvi;->a(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lgvj;->o()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgvi;->b(Ljava/lang/String;)V

    .line 137
    new-instance v12, Lgvi;

    invoke-direct {v12}, Lgvi;-><init>()V

    .line 138
    const-string v13, "Data/Hora da Transa\u00e7\u00e3o:"

    invoke-virtual {v12, v13}, Lgvi;->a(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lgvj;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgvi;->b(Ljava/lang/String;)V

    .line 141
    new-instance v13, Lgvi;

    invoke-direct {v13}, Lgvi;-><init>()V

    .line 142
    const-string v14, "Autentica\u00e7\u00e3o Banc\u00e1ria:"

    invoke-virtual {v13, v14}, Lgvi;->a(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lgvj;->f()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgvi;->b(Ljava/lang/String;)V

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lgvj;->e:Ljava/lang/String;

    return-object v0
.end method
