.class Lbkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0x2288d511ce8549edL


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lbkn;->b:Ljava/lang/String;

    .line 218
    iput-boolean p2, p0, Lbkn;->c:Z

    .line 219
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    new-instance v0, Lbkl;

    iget-object v1, p0, Lbkn;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lbkn;->c:Z

    invoke-direct {v0, v1, v2, v3, v3}, Lbkl;-><init>(Ljava/lang/String;ZLjava/lang/String;Lbkm;)V

    return-object v0
.end method
