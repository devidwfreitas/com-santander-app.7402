.class public Lgve;
.super Lgvf;
.source "SourceFile"

# interfaces
.implements Lgvv;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lfrb;


# direct methods
.method public constructor <init>(Lfrb;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lgvf;-><init>()V

    .line 23
    iput-object p1, p0, Lgve;->c:Lfrb;

    .line 24
    invoke-direct {p0}, Lgve;->c()V

    .line 25
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->g(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->h(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->i(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->j(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->b(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->l(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->k(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->f(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->m(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lgve;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgve;->a(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgve;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lgve;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgve;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lgve;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 13
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
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v2, Lgvi;

    invoke-direct {v2}, Lgvi;-><init>()V

    .line 81
    const-string v0, "Data Agendada:"

    invoke-virtual {v2, v0}, Lgvi;->a(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lgve;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvi;->b(Ljava/lang/String;)V

    .line 84
    new-instance v3, Lgvi;

    invoke-direct {v3}, Lgvi;-><init>()V

    .line 85
    const-string v0, "Descri\u00e7\u00e3o:"

    invoke-virtual {v3, v0}, Lgvi;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lgve;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgvi;->b(Ljava/lang/String;)V

    .line 88
    new-instance v4, Lgvi;

    invoke-direct {v4}, Lgvi;-><init>()V

    .line 89
    const-string v0, "Status:"

    invoke-virtual {v4, v0}, Lgvi;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lgve;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgvi;->b(Ljava/lang/String;)V

    .line 92
    new-instance v5, Lgvi;

    invoke-direct {v5}, Lgvi;-><init>()V

    .line 93
    const-string v0, "Valor:"

    invoke-virtual {v5, v0}, Lgvi;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lgve;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lgvi;->b(Ljava/lang/String;)V

    .line 96
    new-instance v6, Lgvi;

    invoke-direct {v6}, Lgvi;-><init>()V

    .line 97
    const-string v0, "Conta Poupan\u00e7a de Cr\u00e9dito:"

    invoke-virtual {v6, v0}, Lgvi;->a(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0}, Lgve;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 100
    invoke-virtual {p0}, Lgve;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgve;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgvi;->b(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lgvi;

    invoke-direct {v0}, Lgvi;-><init>()V

    .line 105
    const-string v7, "Tipo:"

    invoke-virtual {v0, v7}, Lgvi;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lgve;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgvi;->b(Ljava/lang/String;)V

    .line 108
    new-instance v7, Lgvi;

    invoke-direct {v7}, Lgvi;-><init>()V

    .line 109
    const-string v8, "Data/Hora da Solicita\u00e7\u00e3o:"

    invoke-virtual {v7, v8}, Lgvi;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lgve;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgvi;->b(Ljava/lang/String;)V

    .line 112
    new-instance v8, Lgvi;

    invoke-direct {v8}, Lgvi;-><init>()V

    .line 113
    const-string v9, "Canal:"

    invoke-virtual {v8, v9}, Lgvi;->a(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lgve;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgvi;->b(Ljava/lang/String;)V

    .line 116
    new-instance v9, Lgvi;

    invoke-direct {v9}, Lgvi;-><init>()V

    .line 117
    const-string v10, "N\u00famero do Protocolo:"

    invoke-virtual {v9, v10}, Lgvi;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lgve;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgvi;->b(Ljava/lang/String;)V

    .line 120
    new-instance v10, Lgvi;

    invoke-direct {v10}, Lgvi;-><init>()V

    .line 121
    const-string v11, "Data/Hora da Transa\u00e7\u00e3o:"

    invoke-virtual {v10, v11}, Lgvi;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lgve;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgvi;->b(Ljava/lang/String;)V

    .line 124
    new-instance v11, Lgvi;

    invoke-direct {v11}, Lgvi;-><init>()V

    .line 125
    const-string v12, "Autentica\u00e7\u00e3o Banc\u00e1ria:"

    invoke-virtual {v11, v12}, Lgvi;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lgve;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgvi;->b(Ljava/lang/String;)V

    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-object v1
.end method
