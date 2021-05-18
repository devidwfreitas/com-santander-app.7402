.class public Lkds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkdq;


# instance fields
.field private a:Lkdr;

.field private b:Lkfy;


# direct methods
.method public constructor <init>(Lkdr;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lkds;->a:Lkdr;

    .line 25
    new-instance v0, Lkfz;

    invoke-direct {v0}, Lkfz;-><init>()V

    iput-object v0, p0, Lkds;->b:Lkfy;

    .line 26
    return-void
.end method

.method static synthetic a(Lkds;)Lkdr;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkds;->a:Lkdr;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 32
    new-instance v1, Lkde;

    invoke-direct {v1}, Lkde;-><init>()V

    .line 33
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkde;->setTokenSessao(Ljava/lang/String;)V

    .line 34
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkde;->setConnUuid(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, p1}, Lkde;->a(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lkds;->b:Lkfy;

    new-instance v2, Lkdt;

    invoke-direct {v2, p0}, Lkdt;-><init>(Lkds;)V

    invoke-interface {v0, v2, v1}, Lkfy;->c(Lgkw;Lgoe;)V

    .line 66
    return-void
.end method
