.class public Lmhz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lkqn;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lkqj;

.field private f:Ljava/lang/String;

.field private g:Lktl;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lkrz;

.field private k:Ljava/lang/String;

.field private l:Lkql;

.field private m:Lksd;

.field private n:Ljava/lang/Integer;

.field private o:Lkrg;

.field private p:Lktj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmhz;->a:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmhz;->b:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmhz;->d:Ljava/util/Map;

    .line 34
    new-instance v0, Lkqj;

    invoke-direct {v0}, Lkqj;-><init>()V

    iput-object v0, p0, Lmhz;->e:Lkqj;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmhz;->i:Ljava/util/Map;

    .line 39
    new-instance v0, Lkrz;

    invoke-direct {v0}, Lkrz;-><init>()V

    iput-object v0, p0, Lmhz;->j:Lkrz;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmhz;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lmhz;->n:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lmhz;->f:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lmhz;->a:Ljava/util/List;

    .line 89
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lmhz;->i:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public a(Lkqj;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lmhz;->e:Lkqj;

    .line 121
    return-void
.end method

.method public a(Lkql;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lmhz;->l:Lkql;

    .line 63
    return-void
.end method

.method public a(Lkqn;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmhz;->c:Lkqn;

    .line 105
    return-void
.end method

.method public a(Lkrg;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmhz;->o:Lkrg;

    .line 81
    return-void
.end method

.method public a(Lkrz;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lmhz;->j:Lkrz;

    .line 172
    return-void
.end method

.method public a(Lksd;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lmhz;->m:Lksd;

    .line 188
    return-void
.end method

.method public a(Lktj;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lmhz;->p:Lktj;

    .line 156
    return-void
.end method

.method public a(Lktl;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lmhz;->g:Lktl;

    .line 59
    return-void
.end method

.method public b()Lktl;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmhz;->g:Lktl;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lmhz;->h:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lmhz;->b:Ljava/util/List;

    .line 97
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lmhz;->d:Ljava/util/Map;

    .line 113
    return-void
.end method

.method public b(Lktl;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lmhz;->g:Lktl;

    .line 133
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lmhz;->i:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lmhz;->k:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public c(Lktl;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lmhz;->g:Lktl;

    if-nez v0, :cond_1

    .line 137
    iput-object p1, p0, Lmhz;->g:Lktl;

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lmhz;->g:Lktl;

    invoke-virtual {v0}, Lktl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lktl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmhz;->g:Lktl;

    invoke-virtual {v0}, Lktl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lktl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :cond_2
    iput-object p1, p0, Lmhz;->g:Lktl;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lmhz;->o:Lkrg;

    goto :goto_0
.end method

.method public d()Lkrg;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmhz;->o:Lkrg;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lmhz;->a:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lmhz;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Lkqn;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmhz;->c:Lkqn;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lmhz;->d:Ljava/util/Map;

    return-object v0
.end method

.method public i()Lkqj;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmhz;->e:Lkqj;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmhz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lmhz;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lktj;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmhz;->p:Lktj;

    return-object v0
.end method

.method public m()Lktl;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lmhz;->g:Lktl;

    return-object v0
.end method

.method public n()Lkrz;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmhz;->j:Lkrz;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmhz;->k:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lkql;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmhz;->l:Lkql;

    return-object v0
.end method

.method public q()Lksd;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmhz;->m:Lksd;

    return-object v0
.end method
