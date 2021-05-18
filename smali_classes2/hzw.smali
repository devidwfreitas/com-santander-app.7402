.class public Lhzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhzu;


# instance fields
.field private a:Lhzv;

.field private b:Libg;


# direct methods
.method public constructor <init>(Lhzv;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lhzw;->a:Lhzv;

    .line 23
    new-instance v0, Liba;

    invoke-direct {v0}, Liba;-><init>()V

    iput-object v0, p0, Lhzw;->b:Libg;

    .line 24
    return-void
.end method

.method static synthetic a(Lhzw;)Lhzv;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lhzw;->a:Lhzv;

    return-object v0
.end method


# virtual methods
.method public a(Lhzf;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lhzw;->b:Libg;

    new-instance v1, Lhzx;

    invoke-direct {v1, p0}, Lhzx;-><init>(Lhzw;)V

    invoke-interface {v0, v1, p1}, Libg;->a(Lgkw;Lgoe;)V

    .line 56
    return-void
.end method
