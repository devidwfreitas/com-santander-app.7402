.class public Lknh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkme;
.implements Lkmm;
.implements Lkng;


# instance fields
.field private a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

.field private b:Lkml;

.field private c:Lkmd;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lklx;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lkma;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lkkx;

.field private h:Lklx;


# direct methods
.method public constructor <init>(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    .line 47
    new-instance v0, Lkmn;

    invoke-direct {v0, p0}, Lkmn;-><init>(Lkmm;)V

    iput-object v0, p0, Lknh;->b:Lkml;

    .line 48
    new-instance v0, Lkmf;

    invoke-direct {v0, p0}, Lkmf;-><init>(Lkme;)V

    iput-object v0, p0, Lknh;->c:Lkmd;

    .line 49
    new-instance v0, Lkma;

    invoke-direct {v0}, Lkma;-><init>()V

    iput-object v0, p0, Lknh;->e:Lkma;

    .line 50
    new-instance v0, Lklx;

    invoke-direct {v0}, Lklx;-><init>()V

    iput-object v0, p0, Lknh;->h:Lklx;

    .line 51
    return-void
.end method

.method private c(Lklb;)V
    .locals 5

    .prologue
    .line 152
    new-instance v0, Lkkx;

    invoke-direct {v0}, Lkkx;-><init>()V

    iput-object v0, p0, Lknh;->g:Lkkx;

    .line 153
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1, v1}, Lklb;->a(I)V

    .line 157
    iget-object v0, p0, Lknh;->h:Lklx;

    invoke-virtual {v0}, Lklx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lklb;->a(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lklp;

    invoke-direct {v0}, Lklp;-><init>()V

    invoke-virtual {v0, p1}, Lklp;->a(Lklb;)Lklo;

    move-result-object v2

    .line 161
    invoke-virtual {p1}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkmb;->a(Ljava/lang/String;)Lkmc;

    move-result-object v3

    .line 163
    iget-object v4, p0, Lknh;->g:Lkkx;

    invoke-virtual {p1}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lkkx;->a(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v2}, Lklo;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->a(Ljava/util/ArrayList;)V

    .line 165
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v2}, Lklo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->l(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v2}, Lklo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->j(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v2}, Lklo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->d(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v2}, Lklo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->c(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v2}, Lklo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->b(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v2}, Lklo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->k(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-virtual {v3}, Lkmc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->f(Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v1, "comprovante"

    iget-object v2, p0, Lknh;->g:Lkkx;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method private d(Lklb;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 179
    new-instance v0, Lkkx;

    invoke-direct {v0}, Lkkx;-><init>()V

    iput-object v0, p0, Lknh;->g:Lkkx;

    .line 182
    invoke-virtual {p1, v4}, Lklb;->a(I)V

    .line 184
    new-instance v0, Lklp;

    invoke-direct {v0}, Lklp;-><init>()V

    invoke-virtual {v0, p1}, Lklp;->a(Lklb;)Lklo;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkmb;->a(Ljava/lang/String;)Lkmc;

    move-result-object v2

    .line 188
    iget-object v0, p0, Lknh;->h:Lklx;

    invoke-virtual {v0}, Lklx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lklb;->a(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lknh;->g:Lkkx;

    invoke-virtual {p1}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkkx;->a(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v1}, Lklo;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkkx;->a(Ljava/util/ArrayList;)V

    .line 192
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v1}, Lklo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkkx;->d(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v1}, Lklo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkkx;->c(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-interface {v1}, Lklo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->b(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-virtual {v2}, Lkmc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->f(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lknh;->g:Lkkx;

    invoke-virtual {p1}, Lklb;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklr;

    invoke-virtual {v0}, Lklr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkkx;->j(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-virtual {p1}, Lklb;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklr;

    .line 199
    invoke-virtual {v0}, Lklr;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v0}, Lklr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->l(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lknh;->g:Lkkx;

    invoke-virtual {p1}, Lklb;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkx;->a(Ljava/util/List;)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    const-string v1, "comprovante"

    iget-object v2, p0, Lknh;->g:Lkkx;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method


# virtual methods
.method public a()Lkma;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lknh;->e:Lkma;

    return-object v0
.end method

.method public a(Lkla;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->c()V

    .line 111
    iget-object v0, p0, Lknh;->c:Lkmd;

    invoke-interface {v0, p1}, Lkmd;->a(Lkla;)V

    .line 112
    return-void
.end method

.method public a(Lklb;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->d()V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e()Lklu;

    move-result-object v1

    invoke-virtual {v1}, Lklu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklv;->E(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lklb;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0, p1}, Lknh;->c(Lklb;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lknh;->d(Lklb;)V

    goto :goto_0
.end method

.method public a(Lklu;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->c()V

    .line 85
    iget-object v0, p0, Lknh;->b:Lkml;

    invoke-interface {v0, p1}, Lkml;->a(Lklu;)V

    .line 86
    return-void
.end method

.method public a(Lklx;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lkla;

    invoke-direct {v0}, Lkla;-><init>()V

    .line 92
    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e()Lklu;

    move-result-object v1

    invoke-virtual {v1}, Lklu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->setAgencia(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e()Lklu;

    move-result-object v1

    invoke-virtual {v1}, Lklu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->j(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e()Lklu;

    move-result-object v1

    invoke-virtual {v1}, Lklu;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->a(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e()Lklu;

    move-result-object v1

    invoke-virtual {v1}, Lklu;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->b(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lklx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->c(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lklx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->h(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e()Lklu;

    move-result-object v1

    invoke-virtual {v1}, Lklu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->d(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lklx;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->f(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lklx;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->e(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lklx;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->g(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lklx;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkla;->i(Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lknh;->h:Lklx;

    .line 105
    invoke-virtual {p0, v0}, Lknh;->a(Lkla;)V

    .line 106
    return-void
.end method

.method public a(Lkma;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->d()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lknh;->d:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lknh;->d:Ljava/util/List;

    invoke-virtual {p1}, Lkma;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    iget-object v1, p0, Lknh;->d:Ljava/util/List;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lknh;->e:Lkma;

    .line 60
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    iget-object v1, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public b(Lklb;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->d()V

    .line 130
    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p1}, Lklb;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lklb;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {p1}, Lklb;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b()V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b()V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b()V

    goto :goto_0
.end method

.method public b(Lkma;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->d()V

    .line 65
    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p1}, Lkma;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lkma;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {p1}, Lkma;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lknh;->d:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    iget-object v1, p0, Lknh;->d:Ljava/util/List;

    invoke-virtual {p1}, Lkma;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b()V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lknh;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b()V

    goto :goto_0
.end method
