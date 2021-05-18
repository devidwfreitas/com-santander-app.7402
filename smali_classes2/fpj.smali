.class public Lfpj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lftl;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lfpj;->b:I

    return-void
.end method


# virtual methods
.method public a()Lftl;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lfpj;->a:Lftl;

    return-object v0
.end method

.method public a(Lftl;)V
    .locals 1

    .prologue
    .line 24
    iput-object p1, p0, Lfpj;->a:Lftl;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lfpj;->b:I

    .line 26
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lfpj;->b:I

    return v0
.end method
