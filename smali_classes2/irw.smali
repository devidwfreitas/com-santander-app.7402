.class public Lirw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lirw;


# instance fields
.field private a:Lirx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lirw;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lirw;->b:Lirw;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lirw;

    invoke-direct {v0}, Lirw;-><init>()V

    sput-object v0, Lirw;->b:Lirw;

    .line 25
    :cond_0
    sget-object v0, Lirw;->b:Lirw;

    return-object v0
.end method


# virtual methods
.method public a(Lirx;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lirw;->a:Lirx;

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lirw;->a:Lirx;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lirw;->a:Lirx;

    invoke-interface {v0, p1, p2}, Lirx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void
.end method
