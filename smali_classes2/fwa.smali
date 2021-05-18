.class public Lfwa;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfwg;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfwf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lfwg;
    .locals 4

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 31
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lfwa;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 32
    iget-object v0, p0, Lfwa;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwg;

    invoke-virtual {v0}, Lfwg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lfwa;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwg;

    .line 31
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 36
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfwg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lfwa;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfwg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lfwa;->b:Ljava/util/Vector;

    .line 42
    return-void
.end method

.method public b()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfwf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lfwa;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public b(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfwf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lfwa;->c:Ljava/util/Vector;

    .line 48
    return-void
.end method
