.class public Lgvp;
.super Lgvf;
.source "SourceFile"

# interfaces
.implements Lgvv;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lfrb;


# direct methods
.method public constructor <init>(Lfrb;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lgvf;-><init>()V

    .line 22
    iput-object p1, p0, Lgvp;->b:Lfrb;

    .line 23
    invoke-direct {p0}, Lgvp;->b()V

    .line 24
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->g(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->h(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->i(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->j(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->a(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->m(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->l(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->k(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lgvp;->b:Lfrb;

    invoke-virtual {v0}, Lfrb;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvp;->f(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgvp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lgvp;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
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
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v1, Lgvi;

    invoke-direct {v1}, Lgvi;-><init>()V

    .line 69
    const-string v2, "Data Agendada:"

    invoke-virtual {v1, v2}, Lgvi;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lgvp;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvi;->b(Ljava/lang/String;)V

    .line 72
    new-instance v2, Lgvi;

    invoke-direct {v2}, Lgvi;-><init>()V

    .line 73
    const-string v3, "Descri\u00e7\u00e3o:"

    invoke-virtual {v2, v3}, Lgvi;->a(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lgvp;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvi;->b(Ljava/lang/String;)V

    .line 76
    new-instance v3, Lgvi;

    invoke-direct {v3}, Lgvi;-><init>()V

    .line 77
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lgvi;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lgvp;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgvi;->b(Ljava/lang/String;)V

    .line 80
    new-instance v4, Lgvi;

    invoke-direct {v4}, Lgvi;-><init>()V

    .line 81
    const-string v5, "Valor:"

    invoke-virtual {v4, v5}, Lgvi;->a(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lgvp;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgvi;->b(Ljava/lang/String;)V

    .line 84
    new-instance v5, Lgvi;

    invoke-direct {v5}, Lgvi;-><init>()V

    .line 85
    const-string v6, "Conta Poupan\u00e7a de D\u00e9bito:"

    invoke-virtual {v5, v6}, Lgvi;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lgvp;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgvi;->b(Ljava/lang/String;)V

    .line 88
    new-instance v6, Lgvi;

    invoke-direct {v6}, Lgvi;-><init>()V

    .line 89
    const-string v7, "Tipo:"

    invoke-virtual {v6, v7}, Lgvi;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lgvp;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgvi;->b(Ljava/lang/String;)V

    .line 92
    new-instance v7, Lgvi;

    invoke-direct {v7}, Lgvi;-><init>()V

    .line 93
    const-string v8, "Data/Hora da Solicita\u00e7\u00e3o:"

    invoke-virtual {v7, v8}, Lgvi;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lgvp;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgvi;->b(Ljava/lang/String;)V

    .line 96
    new-instance v8, Lgvi;

    invoke-direct {v8}, Lgvi;-><init>()V

    .line 97
    const-string v9, "Canal:"

    invoke-virtual {v8, v9}, Lgvi;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lgvp;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgvi;->b(Ljava/lang/String;)V

    .line 100
    new-instance v9, Lgvi;

    invoke-direct {v9}, Lgvi;-><init>()V

    .line 101
    const-string v10, "N\u00famero do Protocolo:"

    invoke-virtual {v9, v10}, Lgvi;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lgvp;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgvi;->b(Ljava/lang/String;)V

    .line 104
    new-instance v10, Lgvi;

    invoke-direct {v10}, Lgvi;-><init>()V

    .line 105
    const-string v11, "Data/Hora da Transa\u00e7\u00e3o:"

    invoke-virtual {v10, v11}, Lgvi;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lgvp;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgvi;->b(Ljava/lang/String;)V

    .line 108
    new-instance v11, Lgvi;

    invoke-direct {v11}, Lgvi;-><init>()V

    .line 109
    const-string v12, "Autentica\u00e7\u00e3o Banc\u00e1ria:"

    invoke-virtual {v11, v12}, Lgvi;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lgvp;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgvi;->b(Ljava/lang/String;)V

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-object v0
.end method
