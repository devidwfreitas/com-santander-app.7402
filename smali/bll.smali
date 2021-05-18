.class Lbll;
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

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJILjava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-wide p1, p0, Lbll;->b:J

    .line 156
    iput-wide p3, p0, Lbll;->c:J

    .line 157
    iput-wide p5, p0, Lbll;->d:J

    .line 158
    iput p7, p0, Lbll;->e:I

    .line 159
    iput-object p8, p0, Lbll;->f:Ljava/lang/String;

    .line 160
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 163
    new-instance v1, Lbli;

    iget-wide v2, p0, Lbll;->b:J

    iget-wide v4, p0, Lbll;->c:J

    iget-wide v6, p0, Lbll;->d:J

    iget v8, p0, Lbll;->e:I

    iget-object v9, p0, Lbll;->f:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lbli;-><init>(JJJILjava/lang/String;Lblj;)V

    return-object v1
.end method
