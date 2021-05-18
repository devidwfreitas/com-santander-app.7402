.class public Lbfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbfo;->b:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lbfo;->c:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lbfo;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lbfo;->a:I

    .line 22
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbfo;->c:Ljava/lang/String;

    return-object v0
.end method
