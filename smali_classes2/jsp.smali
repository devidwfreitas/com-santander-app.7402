.class public Ljsp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:D

.field private c:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(IDLjava/util/Calendar;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Ljsp;->a:I

    .line 21
    iput-wide p2, p0, Ljsp;->b:D

    .line 22
    iput-object p4, p0, Ljsp;->c:Ljava/util/Calendar;

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Ljsp;->a:I

    return v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Ljsp;->b:D

    .line 43
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Ljsp;->a:I

    .line 35
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Ljsp;->c:Ljava/util/Calendar;

    .line 51
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Ljsp;->b:D

    return-wide v0
.end method

.method public c()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ljsp;->c:Ljava/util/Calendar;

    return-object v0
.end method
