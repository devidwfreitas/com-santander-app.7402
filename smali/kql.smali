.class public Lkql;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkqk;
    .annotation runtime Leks;
        a = "contract"
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
.method public a()Lkqk;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkql;->a:Lkqk;

    return-object v0
.end method

.method public a(Lkqk;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lkql;->a:Lkqk;

    .line 23
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    if-ne p0, p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    instance-of v2, p1, Lkql;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 30
    :cond_2
    check-cast p1, Lkql;

    .line 32
    invoke-virtual {p0}, Lkql;->a()Lkqk;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lkql;->a()Lkqk;

    move-result-object v0

    invoke-virtual {p1}, Lkql;->a()Lkqk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqk;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lkql;->a()Lkqk;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lkql;->a()Lkqk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkql;->a()Lkqk;

    move-result-object v0

    invoke-virtual {v0}, Lkqk;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
