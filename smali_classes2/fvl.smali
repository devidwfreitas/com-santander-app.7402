.class public Lfvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lfvl;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lfvl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lfvl;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lfvl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lfvl;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lfvl;->d:Ljava/lang/String;

    return-object v0
.end method
