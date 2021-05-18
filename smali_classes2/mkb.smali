.class public Lmkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmjj;
.implements Lmjq;
.implements Lmka;


# instance fields
.field private a:Lmjz;

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lmji;

.field private e:Lmjp;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lftq;


# direct methods
.method public constructor <init>(Lmjz;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmjz;",
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lmkb;->f:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lmkb;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmkb;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmkb;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmkb;->j:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lmkb;->a:Lmjz;

    .line 54
    iput-object p2, p0, Lmkb;->c:Ljava/util/List;

    .line 55
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lmkb;->b:Landroid/app/Activity;

    .line 56
    new-instance v0, Lmjk;

    iget-object v1, p0, Lmkb;->b:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lmjk;-><init>(Lmjj;Landroid/app/Activity;)V

    iput-object v0, p0, Lmkb;->d:Lmji;

    .line 57
    new-instance v0, Lmjr;

    invoke-direct {v0, p0}, Lmjr;-><init>(Lmjq;)V

    iput-object v0, p0, Lmkb;->e:Lmjp;

    .line 58
    return-void
.end method

.method private c(Lmiy;)Lftd;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lftd;

    invoke-direct {v0}, Lftd;-><init>()V

    .line 253
    invoke-virtual {p1}, Lmiy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->d(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lmiy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->e(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lmiy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->f(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lmiy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->a(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lmiy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->g(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lmiy;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->c(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lmiy;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->b(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lmiy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->h(Ljava/lang/String;)V

    .line 262
    return-object v0
.end method

.method private c(Lmjf;)Lftt;
    .locals 6

    .prologue
    .line 168
    new-instance v1, Lftt;

    invoke-direct {v1}, Lftt;-><init>()V

    .line 169
    invoke-virtual {p1}, Lmjf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftt;->a(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lmjf;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftt;->b(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lmjf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftt;->c(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lmjf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftt;->d(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lmjf;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftt;->e(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lmjf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftt;->f(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lmjf;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lftt;->g(Ljava/lang/String;)V

    .line 177
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 178
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lmjf;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmjd;

    .line 180
    new-instance v4, Lftu;

    invoke-direct {v4}, Lftu;-><init>()V

    .line 181
    invoke-virtual {v0}, Lmjd;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lftu;->b(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lmjd;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lftu;->c(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lmjd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lftu;->d(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lmjd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lftu;->a(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v1, v2}, Lftt;->a(Ljava/util/Vector;)V

    .line 190
    return-object v1
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iput v1, p0, Lmkb;->f:I

    .line 83
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkb;->i:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkb;->j:Ljava/lang/String;

    .line 88
    :cond_0
    return-void

    .line 80
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private e()Lmje;
    .locals 3

    .prologue
    .line 232
    new-instance v1, Lmje;

    invoke-direct {v1}, Lmje;-><init>()V

    .line 233
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    iget v2, p0, Lmkb;->f:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    invoke-virtual {v0}, Lftd;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmje;->e(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lmkb;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmje;->i(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lmkb;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmje;->k(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lmkb;->k:Ljava/lang/String;

    invoke-static {v0}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    invoke-static {v0, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmje;->p(Ljava/lang/String;)V

    .line 237
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdb10m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "0019"

    invoke-direct {p0, v0}, Lmkb;->d(Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    const-string v0, ""

    iget-object v1, p0, Lmkb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lmkb;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->h()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmkb;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    iget v1, p0, Lmkb;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    iput-object v0, p0, Lmkb;->l:Lftq;

    .line 73
    iget-object v0, p0, Lmkb;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmkb;->b(Ljava/lang/String;)V

    .line 77
    :goto_1
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdb100m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "0025"

    invoke-direct {p0, v0}, Lmkb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "0106"

    invoke-direct {p0, v0}, Lmkb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0}, Lmkb;->b()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0, p1}, Lmjz;->a(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public a(Lmiw;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lmkb;->d:Lmji;

    invoke-direct {p0}, Lmkb;->e()Lmje;

    move-result-object v1

    invoke-interface {v0, v1}, Lmji;->a(Lmje;)V

    .line 149
    return-void
.end method

.method public a(Lmiy;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 101
    invoke-virtual {p1}, Lmiy;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lftd;

    invoke-direct {v0}, Lftd;-><init>()V

    .line 104
    invoke-virtual {p1}, Lmiy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->d(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    iget v1, p0, Lmkb;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-direct {p0, p1}, Lmkb;->c(Lmiy;)Lftd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftq;->a(Lftd;)V

    .line 107
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    iget v1, p0, Lmkb;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    invoke-virtual {v0}, Lftd;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkb;->g:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lmkb;->c:Ljava/util/List;

    iget v1, p0, Lmkb;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    invoke-virtual {v0}, Lftd;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkb;->h:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->i()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmkb;->h:Ljava/lang/String;

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->j()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%s dias (Liquidez di\u00e1ria)"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lmkb;->g:Ljava/lang/String;

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 111
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdb10m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->k()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "At\u00e9 %s do CDI"

    new-array v2, v5, [Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lmiy;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 115
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdb100m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->k()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "At\u00e9 %s do CDI"

    new-array v2, v5, [Ljava/lang/Object;

    .line 119
    invoke-virtual {p1}, Lmiy;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 118
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->k()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%s do CDI"

    new-array v2, v5, [Ljava/lang/Object;

    .line 122
    invoke-virtual {p1}, Lmiy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 121
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lmjb;)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 283
    invoke-virtual {p1}, Lmjb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0, p1}, Lmjz;->a(Lmjb;)V

    .line 285
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->p()Lnfe;

    move-result-object v0

    invoke-virtual {v0}, Lnfe;->a()V

    .line 288
    :cond_0
    return-void
.end method

.method public a(Lmjf;)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 161
    new-instance v0, Lfuu;

    invoke-direct {v0}, Lfuu;-><init>()V

    .line 162
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setCuenta(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setAgencia(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lmkb;->a:Lmjz;

    invoke-direct {p0, p1}, Lmkb;->c(Lmjf;)Lftt;

    move-result-object v2

    iget-object v3, p0, Lmkb;->l:Lftq;

    invoke-interface {v1, v2, v3, v0}, Lmjz;->a(Lftt;Lftq;Lfuu;)V

    .line 165
    return-void
.end method

.method public a(Lmjh;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 202
    invoke-virtual {p1}, Lmjh;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lmkb;->d:Lmji;

    invoke-direct {p0}, Lmkb;->e()Lmje;

    move-result-object v1

    invoke-interface {v0, v1}, Lmji;->a(Lmje;)V

    .line 205
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 319
    invoke-virtual {p0}, Lmkb;->c()V

    .line 320
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->e()V

    .line 93
    new-instance v0, Lmix;

    invoke-direct {v0}, Lmix;-><init>()V

    .line 94
    invoke-virtual {v0, p1}, Lmix;->m(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lmkb;->d:Lmji;

    invoke-interface {v1, v0}, Lmji;->a(Lmix;)V

    .line 96
    return-void
.end method

.method public b(Lmiw;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 154
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-virtual {p1}, Lmiw;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmjz;->a(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public b(Lmiy;)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 130
    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p1}, Lmiy;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Lmiy;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-virtual {p1}, Lmiy;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lmjz;->a(Ljava/lang/String;Z)V

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0
.end method

.method public b(Lmjb;)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 293
    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p1}, Lmjb;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p1}, Lmjb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-virtual {p1}, Lmjb;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lmjz;->a(Ljava/lang/String;Z)V

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0
.end method

.method public b(Lmjf;)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 196
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-virtual {p1}, Lmjf;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmjz;->a(Ljava/lang/String;Z)V

    .line 197
    return-void
.end method

.method public b(Lmjh;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->f()V

    .line 210
    if-eqz p1, :cond_2

    .line 212
    invoke-virtual {p1}, Lmjh;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p1}, Lmjh;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-virtual {p1}, Lmjh;->t()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lmjz;->a(Ljava/lang/String;Z)V

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lmkb;->a:Lmjz;

    invoke-interface {v0}, Lmjz;->e()V

    .line 313
    new-instance v0, Lmja;

    invoke-direct {v0}, Lmja;-><init>()V

    .line 314
    iget-object v1, p0, Lmkb;->e:Lmjp;

    invoke-interface {v1, v0}, Lmjp;->a(Lmja;)V

    .line 315
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 267
    iput-object p1, p0, Lmkb;->k:Ljava/lang/String;

    .line 268
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lmiv;

    invoke-direct {v0}, Lmiv;-><init>()V

    .line 270
    invoke-static {p1}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiv;->d(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lmkb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiv;->b(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lmkb;->a:Lmjz;

    invoke-interface {v1}, Lmjz;->e()V

    .line 273
    iget-object v1, p0, Lmkb;->d:Lmji;

    invoke-interface {v1, v0}, Lmji;->a(Lmiv;)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lmkb;->a:Lmjz;

    iget-object v1, p0, Lmkb;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmjz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lmjg;

    invoke-direct {v0}, Lmjg;-><init>()V

    .line 243
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->setAgencia(Ljava/lang/String;)V

    .line 244
    const-string v1, "033"

    invoke-virtual {v0, v1}, Lmjg;->a(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lmkb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmjg;->b(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->c(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lmkb;->d:Lmji;

    invoke-interface {v1, v0}, Lmji;->a(Lmjg;)V

    .line 248
    return-void
.end method
