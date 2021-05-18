.class public final Lepw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lepv;

.field private b:Lett;


# direct methods
.method public constructor <init>(Lepv;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binarizer must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lepw;->a:Lepv;

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0}, Lepv;->c()I

    move-result v0

    return v0
.end method

.method public a(IIII)Lepw;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0}, Lepv;->a()Leqd;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Leqd;->a(IIII)Leqd;

    move-result-object v0

    .line 109
    new-instance v1, Lepw;

    iget-object v2, p0, Lepw;->a:Lepv;

    invoke-virtual {v2, v0}, Lepv;->a(Leqd;)Lepv;

    move-result-object v0

    invoke-direct {v1, v0}, Lepw;-><init>(Lepv;)V

    return-object v1
.end method

.method public a(ILets;)Lets;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0, p1, p2}, Lepv;->a(ILets;)Lets;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0}, Lepv;->d()I

    move-result v0

    return v0
.end method

.method public c()Lett;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lepw;->b:Lett;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0}, Lepv;->b()Lett;

    move-result-object v0

    iput-object v0, p0, Lepw;->b:Lett;

    .line 87
    :cond_0
    iget-object v0, p0, Lepw;->b:Lett;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0}, Lepv;->a()Leqd;

    move-result-object v0

    invoke-virtual {v0}, Leqd;->b()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0}, Lepv;->a()Leqd;

    move-result-object v0

    invoke-virtual {v0}, Leqd;->c()Z

    move-result v0

    return v0
.end method

.method public f()Lepw;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0}, Lepv;->a()Leqd;

    move-result-object v0

    invoke-virtual {v0}, Leqd;->e()Leqd;

    move-result-object v0

    .line 127
    new-instance v1, Lepw;

    iget-object v2, p0, Lepw;->a:Lepv;

    invoke-virtual {v2, v0}, Lepv;->a(Leqd;)Lepv;

    move-result-object v0

    invoke-direct {v1, v0}, Lepw;-><init>(Lepv;)V

    return-object v1
.end method

.method public g()Lepw;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lepw;->a:Lepv;

    invoke-virtual {v0}, Lepv;->a()Leqd;

    move-result-object v0

    invoke-virtual {v0}, Leqd;->f()Leqd;

    move-result-object v0

    .line 138
    new-instance v1, Lepw;

    iget-object v2, p0, Lepw;->a:Lepv;

    invoke-virtual {v2, v0}, Lepv;->a(Leqd;)Lepv;

    move-result-object v0

    invoke-direct {v1, v0}, Lepw;-><init>(Lepv;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lepw;->c()Lett;

    move-result-object v0

    invoke-virtual {v0}, Lett;->toString()Ljava/lang/String;
    :try_end_0
    .catch Leqh; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v0, ""

    goto :goto_0
.end method
