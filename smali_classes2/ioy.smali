.class public Lioy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lioy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lioy;->b:J

    .line 28
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lioy;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lioy;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lioy;->c:J

    .line 36
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lioy;->c:J

    return-wide v0
.end method
