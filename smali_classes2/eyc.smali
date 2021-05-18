.class final Leyc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Leyd;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Leyc;->a:I

    .line 45
    sget-object v0, Leyd;->NUMERIC:Leyd;

    iput-object v0, p0, Leyc;->b:Leyd;

    .line 46
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Leyc;->a:I

    return v0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Leyc;->a:I

    .line 54
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Leyc;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Leyc;->a:I

    .line 58
    return-void
.end method

.method b()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Leyc;->b:Leyd;

    sget-object v1, Leyd;->ALPHA:Leyd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Leyc;->b:Leyd;

    sget-object v1, Leyd;->NUMERIC:Leyd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Leyc;->b:Leyd;

    sget-object v1, Leyd;->ISO_IEC_646:Leyd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Leyd;->NUMERIC:Leyd;

    iput-object v0, p0, Leyc;->b:Leyd;

    .line 74
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Leyd;->ALPHA:Leyd;

    iput-object v0, p0, Leyc;->b:Leyd;

    .line 78
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Leyd;->ISO_IEC_646:Leyd;

    iput-object v0, p0, Leyc;->b:Leyd;

    .line 82
    return-void
.end method
