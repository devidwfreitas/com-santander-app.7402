.class public Lmvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmvf;


# static fields
.field private static final a:Ljava/lang/String; = "Campo obrigat\u00f3rio"

.field private static final b:Ljava/lang/String; = "Documento inv\u00e1lido"


# instance fields
.field private c:Lmtq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lmsc;

.field private e:Lmrp;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmro;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmtq;)V
    .locals 1
    .param p1    # Lmtq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lmvg;->c:Lmtq;

    .line 38
    invoke-static {}, Lmse;->l()Lmsc;

    move-result-object v0

    iput-object v0, p0, Lmvg;->d:Lmsc;

    .line 39
    return-void
.end method

.method private b(I)Lmro;
    .locals 2

    .prologue
    .line 124
    add-int/lit8 v0, p1, -0x1

    .line 125
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmvg;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmro;

    goto :goto_0
.end method

.method private d()I
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lmvg;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmro;

    .line 133
    iget-object v2, p0, Lmvg;->e:Lmrp;

    invoke-virtual {v2}, Lmrp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmvg;->e:Lmrp;

    .line 134
    invoke-virtual {v2}, Lmrp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v1, p0, Lmvg;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lmvg;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmro;

    .line 145
    const-string v3, "%s - %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 146
    invoke-virtual {v0}, Lmro;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 147
    invoke-virtual {v0}, Lmro;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 145
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 150
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lmvg;->c:Lmtq;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lmvg;->d:Lmsc;

    invoke-interface {v0}, Lmsc;->a()Lmrp;

    move-result-object v0

    iput-object v0, p0, Lmvg;->e:Lmrp;

    .line 46
    iget-object v0, p0, Lmvg;->d:Lmsc;

    invoke-interface {v0}, Lmsc;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmvg;->f:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lmvg;->e:Lmrp;

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lmvg;->e()[Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-direct {p0}, Lmvg;->d()I

    move-result v1

    .line 50
    iget-object v2, p0, Lmvg;->c:Lmtq;

    iget-object v3, p0, Lmvg;->e:Lmrp;

    invoke-interface {v2, v0, v3}, Lmtq;->a([Ljava/lang/String;Lmrp;)V

    .line 51
    iget-object v0, p0, Lmvg;->c:Lmtq;

    invoke-interface {v0, v1}, Lmtq;->c(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lmvg;->c:Lmtq;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lmvg;->b(I)Lmro;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lmvg;->e:Lmrp;

    invoke-virtual {v1, v0}, Lmrp;->a(Lmro;)Lmrp;

    .line 66
    iget-object v0, p0, Lmvg;->e:Lmrp;

    invoke-virtual {v0}, Lmrp;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lmvg;->c:Lmtq;

    invoke-interface {v0}, Lmtq;->h()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lmvg;->c:Lmtq;

    invoke-interface {v0}, Lmtq;->g()V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-object v0, p0, Lmvg;->c:Lmtq;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    iget-object v2, p0, Lmvg;->c:Lmtq;

    invoke-interface {v2}, Lmtq;->k()V

    .line 81
    if-nez p1, :cond_2

    .line 83
    iget-object v0, p0, Lmvg;->c:Lmtq;

    const-string v2, "Campo obrigat\u00f3rio"

    invoke-interface {v0, v2}, Lmtq;->a(Ljava/lang/String;)V

    move v0, v1

    .line 86
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v0, p0, Lmvg;->c:Lmtq;

    const-string v2, "Campo obrigat\u00f3rio"

    invoke-interface {v0, v2}, Lmtq;->b(Ljava/lang/String;)V

    move v0, v1

    .line 91
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    iget-object v0, p0, Lmvg;->c:Lmtq;

    const-string v2, "Campo obrigat\u00f3rio"

    invoke-interface {v0, v2}, Lmtq;->c(Ljava/lang/String;)V

    move v0, v1

    .line 96
    :cond_4
    iget-object v2, p0, Lmvg;->e:Lmrp;

    invoke-virtual {v2}, Lmrp;->a()Z

    move-result v2

    if-nez v2, :cond_6

    .line 97
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    iget-object v0, p0, Lmvg;->c:Lmtq;

    const-string v2, "Campo obrigat\u00f3rio"

    invoke-interface {v0, v2}, Lmtq;->d(Ljava/lang/String;)V

    move v0, v1

    .line 103
    :cond_5
    :try_start_0
    invoke-static {p5}, Lnai;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 104
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    iget-object v0, p0, Lmvg;->c:Lmtq;

    const-string v2, "Documento inv\u00e1lido"

    invoke-interface {v0, v2}, Lmtq;->e(Ljava/lang/String;)V

    move v0, v1

    .line 111
    :cond_6
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 113
    iget-object v0, p0, Lmvg;->c:Lmtq;

    const-string v2, "Campo obrigat\u00f3rio"

    invoke-interface {v0, v2}, Lmtq;->f(Ljava/lang/String;)V

    .line 116
    :goto_1
    if-nez v1, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lmvg;->b(I)Lmro;

    move-result-object v1

    .line 118
    iget-object v0, p0, Lmvg;->d:Lmsc;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lmsc;->a(Lmro;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lmvg;->c:Lmtq;

    invoke-interface {v0}, Lmtq;->f()V

    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lmvg;->c:Lmtq;

    .line 58
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmvg;->c:Lmtq;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lmvg;->e:Lmrp;

    invoke-virtual {v0}, Lmrp;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lmvg;->c:Lmtq;

    invoke-interface {v0}, Lmtq;->j()V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lmvg;->c:Lmtq;

    invoke-interface {v0}, Lmtq;->i()V

    goto :goto_0
.end method
