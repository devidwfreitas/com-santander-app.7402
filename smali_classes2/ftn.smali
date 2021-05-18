.class public Lftn;
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
            "Lftk;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lftn;->b:Ljava/util/Vector;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lftk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lftn;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lftn;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lftk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lftn;->b:Ljava/util/Vector;

    .line 34
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lftn;->c:Ljava/lang/String;

    return-object v0
.end method
