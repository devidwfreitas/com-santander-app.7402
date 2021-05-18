.class public Lkki;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkkh;

.field private b:Lkkf;

.field private c:I

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lkkh;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lkki;->a:Lkkh;

    .line 38
    new-instance v0, Lkkf;

    invoke-direct {v0, p0}, Lkkf;-><init>(Lkki;)V

    iput-object v0, p0, Lkki;->b:Lkkf;

    .line 39
    iput-object p2, p0, Lkki;->d:Landroid/content/Intent;

    .line 40
    const-string v0, "tipo_recarga"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkki;->c:I

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 214
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lkgj;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkgj;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v0, Lgky;

    const-string v2, "Operadora:"

    invoke-virtual {p1}, Lkgj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lgky;

    const-string v2, "N\u00ba do celular:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lkgj;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lkgj;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lgky;

    const-string v2, "Valor da recarga:"

    invoke-virtual {p1}, Lkgj;->t()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lgky;

    const-string v3, "Programa\u00e7\u00e3o:"

    invoke-virtual {p1}, Lkgj;->A()Ljava/lang/String;

    move-result-object v0

    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Semanal"

    :goto_0
    invoke-direct {v2, v3, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lgky;

    const-string v2, "Data \u00ednicio:"

    invoke-virtual {p1}, Lkgj;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p1}, Lkgj;->z()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 204
    new-instance v2, Lgky;

    const-string v3, "Data Final:"

    if-eqz v0, :cond_1

    const-string v0, "Indeterminado"

    :goto_1
    invoke-direct {v2, v3, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-object v1

    .line 196
    :cond_0
    const-string v0, "Mensal"

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p1}, Lkgj;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lkic;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkic;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lkic;->f()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    new-instance v1, Lgky;

    const-string v2, "Operadora:"

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lgky;

    const-string v1, "N\u00ba do celular:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lkic;->j()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lkic;->ae()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lgky;

    const-string v0, "Valor da recarga:"

    invoke-virtual {p1}, Lkic;->ac()Ljava/lang/String;

    move-result-object v2

    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    new-instance v0, Lgky;

    const-string v2, "Data agendamento:"

    invoke-virtual {p1}, Lkic;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lkki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    const-string v2, ""

    const-string v0, ""

    .line 116
    if-eqz p2, :cond_1

    .line 119
    :try_start_1
    invoke-virtual {p1}, Lkic;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkki;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 120
    :try_start_2
    invoke-virtual {p1}, Lkic;->Y()Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    const-string v0, "Indeterminado"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    :goto_2
    new-instance v4, Lgky;

    const-string v5, "Programa\u00e7\u00e3o:"

    invoke-virtual {p1}, Lkic;->e()Ljava/lang/String;

    move-result-object v2

    const-string v6, "S"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Semanal"

    :goto_3
    invoke-direct {v4, v5, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Lgky;

    const-string v4, "Data \u00ednicio:"

    invoke-direct {v2, v4, v1}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lgky;

    const-string v2, "Data Final:"

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    return-object v3

    .line 94
    :cond_2
    invoke-virtual {p1}, Lkic;->o()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    .line 123
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lkic;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkki;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_2

    .line 125
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    .line 126
    :goto_4
    const-string v4, "Error"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 129
    :cond_4
    const-string v2, "Mensal"

    goto :goto_3

    .line 125
    :catch_2
    move-exception v2

    goto :goto_4
.end method

.method public a(Lkid;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkid;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v0, Lgky;

    const-string v1, "Operadora:"

    invoke-virtual {p1}, Lkid;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Lgky;

    const-string v1, "N\u00ba do celular:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lkid;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lkid;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lgky;

    const-string v1, "Valor da recarga:"

    invoke-virtual {p1}, Lkid;->u()Ljava/lang/String;

    move-result-object v2

    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lgky;

    const-string v2, "Periodicidade:"

    invoke-virtual {p1}, Lkid;->B()Ljava/lang/String;

    move-result-object v0

    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Semanal"

    :goto_0
    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v2, ""

    const-string v0, ""

    .line 165
    :try_start_0
    invoke-virtual {p1}, Lkid;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkki;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    :try_start_1
    invoke-virtual {p1}, Lkid;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkki;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 171
    :goto_1
    new-instance v2, Lgky;

    const-string v4, "Data \u00ednicio:"

    invoke-direct {v2, v4, v1}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p1}, Lkid;->A()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 176
    new-instance v2, Lgky;

    const-string v4, "Data Final:"

    if-eqz v1, :cond_0

    const-string v0, "Indeterminado"

    :cond_0
    invoke-direct {v2, v4, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-object v3

    .line 158
    :cond_1
    const-string v0, "Mensal"

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    .line 168
    :goto_2
    const-string v4, "Error"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0}, Lkkh;->a()V

    .line 46
    iget v0, p0, Lkki;->c:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lkki;->d:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkic;

    .line 49
    iget-object v1, p0, Lkki;->b:Lkkf;

    invoke-virtual {v1, v0}, Lkkf;->b(Lkic;)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lkki;->d:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkic;

    .line 54
    iget-object v1, p0, Lkki;->b:Lkkf;

    invoke-virtual {v1, v0}, Lkkf;->c(Lkic;)V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v0, p0, Lkki;->d:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkid;

    .line 58
    iget-object v1, p0, Lkki;->b:Lkkf;

    invoke-virtual {v1, v0}, Lkkf;->a(Lkid;)V

    goto :goto_0

    .line 61
    :pswitch_3
    iget-object v0, p0, Lkki;->d:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkgj;

    .line 62
    iget-object v1, p0, Lkki;->b:Lkkf;

    invoke-virtual {v1, v0}, Lkkf;->a(Lkgj;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lkgj;Lkia;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0}, Lkkh;->b()V

    .line 86
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0, p1, p2}, Lkkh;->a(Lkgj;Lkia;)V

    .line 87
    return-void
.end method

.method public a(Lkic;Lkia;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0}, Lkkh;->b()V

    .line 71
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0, p1, p2}, Lkkh;->a(Lkic;Lkia;)V

    .line 72
    return-void
.end method

.method public a(Lkic;Lkic;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0}, Lkkh;->b()V

    .line 76
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0, p1, p2}, Lkkh;->a(Lkic;Lkic;)V

    .line 77
    return-void
.end method

.method public a(Lkid;Lkjg;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0}, Lkkh;->b()V

    .line 81
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-interface {v0, p1, p2}, Lkkh;->a(Lkid;Lkjg;)V

    .line 82
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 221
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
