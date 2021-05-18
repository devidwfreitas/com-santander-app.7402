.class public Lgfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "grossValue"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "type"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investment"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "investmentValue"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "netValue"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maturityDate"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "yearPercentFee"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "indexCode"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "issueDate"
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgfe;",
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

    .line 122
    const-string v0, "TOTAL"

    iput-object v0, p0, Lgfe;->j:Ljava/lang/String;

    .line 124
    const-string v0, "R$ 0,00"

    iput-object v0, p0, Lgfe;->k:Ljava/lang/String;

    return-void
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;)Lgev;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfe;",
            ">;)",
            "Lgev;"
        }
    .end annotation

    .prologue
    .line 129
    iput-object p1, p0, Lgfe;->l:Ljava/util/List;

    .line 130
    const-string v2, ""

    .line 131
    const-string v1, ""

    .line 132
    new-instance v3, Lgev;

    invoke-direct {v3}, Lgev;-><init>()V

    .line 133
    sget-object v0, Lgfg;->RENDA_FIXA:Lgfg;

    invoke-virtual {v3, v0}, Lgev;->a(Lgfg;)V

    .line 134
    sget-object v0, Lgfg;->RENDA_FIXA:Lgfg;

    invoke-virtual {v0}, Lgfg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgev;->a(Ljava/lang/String;)V

    .line 135
    const-string v0, "R$ 0,00"

    invoke-virtual {v3, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 136
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfe;

    .line 138
    const-string v5, "TOTAL"

    invoke-virtual {v0}, Lgfe;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {v0}, Lgfe;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lgfe;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lgev;->c(Z)V

    .line 145
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string v0, "R$ 0,00"

    .line 147
    const-string v1, "R$ 0,00"

    .line 149
    :cond_1
    invoke-virtual {v3, v0}, Lgev;->c(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3, v1}, Lgev;->b(Ljava/lang/String;)V

    .line 152
    :cond_2
    return-object v3

    :cond_3
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lgfe;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lgfe;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public b(Ljava/util/List;)Lger;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfe;",
            ">;)",
            "Lger;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v4, Lger;

    invoke-direct {v4}, Lger;-><init>()V

    .line 157
    const-string v0, "R$ 00000"

    invoke-virtual {v4, v0}, Lger;->a(Ljava/lang/String;)V

    .line 158
    const-string v0, "R$ 00000"

    invoke-virtual {v4, v0}, Lger;->b(Ljava/lang/String;)V

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v0, p0, Lgfe;->l:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lgfe;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfe;

    .line 163
    invoke-virtual {v0}, Lgfe;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOTAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    new-instance v7, Lgev;

    invoke-direct {v7}, Lgev;-><init>()V

    .line 165
    invoke-virtual {v0}, Lgfe;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgev;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lgfe;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgev;->b(Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lgev;->c(Z)V

    .line 168
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgfe;

    .line 171
    invoke-virtual {v0}, Lgfe;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lgfe;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    new-instance v9, Lgex;

    invoke-direct {v9}, Lgex;-><init>()V

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v10, Lgev;

    const-string v11, "EXTRATO"

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v10, v11, v12, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v10, Lgev;

    invoke-virtual {v1}, Lgfe;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lgfe;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v10, Lgev;

    const-string v11, "Saldo aplicado"

    invoke-virtual {v1}, Lgfe;->d()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v10, Lgev;

    const-string v11, "Saldo l\u00edquido"

    invoke-virtual {v1}, Lgfe;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v10, Lgev;

    const-string v11, "Emiss\u00e3o"

    invoke-virtual {v1}, Lgfe;->h()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v10, Lgev;

    const-string v11, "Vencimento"

    invoke-virtual {v1}, Lgfe;->f()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v10, Lgev;

    const-string v11, "\u00cdndice"

    invoke-virtual {v1}, Lgfe;->g()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v10, Lgev;

    const-string v11, "Taxa %A.A."

    invoke-virtual {v1}, Lgfe;->i()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lgfe;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgex;->a(Z)V

    .line 185
    invoke-virtual {v9, v3}, Lgex;->a(Ljava/util/List;)V

    .line 187
    const/4 v3, 0x0

    .line 189
    :try_start_0
    invoke-virtual {v1}, Lgfe;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    :goto_2
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 195
    invoke-virtual {v7}, Lgev;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v2, v1

    .line 197
    goto/16 :goto_1

    .line 190
    :catch_0
    move-exception v1

    .line 191
    const-string v10, "Error"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_2

    .line 198
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgev;->d(Ljava/lang/String;)V

    .line 199
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 204
    :cond_2
    iput-object v5, v4, Lger;->a:Ljava/util/List;

    .line 206
    return-object v4

    :cond_3
    move-object v1, v2

    goto :goto_3
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgfe;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgfe;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lgfe;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lgfe;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lgfe;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lgfe;->d:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lgfe;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lgfe;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lgfe;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lgfe;->f:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lgfe;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lgfe;->h:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lgfe;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lgfe;->i:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lgfe;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lgfe;->g:Ljava/lang/String;

    .line 119
    return-void
.end method
