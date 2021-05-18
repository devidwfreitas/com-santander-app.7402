.class public Lfpb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lfpb;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lfpb;->b:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lfpb;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lfpb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lfpb;->c:I

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lfpb;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lfpb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lfpb;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lfpb;->c:I

    return v0
.end method
