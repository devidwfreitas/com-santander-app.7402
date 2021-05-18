.class public Lgfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "presentValue"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "type"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "family"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "netValue"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "quotaAmount"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "sharePrice"
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgfd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "R$ 0,00"

    iput-object v0, p0, Lgfd;->h:Ljava/lang/String;

    .line 102
    const-string v0, "R$ "

    iput-object v0, p0, Lgfd;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lgev;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfd;",
            ">;)",
            "Lgev;"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lgfd;->j:Ljava/util/List;

    .line 108
    new-instance v3, Lgev;

    invoke-direct {v3}, Lgev;-><init>()V

    .line 109
    sget-object v0, Lgfg;->FUNDOS:Lgfg;

    invoke-virtual {v3, v0}, Lgev;->a(Lgfg;)V

    .line 110
    sget-object v0, Lgfg;->FUNDOS:Lgfg;

    invoke-virtual {v0}, Lgfg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgev;->a(Ljava/lang/String;)V

    .line 111
    const-string v0, "R$ 0,00"

    invoke-virtual {v3, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 114
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 115
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 116
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfd;

    .line 118
    invoke-virtual {v0}, Lgfd;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 119
    invoke-virtual {v2, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 120
    invoke-virtual {v0}, Lgfd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    move-object v1, v0

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v2}, Lnaj;->a(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 124
    invoke-static {v1}, Lnaj;->a(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgev;->c(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lgev;->c(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_1
    return-object v3

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgfd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lgfd;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public b(Ljava/util/List;)Lger;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfd;",
            ">;)",
            "Lger;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v4, Lger;

    invoke-direct {v4}, Lger;-><init>()V

    .line 135
    const-string v0, "R$ 00000"

    invoke-virtual {v4, v0}, Lger;->a(Ljava/lang/String;)V

    .line 136
    const-string v0, "R$ 00000"

    invoke-virtual {v4, v0}, Lger;->b(Ljava/lang/String;)V

    .line 137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v0, p0, Lgfd;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lgfd;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfd;

    .line 140
    new-instance v7, Lgev;

    invoke-direct {v7}, Lgev;-><init>()V

    .line 141
    invoke-virtual {v0}, Lgfd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgev;->a(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lgfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgev;->b(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lgev;->c(Z)V

    .line 144
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgfd;

    .line 147
    invoke-virtual {v0}, Lgfd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lgfd;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    new-instance v9, Lgex;

    invoke-direct {v9}, Lgex;-><init>()V

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v10, Lgev;

    invoke-virtual {v1}, Lgfd;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v10, Lgev;

    const-string v11, "Saldo bruto"

    invoke-virtual {v1}, Lgfd;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v10, Lgev;

    const-string v11, "Saldo l\u00edquido"

    invoke-virtual {v1}, Lgfd;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v10, Lgev;

    const-string v11, "Qtdes. cotas"

    invoke-virtual {v1}, Lgfd;->f()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v10, Lgev;

    const-string v11, "Valor cota"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "R$ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lgfd;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v9, v3}, Lgex;->a(Ljava/util/List;)V

    .line 159
    const/4 v3, 0x0

    .line 161
    :try_start_0
    invoke-virtual {v1}, Lgfd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_2
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 167
    invoke-virtual {v7}, Lgev;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v2, v1

    .line 169
    goto/16 :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    const-string v10, "Error"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_2

    .line 170
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgev;->d(Ljava/lang/String;)V

    .line 172
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 175
    :cond_2
    iput-object v5, v4, Lger;->a:Ljava/util/List;

    .line 177
    return-object v4

    :cond_3
    move-object v1, v2

    goto :goto_3
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgfd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lgfd;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgfd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lgfd;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgfd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lgfd;->d:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgfd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lgfd;->e:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgfd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lgfd;->f:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lgfd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lgfd;->g:Ljava/lang/String;

    .line 97
    return-void
.end method
