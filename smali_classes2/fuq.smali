.class public Lfuq;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfur;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfuq;->b:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lfur;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lfuq;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lfur;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lfuq;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfuq;->b:Ljava/util/ArrayList;

    .line 34
    :cond_0
    iget-object v0, p0, Lfuq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
