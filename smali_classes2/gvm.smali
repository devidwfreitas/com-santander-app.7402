.class public Lgvm;
.super Lgvf;
.source "SourceFile"

# interfaces
.implements Lgvv;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lfrb;


# direct methods
.method public constructor <init>(Lfrb;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lgvf;-><init>()V

    .line 25
    iput-object p1, p0, Lgvm;->e:Lfrb;

    .line 26
    invoke-direct {p0}, Lgvm;->i()V

    .line 27
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->g(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->h(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->i(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->j(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->c(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->d(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->l(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->ap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->a(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->b(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->k(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lgvm;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvm;->f(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lgvm;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lgvm;->d:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lgvm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lgvm;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgvm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lgvm;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lgvm;->b:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 14
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
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v1, Lgvi;

    invoke-direct {v1}, Lgvi;-><init>()V

    .line 100
    const-string v2, "Data Agendada:"

    invoke-virtual {v1, v2}, Lgvi;->a(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lgvm;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvi;->b(Ljava/lang/String;)V

    .line 103
    new-instance v2, Lgvi;

    invoke-direct {v2}, Lgvi;-><init>()V

    .line 104
    const-string v3, "Descri\u00e7\u00e3o:"

    invoke-virtual {v2, v3}, Lgvi;->a(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lgvm;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvi;->b(Ljava/lang/String;)V

    .line 107
    new-instance v3, Lgvi;

    invoke-direct {v3}, Lgvi;-><init>()V

    .line 108
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lgvi;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lgvm;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgvi;->b(Ljava/lang/String;)V

    .line 111
    new-instance v4, Lgvi;

    invoke-direct {v4}, Lgvi;-><init>()V

    .line 112
    const-string v5, "Valor:"

    invoke-virtual {v4, v5}, Lgvi;->a(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lgvm;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgvi;->b(Ljava/lang/String;)V

    .line 115
    new-instance v5, Lgvi;

    invoke-direct {v5}, Lgvi;-><init>()V

    .line 116
    const-string v6, "Data da Recarga:"

    invoke-virtual {v5, v6}, Lgvi;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lgvm;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgvi;->b(Ljava/lang/String;)V

    .line 119
    new-instance v6, Lgvi;

    invoke-direct {v6}, Lgvi;-><init>()V

    .line 120
    const-string v7, "Operadora:"

    invoke-virtual {v6, v7}, Lgvi;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lgvm;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgvi;->b(Ljava/lang/String;)V

    .line 123
    new-instance v7, Lgvi;

    invoke-direct {v7}, Lgvi;-><init>()V

    .line 124
    const-string v8, "Telefone:"

    invoke-virtual {v7, v8}, Lgvi;->a(Ljava/lang/String;)V

    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgvm;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgvm;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgvi;->b(Ljava/lang/String;)V

    .line 127
    new-instance v8, Lgvi;

    invoke-direct {v8}, Lgvi;-><init>()V

    .line 128
    const-string v9, "Data/Hora da Solicita\u00e7\u00e3o:"

    invoke-virtual {v8, v9}, Lgvi;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lgvm;->p()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgvi;->b(Ljava/lang/String;)V

    .line 131
    new-instance v9, Lgvi;

    invoke-direct {v9}, Lgvi;-><init>()V

    .line 132
    const-string v10, "Canal:"

    invoke-virtual {v9, v10}, Lgvi;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lgvm;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgvi;->b(Ljava/lang/String;)V

    .line 135
    new-instance v10, Lgvi;

    invoke-direct {v10}, Lgvi;-><init>()V

    .line 136
    const-string v11, "N\u00famero do Protocolo:"

    invoke-virtual {v10, v11}, Lgvi;->a(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lgvm;->o()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgvi;->b(Ljava/lang/String;)V

    .line 139
    new-instance v11, Lgvi;

    invoke-direct {v11}, Lgvi;-><init>()V

    .line 140
    const-string v12, "Data/Hora da Transa\u00e7\u00e3o:"

    invoke-virtual {v11, v12}, Lgvi;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lgvm;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgvi;->b(Ljava/lang/String;)V

    .line 143
    new-instance v12, Lgvi;

    invoke-direct {v12}, Lgvi;-><init>()V

    .line 144
    const-string v13, "Autentica\u00e7\u00e3o Banc\u00e1ria:"

    invoke-virtual {v12, v13}, Lgvi;->a(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lgvm;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgvi;->b(Ljava/lang/String;)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lgvm;->b:Ljava/lang/String;

    return-object v0
.end method
