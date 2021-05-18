.class Lblr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x4b1aac909L


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lbkf;",
            "Ljava/util/List",
            "<",
            "Lbkl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lbkf;",
            "Ljava/util/List",
            "<",
            "Lbkl;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lblr;->b:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Lblq;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lblr;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lblp;

    iget-object v1, p0, Lblr;->b:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lblp;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method
