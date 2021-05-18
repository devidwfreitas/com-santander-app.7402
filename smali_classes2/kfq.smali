.class public Lkfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkfp;


# instance fields
.field private a:Lkem;


# direct methods
.method public constructor <init>(Lkem;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lkfq;->a:Lkem;

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lkfq;->a:Lkem;

    invoke-interface {v0}, Lkem;->a()V

    .line 22
    return-void
.end method
