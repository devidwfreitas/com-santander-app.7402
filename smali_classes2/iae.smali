.class public Liae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liac;


# instance fields
.field private a:Liad;

.field private b:Libg;


# direct methods
.method public constructor <init>(Liad;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Liae;->a:Liad;

    .line 23
    new-instance v0, Liba;

    invoke-direct {v0}, Liba;-><init>()V

    iput-object v0, p0, Liae;->b:Libg;

    .line 24
    return-void
.end method

.method static synthetic a(Liae;)Liad;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Liae;->a:Liad;

    return-object v0
.end method


# virtual methods
.method public a(Lhzk;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Liae;->b:Libg;

    new-instance v1, Liaf;

    invoke-direct {v1, p0}, Liaf;-><init>(Liae;)V

    invoke-interface {v0, v1, p1}, Libg;->b(Lgkw;Lgoe;)V

    .line 57
    return-void
.end method
