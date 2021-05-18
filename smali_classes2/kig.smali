.class public Lkig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkhx;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfvf;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lkiz;

.field private g:Lkip;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkip;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    iput-object v0, p0, Lkig;->b:Ljava/lang/String;

    .line 48
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->c()Lkhx;

    move-result-object v0

    iput-object v0, p0, Lkig;->a:Lkhx;

    .line 49
    new-instance v0, Lkiz;

    invoke-direct {v0}, Lkiz;-><init>()V

    iput-object v0, p0, Lkig;->f:Lkiz;

    .line 50
    iput-object p1, p0, Lkig;->g:Lkip;

    .line 51
    return-void
.end method

.method static synthetic a(Lkig;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lkig;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lkig;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lkig;->e:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic a(Lkig;Lkhx;)Lkhx;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lkig;->a:Lkhx;

    return-object p1
.end method

.method static synthetic a(Lkig;)Lkip;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lkig;->g:Lkip;

    return-object v0
.end method

.method static synthetic b(Lkig;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lkig;->e:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic c(Lkig;)Lkhx;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lkig;->a:Lkhx;

    return-object v0
.end method

.method static synthetic d(Lkig;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lkig;->f()V

    return-void
.end method

.method private e()Lgkv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkv",
            "<",
            "Lkic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lkij;

    invoke-direct {v0, p0}, Lkij;-><init>(Lkig;)V

    return-object v0
.end method

.method private f()V
    .locals 9

    .prologue
    .line 210
    iget-object v0, p0, Lkig;->a:Lkhx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkig;->a:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v0, p0, Lkig;->a:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvf;

    .line 214
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 216
    new-instance v4, Lkhs;

    invoke-direct {v4}, Lkhs;-><init>()V

    .line 218
    invoke-virtual {v0}, Lfvf;->f()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 220
    array-length v6, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    .line 223
    new-instance v8, Lfqa;

    invoke-direct {v8}, Lfqa;-><init>()V

    .line 224
    invoke-static {v7}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lfqa;->a(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v4, v3}, Lkhs;->a(Ljava/util/Vector;)V

    .line 230
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lkig;->g:Lkip;

    invoke-virtual {v0, v3}, Lkip;->a(Ljava/util/Vector;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lkig;->a:Lkhx;

    invoke-virtual {v0, v1}, Lkhx;->a(Ljava/util/List;)V

    .line 235
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    iget-object v1, p0, Lkig;->a:Lkhx;

    invoke-virtual {v0, v1}, Lmir;->a(Lkhx;)V

    .line 238
    :cond_3
    return-void
.end method

.method private g()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 243
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 247
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    .line 248
    const-string v3, "RECARREGAR HOJE"

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 249
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    .line 254
    const-string v3, "AGENDAR"

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 257
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 258
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 259
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfos;->b(Ljava/lang/String;)V

    .line 260
    sget-object v1, Lfot;->PICKER:Lfot;

    invoke-virtual {v2, v1}, Lfos;->a(Lfot;)V

    .line 262
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v1, p0, Lkig;->a:Lkhx;

    invoke-virtual {v1, v0}, Lkhx;->c(Ljava/util/Vector;)V

    .line 265
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    iget-object v2, p0, Lkig;->a:Lkhx;

    invoke-virtual {v1, v2}, Lmir;->a(Lkhx;)V

    .line 267
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lkig;->f:Lkiz;

    new-instance v1, Lkih;

    invoke-direct {v1, p0}, Lkih;-><init>(Lkig;)V

    invoke-virtual {v0, v1}, Lkiz;->a(Lgkw;)V

    .line 69
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lkig;->a:Lkhx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkig;->a:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lkig;->a:Lkhx;

    invoke-virtual {v0}, Lkhx;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhs;

    invoke-virtual {v0}, Lkhs;->a()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lkig;->c:Ljava/util/Vector;

    .line 77
    :cond_0
    iget-object v0, p0, Lkig;->c:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lkig;->g:Lkip;

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lkig;->g:Lkip;

    iget-object v1, p0, Lkig;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public a(Lkhv;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lkig;->f:Lkiz;

    invoke-virtual {v0, p1}, Lkiz;->a(Lkhv;)V

    .line 186
    return-void
.end method

.method public a(Lkid;)V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->e(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->A(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->B(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lkjc;

    invoke-direct {p0}, Lkig;->e()Lgkv;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkjc;-><init>(Lkid;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lkjc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    return-void
.end method

.method public b(I)Lfvf;
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lkig;->e:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lkig;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvf;

    .line 107
    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lkig;->a:Lkhx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkig;->a:Lkhx;

    invoke-virtual {v0}, Lkhx;->e()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lkig;->a:Lkhx;

    invoke-virtual {v0}, Lkhx;->e()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lkig;->d:Ljava/util/Vector;

    .line 92
    :goto_0
    iget-object v0, p0, Lkig;->d:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lkig;->g:Lkip;

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/lang/String;)V

    .line 97
    :goto_1
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lkig;->g()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lkig;->d:Ljava/util/Vector;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lkig;->g:Lkip;

    iget-object v1, p0, Lkig;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lkip;->b(Ljava/util/Vector;)V

    goto :goto_1
.end method

.method public c(I)Lfuu;
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lkig;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 114
    iget-object v0, p0, Lkig;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuu;

    .line 117
    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lkig;->f:Lkiz;

    new-instance v1, Lkii;

    invoke-direct {v1, p0}, Lkii;-><init>(Lkig;)V

    invoke-virtual {v0, v1}, Lkiz;->b(Lgkw;)V

    .line 172
    return-void
.end method

.method public d(I)Lfos;
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lkig;->d:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 124
    iget-object v0, p0, Lkig;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfos;

    .line 127
    :cond_0
    return-object v0
.end method

.method public d()Lkhv;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lkig;->f:Lkiz;

    invoke-virtual {v0}, Lkiz;->a()Lkhv;

    move-result-object v0

    return-object v0
.end method
