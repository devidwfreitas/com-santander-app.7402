.class public Lkru;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "operationOption"
    .end annotation
.end field

.field private b:Lkrr;
    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lkru;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lkru;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public a(Lkrr;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lkru;->b:Lkrr;

    .line 33
    return-void
.end method

.method public b()Lkrr;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkru;->b:Lkrr;

    return-object v0
.end method
