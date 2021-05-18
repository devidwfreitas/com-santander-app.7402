.class public Lger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgev;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgez;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lgey;

.field private g:Lgfa;

.field private h:Lgfe;

.field private i:Lgfd;

.field private j:Lgff;

.field private k:Lgfc;

.field private l:Lgfb;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "R$ 0,00"

    iput-object v0, p0, Lger;->b:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "R$ 0,00"

    invoke-virtual {p0, v0}, Lger;->a(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lger;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lger;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lger;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgez;

    invoke-virtual {v0}, Lgez;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lger;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lgey;)Lger;
    .locals 8

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lger;->a:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lger;->f:Lgey;

    .line 63
    invoke-virtual {p1}, Lgey;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lger;->e:Ljava/util/List;

    .line 65
    invoke-virtual {p1}, Lgey;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lger;->m:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lger;->d()V

    .line 69
    new-instance v0, Lgfa;

    invoke-direct {v0}, Lgfa;-><init>()V

    iput-object v0, p0, Lger;->g:Lgfa;

    .line 70
    new-instance v0, Lgfe;

    invoke-direct {v0}, Lgfe;-><init>()V

    iput-object v0, p0, Lger;->h:Lgfe;

    .line 71
    new-instance v0, Lgfd;

    invoke-direct {v0}, Lgfd;-><init>()V

    iput-object v0, p0, Lger;->i:Lgfd;

    .line 72
    new-instance v0, Lgff;

    invoke-direct {v0}, Lgff;-><init>()V

    iput-object v0, p0, Lger;->j:Lgff;

    .line 73
    new-instance v0, Lgfc;

    invoke-direct {v0}, Lgfc;-><init>()V

    iput-object v0, p0, Lger;->k:Lgfc;

    .line 74
    new-instance v0, Lgfb;

    invoke-direct {v0}, Lgfb;-><init>()V

    iput-object v0, p0, Lger;->l:Lgfb;

    .line 76
    iget-object v0, p0, Lger;->a:Ljava/util/List;

    iget-object v1, p0, Lger;->h:Lgfe;

    invoke-virtual {p1}, Lgey;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgfe;->a(Ljava/util/List;)Lgev;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lger;->a:Ljava/util/List;

    iget-object v1, p0, Lger;->i:Lgfd;

    invoke-virtual {p1}, Lgey;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgfd;->a(Ljava/util/List;)Lgev;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lger;->a:Ljava/util/List;

    iget-object v1, p0, Lger;->j:Lgff;

    invoke-virtual {p1}, Lgey;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lgey;->l()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgff;->a(Ljava/util/List;Ljava/util/List;)Lgev;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v7, p0, Lger;->a:Ljava/util/List;

    iget-object v0, p0, Lger;->k:Lgfc;

    invoke-virtual {p1}, Lgey;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lgey;->p()Ljava/util/List;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lgey;->u()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lgey;->q()Ljava/util/List;

    move-result-object v4

    .line 81
    invoke-virtual {p1}, Lgey;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lgey;->r()Ljava/util/List;

    move-result-object v6

    .line 79
    invoke-virtual/range {v0 .. v6}, Lgfc;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lgev;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lger;->a:Ljava/util/List;

    iget-object v1, p0, Lger;->l:Lgfb;

    invoke-virtual {p1}, Lgey;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lgey;->i()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgfb;->a(Ljava/util/List;Ljava/util/List;)Lgev;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lger;->a:Ljava/util/List;

    iget-object v1, p0, Lger;->g:Lgfa;

    invoke-virtual {p1}, Lgey;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgfa;->a(Ljava/util/List;)Lgev;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object p0
.end method

.method public a(Lgfg;)Lger;
    .locals 7

    .prologue
    .line 97
    sget-object v0, Lges;->a:[I

    invoke-virtual {p1}, Lgfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lger;->i:Lgfd;

    iget-object v1, p0, Lger;->f:Lgey;

    invoke-virtual {v1}, Lgey;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgfd;->b(Ljava/util/List;)Lger;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lger;->h:Lgfe;

    iget-object v1, p0, Lger;->f:Lgey;

    invoke-virtual {v1}, Lgey;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgfe;->b(Ljava/util/List;)Lger;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lger;->j:Lgff;

    iget-object v1, p0, Lger;->f:Lgey;

    invoke-virtual {v1}, Lgey;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lger;->f:Lgey;

    .line 107
    invoke-virtual {v2}, Lgey;->m()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lger;->f:Lgey;

    invoke-virtual {v3}, Lgey;->n()Ljava/util/List;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Lgff;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lger;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lger;->l:Lgfb;

    iget-object v1, p0, Lger;->f:Lgey;

    invoke-virtual {v1}, Lgey;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgfb;->a(Ljava/util/List;)Lger;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_4
    iget-object v0, p0, Lger;->k:Lgfc;

    iget-object v1, p0, Lger;->f:Lgey;

    invoke-virtual {v1}, Lgey;->s()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lger;->f:Lgey;

    invoke-virtual {v2}, Lgey;->t()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lger;->f:Lgey;

    .line 114
    invoke-virtual {v3}, Lgey;->v()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lger;->f:Lgey;

    invoke-virtual {v4}, Lgey;->w()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lger;->f:Lgey;

    .line 115
    invoke-virtual {v5}, Lgey;->x()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lger;->f:Lgey;

    invoke-virtual {v6}, Lgey;->y()Ljava/util/List;

    move-result-object v6

    .line 113
    invoke-virtual/range {v0 .. v6}, Lgfc;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lger;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lger;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lger;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lger;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lger;->d:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lger;->m:Ljava/lang/String;

    return-object v0
.end method
