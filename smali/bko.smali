.class Lbko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x4b1ad70b9L


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lbko;->b:Ljava/lang/String;

    .line 234
    iput-boolean p2, p0, Lbko;->c:Z

    .line 235
    iput-object p3, p0, Lbko;->d:Ljava/lang/String;

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lbkm;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lbko;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 239
    new-instance v0, Lbkl;

    iget-object v1, p0, Lbko;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lbko;->c:Z

    iget-object v3, p0, Lbko;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbkl;-><init>(Ljava/lang/String;ZLjava/lang/String;Lbkm;)V

    return-object v0
.end method
