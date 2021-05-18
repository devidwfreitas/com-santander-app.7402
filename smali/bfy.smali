.class public Lbfy;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    iput p1, p0, Lbfy;->a:I

    .line 25
    iput p2, p0, Lbfy;->b:I

    .line 26
    iput-object p3, p0, Lbfy;->c:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lbfy;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lbfy;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbfy;->c:Ljava/lang/String;

    return-object v0
.end method
