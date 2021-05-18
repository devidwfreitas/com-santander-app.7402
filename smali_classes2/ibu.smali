.class public Libu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/CharSequence;

.field private d:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Libu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Libu;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Libu;->c:[Ljava/lang/CharSequence;

    .line 38
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Libu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Libu;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public b([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Libu;->d:[Ljava/lang/CharSequence;

    .line 46
    return-void
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Libu;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Libu;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method
