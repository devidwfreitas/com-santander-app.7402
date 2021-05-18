.class public Lkfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkfr;


# instance fields
.field private a:Lkeo;

.field private b:Lkdq;


# direct methods
.method public constructor <init>(Lkeo;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lkfs;->a:Lkeo;

    .line 30
    new-instance v0, Lkds;

    invoke-direct {p0}, Lkfs;->a()Lkdr;

    move-result-object v1

    invoke-direct {v0, v1}, Lkds;-><init>(Lkdr;)V

    iput-object v0, p0, Lkfs;->b:Lkdq;

    .line 32
    invoke-interface {p1}, Lkeo;->a()Lkdg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p1}, Lkeo;->c()V

    .line 34
    iget-object v0, p0, Lkfs;->b:Lkdq;

    invoke-interface {p1}, Lkeo;->a()Lkdg;

    move-result-object v1

    invoke-virtual {v1}, Lkdg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkdq;->a(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method private a()Lkdr;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lkft;

    invoke-direct {v0, p0}, Lkft;-><init>(Lkfs;)V

    return-object v0
.end method

.method static synthetic a(Lkfs;)Lkeo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lkfs;->a:Lkeo;

    return-object v0
.end method
