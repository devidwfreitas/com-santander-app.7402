.class public abstract Lepv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Leqd;


# direct methods
.method protected constructor <init>(Leqd;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lepv;->a:Leqd;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract a(Leqd;)Lepv;
.end method

.method public final a()Leqd;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lepv;->a:Leqd;

    return-object v0
.end method

.method public abstract a(ILets;)Lets;
.end method

.method public abstract b()Lett;
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lepv;->a:Leqd;

    invoke-virtual {v0}, Leqd;->g()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lepv;->a:Leqd;

    invoke-virtual {v0}, Leqd;->h()I

    move-result v0

    return v0
.end method
