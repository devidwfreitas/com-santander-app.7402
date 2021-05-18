.class public Larh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Larh;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Larh;->a:I

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Larh;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Larh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Larh;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Larh;->c:Ljava/lang/String;

    return-object v0
.end method
