.class public final Lent;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lekn",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lekh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lekh",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lejy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lejy",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lejm;

.field private final d:Lepn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lepn",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lekp;

.field private final f:Lenv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lent",
            "<TT;>.env;"
        }
    .end annotation
.end field

.field private g:Lekn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lekn",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lekh;Lejy;Lejm;Lepn;Lekp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lekh",
            "<TT;>;",
            "Lejy",
            "<TT;>;",
            "Lejm;",
            "Lepn",
            "<TT;>;",
            "Lekp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lekn;-><init>()V

    .line 47
    new-instance v0, Lenv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lenv;-><init>(Lent;Lenu;)V

    iput-object v0, p0, Lent;->f:Lenv;

    .line 54
    iput-object p1, p0, Lent;->a:Lekh;

    .line 55
    iput-object p2, p0, Lent;->b:Lejy;

    .line 56
    iput-object p3, p0, Lent;->c:Lejm;

    .line 57
    iput-object p4, p0, Lent;->d:Lepn;

    .line 58
    iput-object p5, p0, Lent;->e:Lekp;

    .line 59
    return-void
.end method

.method static synthetic a(Lent;)Lejm;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lent;->c:Lejm;

    return-object v0
.end method

.method public static a(Lepn;Ljava/lang/Object;)Lekp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepn",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lekp;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lenw;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lenw;-><init>(Ljava/lang/Object;Lepn;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;)Lekp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lekp;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lenw;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lenw;-><init>(Ljava/lang/Object;Lepn;ZLjava/lang/Class;)V

    return-object v0
.end method

.method private b()Lekn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lekn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lent;->g:Lekn;

    .line 87
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lent;->c:Lejm;

    iget-object v1, p0, Lent;->e:Lekp;

    iget-object v2, p0, Lent;->d:Lepn;

    .line 89
    invoke-virtual {v0, v1, v2}, Lejm;->a(Lekp;Lepn;)Lekn;

    move-result-object v0

    iput-object v0, p0, Lent;->g:Lekn;

    goto :goto_0
.end method

.method public static b(Lepn;Ljava/lang/Object;)Lekp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepn",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lekp;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    new-instance v1, Lenw;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lenw;-><init>(Ljava/lang/Object;Lepn;ZLjava/lang/Class;)V

    return-object v1

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Leps;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leps;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lent;->a:Lekh;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lent;->b()Lekn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Leps;->f()Leps;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lent;->a:Lekh;

    iget-object v1, p0, Lent;->d:Lepn;

    invoke-virtual {v1}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lent;->f:Lenv;

    invoke-interface {v0, p2, v1, v2}, Lekh;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lekg;)Lejz;

    move-result-object v0

    .line 82
    invoke-static {v0, p1}, Lemn;->a(Lejz;Leps;)V

    goto :goto_0
.end method

.method public b(Lepo;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepo;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lent;->b:Lejy;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lent;->b()Lekn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {p1}, Lemn;->a(Lepo;)Lejz;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lejz;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lent;->b:Lejy;

    iget-object v2, p0, Lent;->d:Lepn;

    invoke-virtual {v2}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lent;->f:Lenv;

    invoke-interface {v1, v0, v2, v3}, Lejy;->b(Lejz;Ljava/lang/reflect/Type;Lejx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
