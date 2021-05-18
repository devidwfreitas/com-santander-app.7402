.class Lblk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x6L


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:I


# direct methods
.method constructor <init>(JJJI)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p1, p0, Lblk;->b:J

    .line 100
    iput-wide p3, p0, Lblk;->c:J

    .line 101
    iput-wide p5, p0, Lblk;->d:J

    .line 102
    iput p7, p0, Lblk;->e:I

    .line 103
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 106
    new-instance v1, Lbli;

    iget-wide v2, p0, Lblk;->b:J

    iget-wide v4, p0, Lblk;->c:J

    iget-wide v6, p0, Lblk;->d:J

    iget v8, p0, Lblk;->e:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lbli;-><init>(JJJILblj;)V

    return-object v1
.end method
