.class public Lgvk;
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
    iput-object p1, p0, Lgvk;->c:Lfrb;

    .line 24
    invoke-direct {p0}, Lgvk;->c()V

    .line 25
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->g(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->h(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->i(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->j(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->a(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->b(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->l(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->k(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lgvk;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvk;->f(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgvk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lgvk;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lgvk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lgvk;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
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
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v1, Lgvi;

    invoke-direct {v1}, Lgvi;-><init>()V

    .line 71
    const-string v2, "Data Agendada:"

    invoke-virtual {v1, v2}, Lgvi;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lgvk;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvi;->b(Ljava/lang/String;)V

    .line 74
    new-instance v2, Lgvi;

    invoke-direct {v2}, Lgvi;-><init>()V

    .line 75
    const-string v3, "Descri\u00e7\u00e3o:"

    invoke-virtual {v2, v3}, Lgvi;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lgvk;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvi;->b(Ljava/lang/String;)V

    .line 78
    new-instance v3, Lgvi;

    invoke-direct {v3}, Lgvi;-><init>()V

    .line 79
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lgvi;->a(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lgvk;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgvi;->b(Ljava/lang/String;)V

    .line 82
    new-instance v4, Lgvi;

    invoke-direct {v4}, Lgvi;-><init>()V

    .line 83
    const-string v5, "Valor:"

    invoke-virtual {v4, v5}, Lgvi;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lgvk;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgvi;->b(Ljava/lang/String;)V

    .line 86
    new-instance v5, Lgvi;

    invoke-direct {v5}, Lgvi;-><init>()V

    .line 87
    const-string v6, "C\u00f3digo de Barras:"

    invoke-virtual {v5, v6}, Lgvi;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lgvk;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgvi;->b(Ljava/lang/String;)V

    .line 90
    new-instance v6, Lgvi;

    invoke-direct {v6}, Lgvi;-><init>()V

    .line 91
    const-string v7, "Concession\u00e1ria:"

    invoke-virtual {v6, v7}, Lgvi;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lgvk;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 93
    invoke-virtual {p0}, Lgvk;->b()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x28

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v6, v7}, Lgvi;->b(Ljava/lang/String;)V

    .line 97
    :cond_0
    new-instance v7, Lgvi;

    invoke-direct {v7}, Lgvi;-><init>()V

    .line 98
    const-string v8, "Data/Hora da Solicita\u00e7\u00e3o:"

    invoke-virtual {v7, v8}, Lgvi;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lgvk;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgvi;->b(Ljava/lang/String;)V

    .line 101
    new-instance v8, Lgvi;

    invoke-direct {v8}, Lgvi;-><init>()V

    .line 102
    const-string v9, "Canal:"

    invoke-virtual {v8, v9}, Lgvi;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lgvk;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgvi;->b(Ljava/lang/String;)V

    .line 105
    new-instance v9, Lgvi;

    invoke-direct {v9}, Lgvi;-><init>()V

    .line 106
    const-string v10, "N\u00famero do Protocolo:"

    invoke-virtual {v9, v10}, Lgvi;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lgvk;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgvi;->b(Ljava/lang/String;)V

    .line 109
    new-instance v10, Lgvi;

    invoke-direct {v10}, Lgvi;-><init>()V

    .line 110
    const-string v11, "Data/Hora da Transa\u00e7\u00e3o:"

    invoke-virtual {v10, v11}, Lgvi;->a(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lgvk;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgvi;->b(Ljava/lang/String;)V

    .line 113
    new-instance v11, Lgvi;

    invoke-direct {v11}, Lgvi;-><init>()V

    .line 114
    const-string v12, "Autentica\u00e7\u00e3o Banc\u00e1ria:"

    invoke-virtual {v11, v12}, Lgvi;->a(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lgvk;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgvi;->b(Ljava/lang/String;)V

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-object v0
.end method
