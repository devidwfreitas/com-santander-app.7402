.class Lkft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkdr;


# instance fields
.field final synthetic a:Lkfs;


# direct methods
.method constructor <init>(Lkfs;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lkft;->a:Lkfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkdd;)V
    .locals 12

    .prologue
    const v11, 0x7f0a00e1

    const v10, 0x7f0e0001

    const/4 v9, 0x0

    const v8, 0x7f0e0103

    const v7, 0x7f0a00e0

    .line 44
    invoke-virtual {p1}, Lkdd;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lkft;->a:Lkfs;

    invoke-static {v0}, Lkfs;->a(Lkfs;)Lkeo;

    move-result-object v0

    invoke-virtual {p1}, Lkdd;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkeo;->a(Ljava/lang/String;)V

    .line 221
    :goto_0
    iget-object v0, p0, Lkft;->a:Lkfs;

    invoke-static {v0}, Lkfs;->a(Lkfs;)Lkeo;

    move-result-object v0

    invoke-interface {v0}, Lkeo;->d()V

    .line 222
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1}, Lkdd;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lkdd;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 49
    invoke-virtual {p1}, Lkdd;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdj;

    move-object v1, v0

    .line 52
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 56
    invoke-virtual {v1}, Lkdj;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lkdj;->j()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Lkdi;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3, v11}, Lkdi;->b(I)V

    .line 58
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 61
    const-string v0, "Data de contrata\u00e7\u00e3o:"

    invoke-virtual {v3, v0}, Lkdi;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lkdj;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lkdj;->d()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Lkdi;->b(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 64
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 75
    const-string v0, "Dia do pagamento:"

    invoke-virtual {v3, v0}, Lkdi;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lkdj;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lkdj;->h()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Lkdi;->b(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 78
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 79
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 82
    const-string v0, "Contribui\u00e7\u00e3o mensal:"

    invoke-virtual {v3, v0}, Lkdi;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Lkdj;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lkdj;->r()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Lkdi;->b(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 85
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 86
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v1}, Lkdj;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lkdj;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    :cond_1
    new-instance v0, Lkdi;

    invoke-direct {v0}, Lkdi;-><init>()V

    .line 90
    const-string v3, "Ag\u00eancia/Conta:"

    invoke-virtual {v0, v3}, Lkdi;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Lkdj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lkdj;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkdi;->b(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v7}, Lkdi;->b(I)V

    .line 93
    invoke-virtual {v0, v8}, Lkdi;->a(I)V

    .line 94
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 98
    const-string v0, "Tipo de renda:"

    invoke-virtual {v3, v0}, Lkdi;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Lkdj;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lkdj;->p()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v3, v0}, Lkdi;->b(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 101
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 105
    const-string v0, "In\u00edcio da renda:"

    invoke-virtual {v3, v0}, Lkdi;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Lkdj;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lkdj;->e()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v3, v0}, Lkdi;->b(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 108
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 109
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v1}, Lkdj;->t()Ljava/util/List;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 115
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 116
    const-string v4, "Benefici\u00e1rios"

    invoke-virtual {v3, v4}, Lkdi;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 118
    invoke-virtual {v3, v10}, Lkdi;->a(I)V

    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdb;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkdb;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    new-instance v5, Lkdi;

    invoke-direct {v5}, Lkdi;-><init>()V

    .line 127
    invoke-virtual {v0}, Lkdb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkdi;->a(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v5, v4}, Lkdi;->b(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5, v7}, Lkdi;->b(I)V

    .line 130
    invoke-virtual {v5, v8}, Lkdi;->a(I)V

    .line 131
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 56
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 62
    :cond_4
    const-string v0, ""

    goto/16 :goto_3

    .line 76
    :cond_5
    const-string v0, ""

    goto/16 :goto_4

    .line 83
    :cond_6
    const-string v0, ""

    goto/16 :goto_5

    .line 99
    :cond_7
    const-string v0, ""

    goto/16 :goto_6

    .line 106
    :cond_8
    const-string v0, ""

    goto/16 :goto_7

    .line 136
    :cond_9
    invoke-virtual {v1}, Lkdj;->u()Ljava/util/List;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 139
    new-instance v1, Lkdi;

    invoke-direct {v1}, Lkdi;-><init>()V

    .line 140
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lkdi;

    invoke-direct {v1}, Lkdi;-><init>()V

    .line 143
    const-string v3, "COBERTURA DE RISCO"

    invoke-virtual {v1, v3}, Lkdi;->a(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v11}, Lkdi;->b(I)V

    .line 145
    const v3, 0x7f0e0019

    invoke-virtual {v1, v3}, Lkdi;->a(I)V

    .line 146
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkcv;

    .line 150
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 151
    const-string v4, "In\u00edcio da vig\u00eancia:"

    invoke-virtual {v3, v4}, Lkdi;->a(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lkcv;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkdi;->b(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 154
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 155
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 158
    const-string v4, "Situa\u00e7\u00e3o do plano:"

    invoke-virtual {v3, v4}, Lkdi;->a(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lkcv;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkdi;->b(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 161
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 162
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 165
    const-string v4, "Benef\u00edcio:"

    invoke-virtual {v3, v4}, Lkdi;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lkcv;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkdi;->b(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 168
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 169
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 172
    const-string v4, "Pr\u00eamio mensal:"

    invoke-virtual {v3, v4}, Lkdi;->a(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lkcv;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkdi;->b(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 175
    invoke-virtual {v3, v8}, Lkdi;->a(I)V

    .line 176
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v0}, Lkcv;->t()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lkcv;->t()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 180
    new-instance v3, Lkdi;

    invoke-direct {v3}, Lkdi;-><init>()V

    .line 181
    const-string v4, "Benefici\u00e1rios"

    invoke-virtual {v3, v4}, Lkdi;->a(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v3, v7}, Lkdi;->b(I)V

    .line 183
    invoke-virtual {v3, v10}, Lkdi;->a(I)V

    .line 184
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v0}, Lkcv;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdb;

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkdb;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    new-instance v5, Lkdi;

    invoke-direct {v5}, Lkdi;-><init>()V

    .line 191
    invoke-virtual {v0}, Lkdb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkdi;->a(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v5, v4}, Lkdi;->b(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5, v7}, Lkdi;->b(I)V

    .line 194
    invoke-virtual {v5, v8}, Lkdi;->a(I)V

    .line 195
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 199
    :cond_a
    new-instance v0, Lkdi;

    invoke-direct {v0}, Lkdi;-><init>()V

    .line 200
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 212
    :cond_b
    new-instance v0, Lkdi;

    invoke-direct {v0}, Lkdi;-><init>()V

    .line 213
    const-string v1, "Planos administrados pela Zurich Santander Brasil Seguros e Previd\u00eancia S.A., CNPJ: 87.376.109/0001-06."

    invoke-virtual {v0, v1}, Lkdi;->a(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, v7}, Lkdi;->b(I)V

    .line 215
    invoke-virtual {v0, v10}, Lkdi;->a(I)V

    .line 216
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lkft;->a:Lkfs;

    invoke-static {v0}, Lkfs;->a(Lkfs;)Lkeo;

    move-result-object v0

    invoke-interface {v0, v2}, Lkeo;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public b(Lkdd;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lkft;->a:Lkfs;

    invoke-static {v0}, Lkfs;->a(Lkfs;)Lkeo;

    move-result-object v0

    invoke-interface {v0}, Lkeo;->d()V

    .line 227
    iget-object v0, p0, Lkft;->a:Lkfs;

    invoke-static {v0}, Lkfs;->a(Lkfs;)Lkeo;

    move-result-object v0

    invoke-virtual {p1}, Lkdd;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkeo;->a(Ljava/lang/String;)V

    .line 228
    return-void
.end method
