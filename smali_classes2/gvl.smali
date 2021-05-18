.class public Lgvl;
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
    .line 27
    invoke-direct {p0}, Lgvf;-><init>()V

    .line 28
    iput-object p1, p0, Lgvl;->c:Lfrb;

    .line 29
    invoke-direct {p0}, Lgvl;->c()V

    .line 30
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvl;->g(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvl;->h(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvl;->i(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvl;->j(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvl;->a(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    :try_start_0
    iget-object v1, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v1}, Lfrb;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lgvl;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    iget-object v0, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvl;->l(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvl;->k(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lgvl;->c:Lfrb;

    invoke-virtual {v0}, Lfrb;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgvl;->f(Ljava/lang/String;)V

    .line 56
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgvl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lgvl;->a:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lgvl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lgvl;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
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
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lgvi;

    invoke-direct {v1}, Lgvi;-><init>()V

    .line 97
    const-string v2, "Data Agendada:"

    invoke-virtual {v1, v2}, Lgvi;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lgvl;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgvi;->b(Ljava/lang/String;)V

    .line 100
    new-instance v2, Lgvi;

    invoke-direct {v2}, Lgvi;-><init>()V

    .line 101
    const-string v3, "Descri\u00e7\u00e3o:"

    invoke-virtual {v2, v3}, Lgvi;->a(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lgvl;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvi;->b(Ljava/lang/String;)V

    .line 104
    new-instance v3, Lgvi;

    invoke-direct {v3}, Lgvi;-><init>()V

    .line 105
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lgvi;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lgvl;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgvi;->b(Ljava/lang/String;)V

    .line 108
    new-instance v4, Lgvi;

    invoke-direct {v4}, Lgvi;-><init>()V

    .line 109
    const-string v5, "Valor:"

    invoke-virtual {v4, v5}, Lgvi;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lgvl;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgvi;->b(Ljava/lang/String;)V

    .line 112
    new-instance v5, Lgvi;

    invoke-direct {v5}, Lgvi;-><init>()V

    .line 113
    const-string v6, "N\u00famero do Cart\u00e3o:"

    invoke-virtual {v5, v6}, Lgvi;->a(Ljava/lang/String;)V

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Final "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lgvl;->a()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgvi;->b(Ljava/lang/String;)V

    .line 116
    new-instance v6, Lgvi;

    invoke-direct {v6}, Lgvi;-><init>()V

    .line 117
    const-string v7, "Vencimento:"

    invoke-virtual {v6, v7}, Lgvi;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lgvl;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgvi;->b(Ljava/lang/String;)V

    .line 120
    new-instance v7, Lgvi;

    invoke-direct {v7}, Lgvi;-><init>()V

    .line 121
    const-string v8, "Data/Hora da Solicita\u00e7\u00e3o:"

    invoke-virtual {v7, v8}, Lgvi;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lgvl;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgvi;->b(Ljava/lang/String;)V

    .line 124
    new-instance v8, Lgvi;

    invoke-direct {v8}, Lgvi;-><init>()V

    .line 125
    const-string v9, "Canal:"

    invoke-virtual {v8, v9}, Lgvi;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lgvl;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgvi;->b(Ljava/lang/String;)V

    .line 128
    new-instance v9, Lgvi;

    invoke-direct {v9}, Lgvi;-><init>()V

    .line 129
    const-string v10, "N\u00famero do Protocolo:"

    invoke-virtual {v9, v10}, Lgvi;->a(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lgvl;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgvi;->b(Ljava/lang/String;)V

    .line 132
    new-instance v10, Lgvi;

    invoke-direct {v10}, Lgvi;-><init>()V

    .line 133
    const-string v11, "Data/Hora da Transa\u00e7\u00e3o:"

    invoke-virtual {v10, v11}, Lgvi;->a(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lgvl;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgvi;->b(Ljava/lang/String;)V

    .line 136
    new-instance v11, Lgvi;

    invoke-direct {v11}, Lgvi;-><init>()V

    .line 137
    const-string v12, "Autentica\u00e7\u00e3o Banc\u00e1ria:"

    invoke-virtual {v11, v12}, Lgvi;->a(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lgvl;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgvi;->b(Ljava/lang/String;)V

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object v0
.end method
