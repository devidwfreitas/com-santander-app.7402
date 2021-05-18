.class public Ljg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Liq;

.field private b:Lih;

.field private c:Liv;


# direct methods
.method public constructor <init>(Liq;Lih;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ljg;->a:Liq;

    .line 21
    iput-object p2, p0, Ljg;->b:Lih;

    .line 22
    return-void
.end method

.method public constructor <init>(Liq;Lih;Liv;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ljg;->a:Liq;

    .line 26
    iput-object p2, p0, Ljg;->b:Lih;

    .line 27
    iput-object p3, p0, Ljg;->c:Liv;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Liq;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ljg;->a:Liq;

    return-object v0
.end method

.method public b()Lih;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljg;->b:Lih;

    return-object v0
.end method

.method public c()Liv;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljg;->c:Liv;

    return-object v0
.end method
