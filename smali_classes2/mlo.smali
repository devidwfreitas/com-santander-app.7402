.class public Lmlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/santander/app/contacorrente/domain/Conta;

.field private b:Lmld;

.field private c:Lmkw;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmlo;->a:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lmlo;->a:Lcom/santander/app/contacorrente/domain/Conta;

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lmlo;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lmlo;->s:Ljava/util/ArrayList;

    .line 184
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    iput-object p1, p0, Lmlo;->r:Ljava/util/HashMap;

    .line 176
    return-void
.end method

.method public a(Lmkw;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lmlo;->c:Lmkw;

    .line 63
    return-void
.end method

.method public a(Lmld;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lmlo;->b:Lmld;

    .line 55
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lmlo;->h:Z

    .line 103
    return-void
.end method

.method public b()Lmld;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmlo;->b:Lmld;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lmlo;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lmlo;->i:Z

    .line 111
    return-void
.end method

.method public c()Lmkw;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmlo;->c:Lmkw;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lmlo;->f:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmlo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lmlo;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmlo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lmlo;->j:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmlo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lmlo;->k:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmlo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lmlo;->l:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lmlo;->m:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lmlo;->h:Z

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lmlo;->n:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lmlo;->i:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmlo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lmlo;->o:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lmlo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lmlo;->p:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lmlo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lmlo;->q:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lmlo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lmlo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lmlo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lmlo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lmlo;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method public r()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lmlo;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmlo;->q:Ljava/lang/String;

    return-object v0
.end method
