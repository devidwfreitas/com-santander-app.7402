.class public Lgvr;
.super Lgvf;
.source "SourceFile"

# interfaces
.implements Lgvv;


# static fields
.field private static final a:J = 0x2b262567e3d632e5L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lfrb;


# direct methods
.method public constructor <init>(Lfrb;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgvf;-><init>()V

    .line 31
    iput-object p1, p0, Lgvr;->f:Lfrb;

    .line 32
    invoke-direct {p0}, Lgvr;->i()V

    .line 33
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->g(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->h(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->i(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->j(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->a(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v1}, Lfrb;->ai()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    invoke-virtual {p0, v0}, Lgvr;->b(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->c(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->d(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->l(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->k(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lgvr;->f:Lfrb;

    invoke-virtual {v0}, Lfrb;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvr;->f(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lgvr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lgvr;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lgvr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lgvr;->c:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lgvr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lgvr;->d:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lgvr;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
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
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v1, Lgvi;

    invoke-direct {v1}, Lgvi;-><init>()V

    .line 102
    const-string v2, "Data Agendada:"

    invoke-virtual {v1, v2}, Lgvi;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lgvr;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvi;->b(Ljava/lang/String;)V

    .line 105
    new-instance v2, Lgvi;

    invoke-direct {v2}, Lgvi;-><init>()V

    .line 106
    const-string v3, "Descri\u00e7\u00e3o:"

    invoke-virtual {v2, v3}, Lgvi;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lgvr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvi;->b(Ljava/lang/String;)V

    .line 109
    new-instance v3, Lgvi;

    invoke-direct {v3}, Lgvi;-><init>()V

    .line 110
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lgvi;->a(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lgvr;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgvi;->b(Ljava/lang/String;)V

    .line 113
    new-instance v4, Lgvi;

    invoke-direct {v4}, Lgvi;-><init>()V

    .line 114
    const-string v5, "Valor:"

    invoke-virtual {v4, v5}, Lgvi;->a(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lgvr;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgvi;->b(Ljava/lang/String;)V

    .line 117
    new-instance v5, Lgvi;

    invoke-direct {v5}, Lgvi;-><init>()V

    .line 118
    const-string v6, "Ag\u00eancia:"

    invoke-virtual {v5, v6}, Lgvi;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lgvr;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgvi;->b(Ljava/lang/String;)V

    .line 121
    new-instance v6, Lgvi;

    invoke-direct {v6}, Lgvi;-><init>()V

    .line 122
    const-string v7, "Conta:"

    invoke-virtual {v6, v7}, Lgvi;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lgvr;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgvi;->b(Ljava/lang/String;)V

    .line 125
    new-instance v7, Lgvi;

    invoke-direct {v7}, Lgvi;-><init>()V

    .line 126
    const-string v8, "Tipo de Transfer\u00eancia:"

    invoke-virtual {v7, v8}, Lgvi;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lgvr;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgvi;->b(Ljava/lang/String;)V

    .line 129
    new-instance v8, Lgvi;

    invoke-direct {v8}, Lgvi;-><init>()V

    .line 130
    const-string v9, "Favorecido:"

    invoke-virtual {v8, v9}, Lgvi;->a(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lgvr;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgvi;->b(Ljava/lang/String;)V

    .line 133
    new-instance v9, Lgvi;

    invoke-direct {v9}, Lgvi;-><init>()V

    .line 134
    const-string v10, "Data/Hora da Solicita\u00e7\u00e3o:"

    invoke-virtual {v9, v10}, Lgvi;->a(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lgvr;->p()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgvi;->b(Ljava/lang/String;)V

    .line 137
    new-instance v10, Lgvi;

    invoke-direct {v10}, Lgvi;-><init>()V

    .line 138
    const-string v11, "Canal:"

    invoke-virtual {v10, v11}, Lgvi;->a(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lgvr;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgvi;->b(Ljava/lang/String;)V

    .line 141
    new-instance v11, Lgvi;

    invoke-direct {v11}, Lgvi;-><init>()V

    .line 142
    const-string v12, "N\u00famero do Protocolo:"

    invoke-virtual {v11, v12}, Lgvi;->a(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lgvr;->o()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgvi;->b(Ljava/lang/String;)V

    .line 145
    new-instance v12, Lgvi;

    invoke-direct {v12}, Lgvi;-><init>()V

    .line 146
    const-string v13, "Data/Hora da Transa\u00e7\u00e3o:"

    invoke-virtual {v12, v13}, Lgvi;->a(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lgvr;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgvi;->b(Ljava/lang/String;)V

    .line 149
    new-instance v13, Lgvi;

    invoke-direct {v13}, Lgvi;-><init>()V

    .line 150
    const-string v14, "Autentica\u00e7\u00e3o Banc\u00e1ria:"

    invoke-virtual {v13, v14}, Lgvi;->a(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lgvr;->f()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgvi;->b(Ljava/lang/String;)V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lgvr;->e:Ljava/lang/String;

    return-object v0
.end method
