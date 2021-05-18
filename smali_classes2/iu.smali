.class public Liu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lir;

.field private b:Lih;

.field private c:Liv;


# direct methods
.method public constructor <init>(Lir;Lih;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Liu;->a:Lir;

    .line 19
    iput-object p2, p0, Liu;->b:Lih;

    .line 20
    return-void
.end method

.method public constructor <init>(Lir;Lih;Liv;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Liu;->a:Lir;

    .line 24
    iput-object p2, p0, Liu;->b:Lih;

    .line 25
    iput-object p3, p0, Liu;->c:Liv;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lir;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Liu;->a:Lir;

    return-object v0
.end method

.method public b()Lih;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Liu;->b:Lih;

    return-object v0
.end method

.method public c()Liv;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Liu;->c:Liv;

    return-object v0
.end method
