.class public Lihz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ligz;
.implements Lihy;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lihn;

.field private c:Ligy;


# direct methods
.method public constructor <init>(Lihn;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lihz;->b:Lihn;

    .line 27
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lihz;->a:Landroid/app/Activity;

    .line 28
    new-instance v0, Liha;

    iget-object v1, p0, Lihz;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Liha;-><init>(Landroid/app/Activity;Ligz;)V

    iput-object v0, p0, Lihz;->c:Ligy;

    .line 30
    invoke-virtual {p0}, Lihz;->d()V

    .line 31
    return-void
.end method

.method private b(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ligl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lihz;->b:Lihn;

    const-string v1, "Aten\u00e7\u00e3o"

    const-string v2, "Desculpe, n\u00e3o conseguimos recuperar suas propostas neste momento. Tente Novamente mais tarde."

    invoke-interface {v0, v1, v2}, Lihn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ligl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lihz;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lihz;->b:Lihn;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligl;

    invoke-interface {v1, v0}, Lihn;->a(Ligl;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lihz;->b:Lihn;

    invoke-interface {v0, p1}, Lihn;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lihz;->c:Ligy;

    invoke-interface {v0}, Ligy;->a()V

    .line 36
    return-void
.end method
