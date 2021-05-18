.class public Ljix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljfi;
.implements Ljiw;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljhk;

.field private c:Ljdf;

.field private d:Ljfh;

.field private e:Ljdm;

.field private f:Ljdm;

.field private g:Ljava/lang/String;

.field private h:Ljdq;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljhk;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljix;->b:Ljhk;

    .line 47
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Ljix;->a:Landroid/app/Activity;

    .line 48
    new-instance v0, Ljfj;

    iget-object v1, p0, Ljix;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Ljfj;-><init>(Landroid/app/Activity;Ljfi;)V

    iput-object v0, p0, Ljix;->d:Ljfh;

    .line 49
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdl;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljdl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdl;

    .line 99
    invoke-virtual {v0}, Ljdl;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Ljix;->e:Ljdm;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Ljix;->d:Ljfh;

    invoke-interface {v0}, Ljfh;->a()V

    .line 74
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Ljix;->e:Ljdm;

    invoke-virtual {v0}, Ljdm;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljix;->e:Ljdm;

    invoke-virtual {v0}, Ljdm;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->e:Ljdm;

    sget-object v2, Ljem;->MEUS_FUNDOS:Ljem;

    invoke-interface {v0, v1, v2}, Ljhk;->a(Ljdm;Ljem;)V

    .line 66
    iget-object v0, p0, Ljix;->g:Ljava/lang/String;

    const-string v1, "R$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->g:Ljava/lang/String;

    iget-object v2, p0, Ljix;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljhk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->g:Ljava/lang/String;

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljix;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljhk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Ljix;->b:Ljhk;

    invoke-interface {v0, v1, v1}, Ljhk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Ljix;->g:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public a(Ljdm;)V
    .locals 3

    .prologue
    .line 91
    iput-object p1, p0, Ljix;->f:Ljdm;

    .line 92
    invoke-virtual {p1}, Ljdm;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljix;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljdm;->a(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->f:Ljdm;

    sget-object v2, Ljem;->TODOS_FUNDOS:Ljem;

    invoke-interface {v0, v1, v2}, Ljhk;->a(Ljdm;Ljem;)V

    .line 94
    return-void
.end method

.method public a(Ljdo;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public a(Ljdq;)V
    .locals 3

    .prologue
    .line 140
    iput-object p1, p0, Ljix;->h:Ljdq;

    .line 141
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->h:Ljdq;

    invoke-interface {v0, v1}, Ljhk;->a(Ljdq;)V

    .line 142
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->g:Ljava/lang/String;

    iget-object v2, p0, Ljix;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljhk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public a(Ljdv;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Ljix;->f:Ljdm;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Ljix;->d:Ljfh;

    invoke-interface {v0, p1}, Ljfh;->a(Ljdv;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->f:Ljdm;

    sget-object v2, Ljem;->TODOS_FUNDOS:Ljem;

    invoke-interface {v0, v1, v2}, Ljhk;->a(Ljdm;Ljem;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljix;->d:Ljfh;

    invoke-interface {v0}, Ljfh;->b()V

    .line 79
    return-void
.end method

.method public b(Ljdm;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public b(Ljdo;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public b(Ljdq;)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Ljix;->h:Ljdq;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Ljix;->d:Ljfh;

    invoke-interface {v0}, Ljfh;->c()V

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->h:Ljdq;

    invoke-interface {v0, v1}, Ljhk;->a(Ljdq;)V

    goto :goto_0
.end method

.method public c(Ljdm;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    iput-object p1, p0, Ljix;->e:Ljdm;

    .line 113
    iget-object v0, p0, Ljix;->e:Ljdm;

    invoke-virtual {v0}, Ljdm;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljix;->e:Ljdm;

    invoke-virtual {v0}, Ljdm;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 114
    invoke-virtual {p1}, Ljdm;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljdm;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljix;->i:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Ljdm;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljdm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Ljix;->g:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->e:Ljdm;

    sget-object v2, Ljem;->MEUS_FUNDOS:Ljem;

    invoke-interface {v0, v1, v2}, Ljhk;->a(Ljdm;Ljem;)V

    .line 117
    iget-object v0, p0, Ljix;->b:Ljhk;

    iget-object v1, p0, Ljix;->g:Ljava/lang/String;

    iget-object v2, p0, Ljix;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljhk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 114
    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Ljix;->b:Ljhk;

    invoke-interface {v0, v1, v1}, Ljhk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d(Ljdm;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
