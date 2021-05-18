.class public Liby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Libw;


# instance fields
.field private a:Lidr;

.field private b:Libx;

.field private c:Lidj;

.field private d:Lidq;

.field private e:Lick;


# direct methods
.method public constructor <init>(Lidj;Libx;Lick;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lidr;

    invoke-direct {v0}, Lidr;-><init>()V

    iput-object v0, p0, Liby;->a:Lidr;

    .line 29
    iput-object p2, p0, Liby;->b:Libx;

    .line 30
    iput-object p1, p0, Liby;->c:Lidj;

    .line 32
    new-instance v0, Lidr;

    invoke-direct {v0}, Lidr;-><init>()V

    iput-object v0, p0, Liby;->d:Lidq;

    .line 33
    iput-object p3, p0, Liby;->e:Lick;

    .line 34
    return-void
.end method

.method static synthetic a(Liby;)Lidj;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Liby;->c:Lidj;

    return-object v0
.end method

.method static synthetic b(Liby;)Libx;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Liby;->b:Libx;

    return-object v0
.end method


# virtual methods
.method public a(Lfoh;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Liby;->c:Lidj;

    invoke-interface {v0}, Lidj;->a()V

    .line 39
    iget-object v0, p0, Liby;->d:Lidq;

    new-instance v1, Libz;

    invoke-direct {v1, p0, p1}, Libz;-><init>(Liby;Lfoh;)V

    invoke-interface {v0, v1}, Lidq;->c(Lgkw;)V

    .line 46
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Liby;->a:Lidr;

    new-instance v1, Lica;

    invoke-direct {v1, p0, p1}, Lica;-><init>(Liby;Z)V

    invoke-virtual {v0, v1}, Lidr;->a(Lgkw;)V

    .line 65
    return-void
.end method
