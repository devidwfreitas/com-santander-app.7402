.class public Lkgx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkgm;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lkgm;

.field private c:Lkgv;

.field private d:Lkgn;

.field private e:Lkgu;


# direct methods
.method public constructor <init>(Lkgv;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lkgn;

    invoke-direct {v0, p0}, Lkgn;-><init>(Lkgx;)V

    iput-object v0, p0, Lkgx;->d:Lkgn;

    .line 44
    iput-object p1, p0, Lkgx;->c:Lkgv;

    .line 45
    invoke-interface {p1}, Lkgv;->d()V

    .line 46
    iget-object v0, p0, Lkgx;->d:Lkgn;

    invoke-virtual {v0}, Lkgn;->a()V

    .line 47
    return-void
.end method

.method static synthetic a(Lkgx;)Lkgu;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkgx;->e:Lkgu;

    return-object v0
.end method

.method static synthetic b(Lkgx;)Lkgv;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkgx;->c:Lkgv;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lkgy;

    invoke-direct {v0, p0}, Lkgy;-><init>(Lkgx;)V

    return-object v0
.end method

.method public a(Landroid/widget/ListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lkgz;

    invoke-direct {v0, p0, p1}, Lkgz;-><init>(Lkgx;Landroid/widget/ListView;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lkgx;->c:Lkgv;

    invoke-interface {v0, p1}, Lkgv;->a(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lkgx;->c:Lkgv;

    invoke-interface {v0}, Lkgv;->c()V

    .line 68
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkgm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lkgx;->a:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lkgx;->c:Lkgv;

    invoke-interface {v0, p1}, Lkgv;->a(Ljava/util/List;)V

    .line 62
    iget-object v0, p0, Lkgx;->c:Lkgv;

    invoke-interface {v0}, Lkgv;->c()V

    .line 63
    return-void
.end method

.method public a(Lkgm;)V
    .locals 5

    .prologue
    .line 109
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "ddMMyy"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lkgm;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 119
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lkgm;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 122
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p1}, Lkgm;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 125
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    new-instance v3, Lkgj;

    invoke-direct {v3}, Lkgj;-><init>()V

    .line 134
    invoke-virtual {p1}, Lkgm;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkgj;->a(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lkgm;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkgj;->b(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkgj;->c(Ljava/lang/String;)V

    .line 137
    const-string v4, "false"

    invoke-virtual {v3, v4}, Lkgj;->d(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lkgm;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkgj;->e(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkgj;->g(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, v0}, Lkgj;->i(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3, v1}, Lkgj;->k(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3, v2}, Lkgj;->l(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lkgm;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkgj;->m(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lkgm;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkgj;->n(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lkgm;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkgj;->p(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lkgm;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkgj;->s(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lkgm;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkgj;->w(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lkgm;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkgj;->x(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lkgm;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkgj;->D(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lkgx;->c:Lkgv;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v3}, Lkgv;->a(ILkgj;)V

    .line 152
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v0, ""

    .line 129
    const-string v2, ""

    .line 130
    const-string v1, ""

    goto :goto_0
.end method

.method public a(Lkgu;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lkgx;->e:Lkgu;

    .line 41
    return-void
.end method

.method public b()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lkha;

    invoke-direct {v0, p0}, Lkha;-><init>(Lkgx;)V

    return-object v0
.end method

.method public b(Lkgm;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lkgx;->b:Lkgm;

    .line 156
    return-void
.end method

.method public c()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lkhb;

    invoke-direct {v0, p0}, Lkhb;-><init>(Lkgx;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lkgx;->c:Lkgv;

    invoke-interface {v0}, Lkgv;->b()V

    .line 160
    return-void
.end method
