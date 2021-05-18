.class public Lfpm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lfpm;->a:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lfpm;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lfpm;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lfpm;->b:I

    .line 25
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lfpm;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lfpm;->a:Ljava/lang/String;

    return-object v0
.end method
