.class public Lhgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhgc;


# static fields
.field private static final a:Ljava/lang/String; = "AcordoInteractor"

.field private static b:Lhgh;


# instance fields
.field private c:Lhhi;

.field private d:Lmip;

.field private e:Lhfl;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lhhj;

    invoke-direct {v0}, Lhhj;-><init>()V

    iput-object v0, p0, Lhgh;->c:Lhhi;

    .line 55
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lhgh;->d:Lmip;

    .line 56
    new-instance v0, Lhfl;

    invoke-direct {v0}, Lhfl;-><init>()V

    iput-object v0, p0, Lhgh;->e:Lhfl;

    .line 57
    return-void
.end method

.method static synthetic a(Lhgh;)Lhfl;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhgh;->e:Lhfl;

    return-object v0
.end method

.method private a(Lcom/santander/app/contacorrente/domain/Conta;I)V
    .locals 2
    .param p2    # I
        .annotation build Lhfr;
        .end annotation
    .end param

    .prologue
    .line 215
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 216
    :goto_0
    if-eqz p1, :cond_1

    .line 217
    iget-object v0, p0, Lhgh;->e:Lhfl;

    invoke-static {p1}, Lhyx;->a(Lcom/santander/app/contacorrente/domain/Conta;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhfl;->a(Ljava/lang/String;)V

    .line 221
    :goto_1
    return-void

    .line 215
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lhgh;->e:Lhfl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lhfl;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lhfl;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lhgh;->e:Lhfl;

    invoke-virtual {v0, p1}, Lhfl;->a(Lhfl;)V

    .line 212
    return-void
.end method

.method static synthetic a(Lhgh;Lcom/santander/app/contacorrente/domain/Conta;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lhgh;->a(Lcom/santander/app/contacorrente/domain/Conta;I)V

    return-void
.end method

.method static synthetic a(Lhgh;Lhfl;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lhgh;->a(Lhfl;)V

    return-void
.end method

.method public static f()Lhgh;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lhgh;

    invoke-direct {v0}, Lhgh;-><init>()V

    sput-object v0, Lhgh;->b:Lhgh;

    return-object v0
.end method

.method public static g()Lhgh;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lhgh;->b:Lhgh;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_0
    sget-object v0, Lhgh;->b:Lhgh;

    return-object v0
.end method


# virtual methods
.method public a()Lhfx;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lhgh;->e:Lhfl;

    return-object v0
.end method

.method public a(Lhfk;Lcom/santander/app/contacorrente/domain/Conta;ILhgg;)V
    .locals 7
    .param p3    # I
        .annotation build Lhfr;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v6, p0, Lhgh;->c:Lhhi;

    new-instance v0, Lhgl;

    const-string v2, "detalhar"

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lhgl;-><init>(Lhgh;Ljava/lang/String;Lcom/santander/app/contacorrente/domain/Conta;ILhgg;)V

    invoke-interface {v6, p1, v0}, Lhhi;->c(Lhfk;Lgkv;)V

    .line 142
    return-void
.end method

.method public a(Lhfk;Lhgd;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lhgh;->c:Lhhi;

    new-instance v1, Lhgj;

    const-string v2, "obterOfertaInicial"

    invoke-direct {v1, p0, v2, p2}, Lhgj;-><init>(Lhgh;Ljava/lang/String;Lhgd;)V

    invoke-interface {v0, p1, v1}, Lhhi;->a(Lhfk;Lgkv;)V

    .line 98
    return-void
.end method

.method public a(Lhfy;Lhge;)V
    .locals 4

    .prologue
    .line 146
    invoke-interface {p1}, Lhfy;->i()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-interface {p1}, Lhfy;->e()I

    move-result v1

    .line 148
    new-instance v2, Lhfk;

    invoke-direct {v2, v0, v1}, Lhfk;-><init>(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lhgh;->c:Lhhi;

    new-instance v1, Lhgm;

    const-string v3, "confirmar"

    invoke-direct {v1, p0, v3, p2}, Lhgm;-><init>(Lhgh;Ljava/lang/String;Lhge;)V

    invoke-interface {v0, v2, v1}, Lhhi;->d(Lhfk;Lgkv;)V

    .line 177
    return-void
.end method

.method public a(Lhgf;)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lhfl;

    invoke-direct {v0}, Lhfl;-><init>()V

    iput-object v0, p0, Lhgh;->e:Lhfl;

    .line 62
    iget-object v0, p0, Lhgh;->c:Lhhi;

    new-instance v1, Lhgi;

    const-string v2, "consultar"

    invoke-direct {v1, p0, v2, p1}, Lhgi;-><init>(Lhgh;Ljava/lang/String;Lhgf;)V

    invoke-interface {v0, v1}, Lhhi;->a(Lgkv;)V

    .line 78
    return-void
.end method

.method public b()Lhfy;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lhgh;->e:Lhfl;

    return-object v0
.end method

.method public b(Lhfk;Lhgd;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lhgh;->c:Lhhi;

    new-instance v1, Lhgk;

    const-string v2, "simular"

    invoke-direct {v1, p0, v2, p2}, Lhgk;-><init>(Lhgh;Ljava/lang/String;Lhgd;)V

    invoke-interface {v0, p1, v1}, Lhhi;->b(Lhfk;Lgkv;)V

    .line 118
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    .line 183
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-object v1
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lhgh;->e:Lhfl;

    invoke-virtual {v0}, Lhfl;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lhgh;->e:Lhfl;

    invoke-virtual {v1}, Lhfl;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_0
    if-gt v0, v1, :cond_0

    .line 195
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-object v2
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object v0, p0, Lhgh;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 204
    invoke-static {v0}, Lhyx;->a(Lcom/santander/app/contacorrente/domain/Conta;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    return-object v1
.end method
