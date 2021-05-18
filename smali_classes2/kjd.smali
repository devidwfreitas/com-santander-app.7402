.class public Lkjd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "RecargaConfirmacaoActivity"


# instance fields
.field private a:Lkjf;

.field private b:I

.field private c:Landroid/content/Intent;

.field private d:Lkid;

.field private e:Lkic;

.field private f:Lkgj;


# direct methods
.method public constructor <init>(Lkjf;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lkjd;->a:Lkjf;

    .line 38
    invoke-interface {p1}, Lkjf;->a()V

    .line 39
    return-void
.end method

.method static synthetic a(Lkjd;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lkjd;->b:I

    return v0
.end method

.method static synthetic b(Lkjd;)Lkic;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lkjd;->e:Lkic;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Lkjd;->c:Landroid/content/Intent;

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkic;

    iput-object v0, p0, Lkjd;->e:Lkic;

    .line 67
    iget-object v0, p0, Lkjd;->a:Lkjf;

    invoke-interface {v0}, Lkjf;->c()V

    .line 69
    iget-object v0, p0, Lkjd;->e:Lkic;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "(%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lkjd;->e:Lkic;

    .line 73
    invoke-virtual {v4}, Lkic;->j()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lkjd;->e:Lkic;

    .line 74
    invoke-virtual {v4}, Lkic;->ae()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 70
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lkjd;->a:Lkjf;

    invoke-interface {v1, v0}, Lkjf;->b(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lkjd;->a:Lkjf;

    iget-object v1, p0, Lkjd;->e:Lkic;

    invoke-virtual {v1}, Lkic;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkjf;->a(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lkjd;->a:Lkjf;

    iget-object v1, p0, Lkjd;->e:Lkic;

    invoke-virtual {v1}, Lkic;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkjf;->d(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lkjd;->a:Lkjf;

    const-string v1, "A efetiva\u00e7\u00e3o da transa\u00e7\u00e3o est\u00e1 sujeito a disponibilidade do saldo no dia"

    const v2, 0x7f0e0001

    invoke-interface {v0, v1, v2}, Lkjf;->a(Ljava/lang/String;I)V

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic c(Lkjd;)Lkjf;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lkjd;->a:Lkjf;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 86
    iget-object v0, p0, Lkjd;->c:Landroid/content/Intent;

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkic;

    iput-object v0, p0, Lkjd;->e:Lkic;

    .line 87
    iget-object v0, p0, Lkjd;->a:Lkjf;

    invoke-interface {v0}, Lkjf;->b()V

    .line 89
    iget-object v0, p0, Lkjd;->e:Lkic;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "(%s) %s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lkjd;->e:Lkic;

    .line 93
    invoke-virtual {v4}, Lkic;->j()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lkjd;->e:Lkic;

    .line 94
    invoke-virtual {v4}, Lkic;->ae()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 90
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyy"

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    :try_start_0
    iget-object v1, p0, Lkjd;->e:Lkic;

    invoke-virtual {v1}, Lkic;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 106
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lkjd;->e:Lkic;

    invoke-virtual {v0}, Lkic;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 109
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    iget-object v3, p0, Lkjd;->a:Lkjf;

    invoke-interface {v3, v2}, Lkjf;->b(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lkjd;->a:Lkjf;

    iget-object v3, p0, Lkjd;->e:Lkic;

    invoke-virtual {v3}, Lkic;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkjf;->a(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lkjd;->a:Lkjf;

    iget-object v3, p0, Lkjd;->e:Lkic;

    invoke-virtual {v3}, Lkic;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkjf;->d(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lkjd;->a:Lkjf;

    iget-object v2, p0, Lkjd;->e:Lkic;

    invoke-virtual {v2}, Lkic;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Semanal"

    :goto_1
    invoke-interface {v3, v2}, Lkjf;->e(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lkjd;->a:Lkjf;

    invoke-interface {v2, v1}, Lkjf;->f(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lkjd;->e:Lkic;

    invoke-virtual {v1}, Lkic;->Y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v0, p0, Lkjd;->a:Lkjf;

    const-string v1, "Indeterminado"

    invoke-interface {v0, v1}, Lkjf;->g(Ljava/lang/String;)V

    .line 128
    :goto_2
    iget-object v0, p0, Lkjd;->a:Lkjf;

    const-string v1, "A efetiva\u00e7\u00e3o da transa\u00e7\u00e3o est\u00e1 sujeito a disponibilidade do saldo no dia"

    const v2, 0x7f0e0001

    invoke-interface {v0, v1, v2}, Lkjf;->a(Ljava/lang/String;I)V

    .line 130
    :cond_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, ""

    .line 113
    const-string v0, ""

    goto :goto_0

    .line 119
    :cond_1
    const-string v2, "Mensal"

    goto :goto_1

    .line 125
    :cond_2
    iget-object v1, p0, Lkjd;->a:Lkjf;

    invoke-interface {v1, v0}, Lkjf;->g(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic d(Lkjd;)Lkid;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lkjd;->d:Lkid;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lkjd;->c:Landroid/content/Intent;

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkid;

    iput-object v0, p0, Lkjd;->d:Lkid;

    .line 134
    iget-object v0, p0, Lkjd;->a:Lkjf;

    invoke-interface {v0}, Lkjf;->b()V

    .line 136
    iget-object v0, p0, Lkjd;->d:Lkid;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "(%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lkjd;->d:Lkid;

    iget-object v4, v4, Lkid;->areaCelular:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lkjd;->d:Lkid;

    .line 141
    invoke-virtual {v4}, Lkid;->D()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 137
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyy"

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    :try_start_0
    iget-object v1, p0, Lkjd;->d:Lkid;

    iget-object v1, v1, Lkid;->dataInicio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 153
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lkjd;->d:Lkid;

    iget-object v0, v0, Lkid;->dataFim:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 156
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    iget-object v3, p0, Lkjd;->a:Lkjf;

    invoke-interface {v3, v2}, Lkjf;->b(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lkjd;->a:Lkjf;

    iget-object v3, p0, Lkjd;->d:Lkid;

    iget-object v3, v3, Lkid;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lkjf;->a(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lkjd;->a:Lkjf;

    iget-object v3, p0, Lkjd;->d:Lkid;

    iget-object v3, v3, Lkid;->valorRecarga:Ljava/lang/String;

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkjf;->d(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lkjd;->a:Lkjf;

    iget-object v2, p0, Lkjd;->d:Lkid;

    iget-object v2, v2, Lkid;->periodo:Ljava/lang/String;

    const-string v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Semanal"

    :goto_1
    invoke-interface {v3, v2}, Lkjf;->e(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lkjd;->a:Lkjf;

    invoke-interface {v2, v1}, Lkjf;->f(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lkjd;->d:Lkid;

    iget-object v1, v1, Lkid;->periodoIndeterminado:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v0, p0, Lkjd;->a:Lkjf;

    const-string v1, "Indeterminado"

    invoke-interface {v0, v1}, Lkjf;->g(Ljava/lang/String;)V

    .line 175
    :goto_2
    iget-object v0, p0, Lkjd;->a:Lkjf;

    const-string v1, "A efetiva\u00e7\u00e3o da transa\u00e7\u00e3o est\u00e1 sujeito a disponibilidade do saldo no dia"

    const v2, 0x7f0e0001

    invoke-interface {v0, v1, v2}, Lkjf;->a(Ljava/lang/String;I)V

    .line 177
    :cond_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, ""

    .line 160
    const-string v0, ""

    goto :goto_0

    .line 166
    :cond_1
    const-string v2, "Mensal"

    goto :goto_1

    .line 172
    :cond_2
    iget-object v1, p0, Lkjd;->a:Lkjf;

    invoke-interface {v1, v0}, Lkjf;->g(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic e(Lkjd;)Lkgj;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lkjd;->f:Lkgj;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 180
    iget-object v0, p0, Lkjd;->c:Landroid/content/Intent;

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkgj;

    iput-object v0, p0, Lkjd;->f:Lkgj;

    .line 181
    iget-object v0, p0, Lkjd;->a:Lkjf;

    invoke-interface {v0}, Lkjf;->b()V

    .line 183
    iget-object v0, p0, Lkjd;->f:Lkgj;

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "(%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lkjd;->f:Lkgj;

    iget-object v4, v4, Lkgj;->areaCelular:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lkjd;->f:Lkgj;

    .line 188
    invoke-virtual {v4}, Lkgj;->E()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 184
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 191
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyy"

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 199
    :try_start_0
    iget-object v1, p0, Lkjd;->f:Lkgj;

    iget-object v1, v1, Lkgj;->dataInicio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 200
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v0, p0, Lkjd;->f:Lkgj;

    iget-object v0, v0, Lkgj;->dataFim:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 203
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    iget-object v3, p0, Lkjd;->a:Lkjf;

    invoke-interface {v3, v2}, Lkjf;->b(Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lkjd;->a:Lkjf;

    iget-object v3, p0, Lkjd;->f:Lkgj;

    iget-object v3, v3, Lkgj;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lkjf;->a(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lkjd;->a:Lkjf;

    iget-object v3, p0, Lkjd;->f:Lkgj;

    iget-object v3, v3, Lkgj;->valorRecarga:Ljava/lang/String;

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkjf;->d(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lkjd;->a:Lkjf;

    iget-object v2, p0, Lkjd;->f:Lkgj;

    iget-object v2, v2, Lkgj;->periodo:Ljava/lang/String;

    const-string v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Semanal"

    :goto_1
    invoke-interface {v3, v2}, Lkjf;->e(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lkjd;->a:Lkjf;

    invoke-interface {v2, v1}, Lkjf;->f(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lkjd;->f:Lkgj;

    iget-object v1, v1, Lkgj;->periodoIndeterminado:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v0, p0, Lkjd;->a:Lkjf;

    const-string v1, "Indeterminado"

    invoke-interface {v0, v1}, Lkjf;->g(Ljava/lang/String;)V

    .line 222
    :goto_2
    iget-object v0, p0, Lkjd;->a:Lkjf;

    const-string v1, "Confirme os dados e clique em confirmar para cancelar o agendamento"

    const v2, 0x7f0e0019

    invoke-interface {v0, v1, v2}, Lkjf;->a(Ljava/lang/String;I)V

    .line 224
    :cond_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, ""

    .line 207
    const-string v0, ""

    goto :goto_0

    .line 213
    :cond_1
    const-string v2, "Mensal"

    goto :goto_1

    .line 219
    :cond_2
    iget-object v1, p0, Lkjd;->a:Lkjf;

    invoke-interface {v1, v0}, Lkjf;->g(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lkje;

    invoke-direct {v0, p0}, Lkje;-><init>(Lkjd;)V

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lkjd;->c:Landroid/content/Intent;

    .line 44
    const-string v0, "tipo_recarga"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkjd;->b:I

    .line 46
    iget v0, p0, Lkjd;->b:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-direct {p0}, Lkjd;->b()V

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-direct {p0}, Lkjd;->c()V

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-direct {p0}, Lkjd;->d()V

    goto :goto_0

    .line 57
    :pswitch_3
    invoke-direct {p0}, Lkjd;->e()V

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
