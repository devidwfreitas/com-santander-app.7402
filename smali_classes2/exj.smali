.class final Lexj;
.super Lexh;
.source "SourceFile"


# instance fields
.field private final a:Lexi;

.field private b:I


# direct methods
.method constructor <init>(IILexi;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lexh;-><init>(II)V

    .line 26
    iput-object p3, p0, Lexj;->a:Lexi;

    .line 27
    return-void
.end method


# virtual methods
.method c()Lexi;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lexj;->a:Lexi;

    return-object v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lexj;->b:I

    return v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lexj;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lexj;->b:I

    .line 39
    return-void
.end method
